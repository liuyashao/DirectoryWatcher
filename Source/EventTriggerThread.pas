unit EventTriggerThread;

interface

{$IFDEF FPC}{$MODE DELPHI}{$ENDIF}

uses
  SysUtils, Classes, SyncObjs, DirectoryWatcherAPI, System.Generics.Collections;

type
  TEventTriggerThread = class(TThread)
  private type 
    TEventTypeList = TList<TDirectoryEventType>;
  private
    FEvent: TEvent;
    FOnDirectoryEvent: TDirectoryEvent;
    FStoredEvents: TObjectDictionary<String, TEventTypeList>;
    FCriticalSection: TCriticalSection;
    procedure TriggerEvents;
    procedure RemoveDuplicateModifiedEvents(const EventTypeList: TEventTypeList);
    procedure TriggerEventsForFile(const FilePath: String; const EventTypeList: TEventTypeList);
  protected
    procedure Execute; override;
  public
    constructor Create(const OnDirectoryEvent: TDirectoryEvent);
    destructor Destroy; override;
    procedure EnqueueEvent(const FilePath: String; EventType: TDirectoryEventType);
  end;
  
implementation

constructor TEventTriggerThread.Create(const OnDirectoryEvent: TDirectoryEvent);
begin
  inherited Create(True);
  FEvent := TEvent.Create;
  FreeOnTerminate := False;
  FOnDirectoryEvent := OnDirectoryEvent;
  FCriticalSection := TCriticalSection.Create;
  FStoredEvents := TObjectDictionary<String, TEventTypeList>.Create([doOwnsValues]);
end;

destructor TEventTriggerThread.Destroy;
begin
  Terminate;
  FEvent.SetEvent;
  WaitFor;
  FEvent.Free;
  FStoredEvents.Free;
  FCriticalSection.Free;
  inherited;
end;

procedure TEventTriggerThread.Execute;
begin
  while not Terminated do
  begin
    FEvent.WaitFor;
    TriggerEvents;
  end;
end;

procedure TEventTriggerThread.EnqueueEvent(const FilePath: String; EventType: TDirectoryEventType);
var
  EventTypeList: TEventTypeList;
  Idx: Integer;
begin
  FCriticalSection.Enter;
  try
    if not FStoredEvents.TryGetValue(FilePath, EventTypeList) then begin
      EventTypeList := TEventTypeList.Create;
      FStoredEvents.Add(FilePath, EventTypeList);
    end;
    EventTypeList.Add(EventType);
    FEvent.SetEvent;
  finally
    FCriticalSection.Leave;
  end;
end;

procedure TEventTriggerThread.TriggerEvents;
var
  P: TPair<String, TEventTypeList>;
begin
  FCriticalSection.Enter;
  try
    for P in FStoredEvents do begin
      RemoveDuplicateModifiedEvents(P.Value);
      TriggerEventsForFile(P.Key, P.Value);
      FStoredEvents.Remove(P.Key);
      Break;
    end;
    if FStoredEvents.Count = 0 then
      FEvent.ResetEvent;
  finally
    FCriticalSection.Leave;
  end;
end;

procedure TEventTriggerThread.RemoveDuplicateModifiedEvents(const EventTypeList: TEventTypeList);
var
  I: Integer;
  ModifiedEventFound: Boolean;
begin
  ModifiedEventFound := False;
  for I := EventTypeList.Count - 1 downto 0 do
    if EventTypeList[I] = detModified then
      if ModifiedEventFound then
        EventTypeList.Delete(I)
      else
        ModifiedEventFound := True;
end;

procedure TEventTriggerThread.TriggerEventsForFile(const FilePath: String; const EventTypeList: TEventTypeList);
var
  EventType: TDirectoryEventType;
begin
  for EventType in EventTypeList do
    FOnDirectoryEvent(FilePath, EventType);
end;

end.