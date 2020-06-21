unit TTSUtils;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  {$IFDEF ANDROID}
  Androidapi.JNI.TTS, AndroidAPI.JNIBridge,
  {$ENDIF}
  FMX.StdCtrls, FMX.Layouts, FMX.Memo, FMX.Controls.Presentation, FMX.ScrollBox;

type
  TTS = class;

{$IFDEF ANDROID}
  TTTSOnInitListener = class(TJavaLocal, JTextToSpeech_OnInitListener)
  private
    [weak]
    FParent: TTS;
  public
    constructor Create(AParent: TTS);
    procedure onInit(Status: Integer); cdecl;
  end;
{$ENDIF}

  TTS = class
  private
    class var FInstance: TTS;
    class destructor Destroy;
  private
{$IFDEF ANDROID}
    FListener: TTTSOnInitListener;
    FSpeech: JTextToSpeech;
{$ENDIF}
    procedure DoTextToVoice(const Text: string);
  public
    constructor Create;
    destructor Destroy;
    class procedure TextToVoice(const Text: string);
  end;

implementation

{$IFDEF ANDROID}
uses
{$IF CompilerVersion >= 27.0} // >= XE6
  Androidapi.Helpers,
{$ENDIF}
{$IF CompilerVersion < 28.0} // < XE7
  FMX.Helpers.Android,
{$ENDIF}
  Androidapi.JNI.JavaTypes, Androidapi.JNI.GraphicsContentViewText;
{$ENDIF}

{ TTTSOnInitListener }

{$IFDEF ANDROID}
constructor TTTSOnInitListener.Create(AParent: TTS);
begin
  inherited Create;
  FParent := AParent;
end;

procedure TTTSOnInitListener.onInit(Status: Integer);
var
  Result: Integer;
begin
  if (Status = TJTextToSpeech.JavaClass.SUCCESS) then begin
    Result := FParent.FSpeech.setLanguage(TJLocale.JavaClass.CHINA);
    if (Result = TJTextToSpeech.JavaClass.LANG_MISSING_DATA) or (Result = TJTextToSpeech.JavaClass.LANG_NOT_SUPPORTED) then
      raise Exception.Create('语音包不支持')
  end
  else raise Exception.Create('初始化语音包失败')
end;
{$ENDIF}

{ TTS }

class destructor TTS.Destroy;
begin
  FreeAndNil(FInstance);
end;

constructor TTS.Create;
begin
  inherited;
{$IFDEF ANDROID}
    FListener := TttsOnInitListener.Create(Self);
    FSpeech := TJTextToSpeech.JavaClass.init(SharedActivityContext, FListener);
{$ENDIF}
end;

destructor TTS.Destroy;
begin
{$IFDEF ANDROID}
  if Assigned(FSpeech) then
  begin
    FSpeech.stop;
    FSpeech.shutdown;
    FSpeech := nil;
  end;
  FListener.Free;
{$ENDIF}
  inherited;
end;

class procedure TTS.TextToVoice(const Text: string);
begin
  if FInstance = nil then
    FInstance := TTS.Create;
  FInstance.DoTextToVoice(Text);
end;

procedure TTS.DoTextToVoice(const Text: string);
{$IFDEF ANDROID}
var
  Str: JString;
{$ENDIF}
begin
{$IFDEF ANDROID}
  Str := StringToJString(Text);
  FSpeech.setLanguage(TJLocale.JavaClass.CHINESE);
  FSpeech.Speak(Str, TJTextToSpeech.JavaClass.QUEUE_FLUSH, nil);
{$ENDIF}
end;

end.
