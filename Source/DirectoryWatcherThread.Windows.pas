unit DirectoryWatcherThread.Windows;

interface

{$IFDEF FPC}{$MODE DELPHI}{$ENDIF}

uses
  SysUtils, Classes, SyncObjs, DirectoryWatcherAPI, EventTriggerThread,
  Winapi.Windows;

type
  opTyp = set of (
    fncFileName,
    fncDirName, 
    fncAttributes, 
    fncSize, 
    fncLastWrite, 
    fncLastAccess, 
    fncCreation, 
    fncSecurity);

  TDirectoryWatcherThreadWindows = class(TThread)
  private
    FDirectory : String;
    FAction : DWORD;
    FileEvent : THandle;
    SuspEvent : TEvent;
    TermEvent : TEvent;
    FFilter : DWord;
    FWatchSubtree: Boolean;
    FEventTriggerThread: TEventTriggerThread;
    procedure SetFilter(const Value: opTyp);
    function ActionIDToEventType(const ActionID: DWORD): TDirectoryEventType;
  protected
    procedure Execute; override;
  public
    constructor Create(const Directory: String; const WatchSubtree: Boolean; const OnGetData: TDirectoryEvent);
    destructor Destroy; override;
  end;
  
implementation

const
  FILE_ACTION_ADDED = $1;
  FILE_ACTION_REMOVED = $2;
  FILE_ACTION_MODIFIED = $3;
  FILE_ACTION_RENAMED_OLD_NAME = $4;
  FILE_ACTION_RENAMED_NEW_NAME = $5;

  FILE_LIST_DIRECTORY = $0001;
  WaitDir = WAIT_OBJECT_0;
  WaitTerm = WAIT_OBJECT_0+1;
  WaitSusp = WAIT_OBJECT_0+2;  

type
  PFileNotifyInformation = ^TFileNotifyInformation;
  TFileNotifyInformation = packed record
    dwNextEntryOffset: DWORD;
    dwAction: DWORD;
    dwFileNameLength: DWORD;
    dwFileName: WideString;
  end;  

constructor TDirectoryWatcherThreadWindows.Create(const Directory: String; const WatchSubtree: Boolean; const OnGetData: TDirectoryEvent);
begin
  inherited Create(True);
  FreeOnTerminate := True;
  FDirectory := IncludeTrailingPathDelimiter(Directory);
  SetFilter([fncFileName, fncDirName, fncLastWrite]);
  FWatchSubtree := WatchSubtree;
  FEventTriggerThread := TEventTriggerThread.Create(OnGetData);
end;

destructor TDirectoryWatcherThreadWindows.Destroy;
begin
  CloseHandle(FileEvent);
  TermEvent.Free;
  SuspEvent.Free;
  FEventTriggerThread.Free;
  inherited;
end;

procedure TDirectoryWatcherThreadWindows.Execute;
var
  pBuffer : Pointer;
  dwBufLen : DWORD;
  dwRead : DWORD;
  PInfo : PFileNotifyInformation;
  dwNextOfs : DWORD;
  dwFnLen : DWORD;
  Overlap : TOverlapped;
  WaitResult: DWORD;
  EventArray : Array[0..2] of THandle;
  FileName : String;
  HandleAsString: String;
  FilePath: String;
  hFile : THandle;
begin
  FEventTriggerThread.Start;

  hFile := CreateFile(PChar(FDirectory),
                      FILE_LIST_DIRECTORY or GENERIC_READ,
                      FILE_SHARE_READ or FILE_SHARE_WRITE or FILE_SHARE_DELETE,
                      Nil,
                      OPEN_EXISTING,FILE_FLAG_BACKUP_SEMANTICS or FILE_FLAG_OVERLAPPED,
                      0);

  if (hFile = INVALID_HANDLE_VALUE) or (hFile = 0) then
    Exit;

  try
    FileEvent := CreateEvent(Nil, False, False, Nil);
    Overlap.hEvent := FileEvent;

    HandleAsString := IntToStr(Handle);
    TermEvent := TEvent.Create(Nil, False, False, HandleAsString + 'N');
    SuspEvent := TEvent.Create(Nil, False, False, HandleAsString + 'W');

    EventArray[0] := FileEvent;
    EventArray[1] := TermEvent.Handle;
    EventArray[2] := SuspEvent.Handle;

    dwBufLen := 65535;
    pBuffer := AllocMem(dwBufLen);
    try
      while not Terminated do
      begin
        dwRead:=0;
        if ReadDirectoryChangesW(hFile, pBuffer, dwBufLen, FWatchSubtree,
                                 FFilter, @dwRead, @Overlap, Nil) then
        begin
          WaitResult := WaitForMultipleObjects(Length(EventArray), @EventArray, False, INFINITE);
        
          case WaitResult of
            WaitDir:
            begin
              PInfo := pBuffer;
              repeat
                dwNextOfs := PInfo.dwNextEntryOffset;
                fAction := PInfo.dwAction;
                dwFnLen := PInfo.dwFileNameLength;
                FileName := String(WideCharLenToString(@PInfo.dwFileName, dwFnLen div 2));
                FilePath := FDirectory + FileName;
                if not DirectoryExists(FilePath) then
                  FEventTriggerThread.EnqueueEvent(FilePath, ActionIDToEventType(FAction));

                PChar(PInfo) := PChar(PInfo) + dwNextOfs;
              until dwNextOfs = 0;
            end;
            WaitTerm: Terminate;
            WaitSusp: Terminate;
            else
              Break;
          end;
        end;
      end;
    finally
      FreeMem(pBuffer, dwBufLen);
    end;
  finally
    CloseHandle(hFile);
  end;
end;

function TDirectoryWatcherThreadWindows.ActionIDToEventType(const ActionID: DWORD): TDirectoryEventType;
begin
  Result := detModified;
  case ActionID of
    FILE_ACTION_ADDED,  
    FILE_ACTION_RENAMED_NEW_NAME : Result := detAdded;
    FILE_ACTION_REMOVED, 
    FILE_ACTION_RENAMED_OLD_NAME : Result := detRemoved;
    FILE_ACTION_MODIFIED         : Result := detModified;
  end;
end;

procedure TDirectoryWatcherThreadWindows.SetFilter(const Value: opTyp);
const
  FILE_NOTIFY_CHANGE_LAST_ACCESS = $00000020;
  FILE_NOTIFY_CHANGE_CREATION = $00000040;
var 
  Res: DWORD;
begin
  Res:=0;
  if fncFileName   in Value then Res := Res or FILE_NOTIFY_CHANGE_FILE_NAME;
  if fncDirName    in Value then Res := Res or FILE_NOTIFY_CHANGE_DIR_NAME;
  if fncAttributes in Value then Res := Res or FILE_NOTIFY_CHANGE_ATTRIBUTES;
  if fncSize       in Value then Res := Res or FILE_NOTIFY_CHANGE_SIZE;
  if fncLastWrite  in Value then Res := Res or FILE_NOTIFY_CHANGE_LAST_WRITE;
  if fncLastAccess in Value then Res := Res or FILE_NOTIFY_CHANGE_LAST_ACCESS;
  if fncCreation   in Value then Res := Res or FILE_NOTIFY_CHANGE_CREATION;
  if fncSecurity   in Value then Res := Res or FILE_NOTIFY_CHANGE_SECURITY;
  FFilter := Res;
end;

end.