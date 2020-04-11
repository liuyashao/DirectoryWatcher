unit uOddTextEditProperties;

interface

uses
  System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, cxTextEdit,
  cxContainer, cxGraphics, Winapi.Windows, cxEdit;

type
  TcxOddTextEditProperties = class(TcxTextEditProperties)
  public
    class function GetViewInfoClass: TcxContainerViewInfoClass; override;
    class function GetContainerClass: TcxContainerClass; override;
  end;

  TcxOddCustomTextEditViewInfo = class(TcxCustomTextEditViewInfo)
  private
    procedure DrawOddBackground(ACanvas: TcxCanvas);
  protected
    procedure DrawText(ACanvas: TcxCanvas); override;
  end;

  TcxOddTextEdit = class(TcxTextEdit)
  protected
    procedure KeyPress(var Key: Char); override;
  end;

var
  OddBackgroudColor: TColor = clAqua;

implementation

uses Unit2;

{ TcxOddTextEditProperties }

class function TcxOddTextEditProperties.GetContainerClass: TcxContainerClass;
begin
  Result := TcxOddTextEdit;
end;

class function TcxOddTextEditProperties.GetViewInfoClass: TcxContainerViewInfoClass;
begin
  Result := TcxOddCustomTextEditViewInfo;
end;

{ TcxOddCustomTextEditViewInfo }

procedure TcxOddCustomTextEditViewInfo.DrawText(ACanvas: TcxCanvas);
begin
  DrawOddBackground(ACanvas);
  inherited DrawText(ACanvas);
end;

procedure TcxOddCustomTextEditViewInfo.DrawOddBackground(ACanvas: TcxCanvas);
var
  C: Char;
  Left: Integer;
  Top: Integer;
  Bottom: Integer;
  TextWidth: Integer;
  R: TRect;
begin
  ACanvas.Font := Font;
  Left := TextRect.Left;
  Top := TextRect.Top + (TextRect.Height - ACanvas.TextHeight('0')) div 2 + 2;
  Bottom := Top + ACanvas.TextHeight('0') - 3;
  for C in Text do begin
    TextWidth := ACanvas.TextWidth(C);
    if C in ['0'..'9', '*', '.'] then begin
      R := Rect(Left, Top, Left+TextWidth, Bottom);
      if TextColor = clHighlightText then
        ACanvas.FillRect(R, not OddBackgroudColor)
      else
        ACanvas.FillRect(R, OddBackgroudColor);
    end;
    Left := Left + TextWidth;
  end;
//  Form2.Caption := ColorToString(TextColor);
end;

{ TcxOddTextEdit }

procedure TcxOddTextEdit.KeyPress(var Key: Char);
begin
  inherited;
  if not (Ord(Key) in [Ord('0')..Ord('9'), Ord('*'), Ord('.'), Ord('+'),
    VK_BACK, VK_LEFT, VK_RIGHT, VK_ESCAPE, VK_RETURN, VK_UP, VK_DOWN])
  then begin
    MessageBeep(0);
    Key := #0;
  end;
end;

initialization
  GetRegisteredEditProperties.Register(TcxOddTextEditProperties, 'Odd TextEdit|Represents Odd text editor');

finalization
  GetRegisteredEditProperties.UnRegister(TcxOddTextEditProperties);

end.
