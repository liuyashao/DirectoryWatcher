unit Unit38;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, DirectoryWatcherAPI,
  DirectoryWatcherBuilder;

type
  TForm38 = class(TForm)
    Memo1: TMemo;
    procedure FormCreate(Sender: TObject);
  private
    FDirectoryWatcher: IDirectoryWatcher;
    procedure OnFileEvent(const FilePath: String; const EventType: TDirectoryEventType);
  end;

var
  Form38: TForm38;

implementation

{$R *.dfm}

procedure TForm38.FormCreate(Sender: TObject);
begin
  Memo1.Lines.Clear;
  FDirectoryWatcher := TDirectoryWatcherBuilder
    .New
    .WatchDirectory('d:\')
    .OnChangeTrigger(OnFileEvent)
    .Build;
  FDirectoryWatcher.Start;
end;

procedure TForm38.OnFileEvent(const FilePath: String;
  const EventType: TDirectoryEventType);
var
  EventTypeString: String;
begin
  Memo1.Lines.Add('======NEW EVENT======');
  Memo1.Lines.Add('File: ' + FilePath);

  case EventType of
    detAdded: EventTypeString := 'ADDED';
    detRemoved: EventTypeString := 'REMOVED';
    detModified: EventTypeString := 'MODIFIED';
  end;

  Memo1.Lines.Add('Type: ' + EventTypeString);
end;

end.
