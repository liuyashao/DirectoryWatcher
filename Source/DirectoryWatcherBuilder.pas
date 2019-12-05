unit DirectoryWatcherBuilder;

interface

uses
  DirectoryWatcherAPI;

type  
  TDirectoryWatcherBuilder = class(TInterfacedObject, IDirectoryWatcherBuilder)
  private
    FDirectory: String;
    FRecursively: Boolean;
    FCallBack: TDirectoryEvent;
  public
    class function New: IDirectoryWatcherBuilder;
    function WatchDirectory(const Directory: String): IDirectoryWatcherBuilder;
    function Recursively(const Value: Boolean): IDirectoryWatcherBuilder;
    function OnChangeTrigger(const Callback: TDirectoryEvent): IDirectoryWatcherBuilder;
    function Build: IDirectoryWatcher;
  end;
  
implementation

{$IFDEF MSWINDOWS}
  uses DirectoryWatcher.Windows;
{$ENDIF}
{$IFDEF DARWIN}
  uses DirectoryWatcher.Mac;
{$ENDIF}
{$IFDEF LINUX}
  uses DirectoryWatcher.Linux;
{$ENDIF}

type 
  {$IFDEF MSWINDOWS}
    TDirectoryWatcher = TDirectoryWatcherWindows;
  {$ENDIF}
  {$IFDEF DARWIN}
    TDirectoryWatcher = TDirectoryWatcherMac;
  {$ENDIF}
  {$IFDEF LINUX}
    TDirectoryWatcher = TDirectoryWatcherLinux;
  {$ENDIF}

class function TDirectoryWatcherBuilder.New: IDirectoryWatcherBuilder;
begin
  Result := TDirectoryWatcherBuilder.Create;
end;

function TDirectoryWatcherBuilder.WatchDirectory(const Directory: String): IDirectoryWatcherBuilder;
begin
  FDirectory := Directory;
  Result := Self;
end;

function TDirectoryWatcherBuilder.Recursively(const Value: Boolean): IDirectoryWatcherBuilder;
begin
  FRecursively := Value;
  Result := Self;
end;

function TDirectoryWatcherBuilder.OnChangeTrigger(const Callback: TDirectoryEvent): IDirectoryWatcherBuilder;
begin
  FCallBack := Callback;
  Result := Self;
end;

function TDirectoryWatcherBuilder.Build: IDirectoryWatcher;
begin
  Result := TDirectoryWatcher.Create(FDirectory, FRecursively, FCallBack);
end;

end.