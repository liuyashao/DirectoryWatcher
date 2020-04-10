unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxTextEdit, Vcl.StdCtrls,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator,
  cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid, Datasnap.DBClient, cxFontNameComboBox;

type
  TForm2 = class(TForm)
    Edit1: TEdit;
    DataSource1: TDataSource;
    ClientDataSet1: TClientDataSet;
    ClientDataSet1str: TStringField;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1str: TcxGridDBColumn;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  protected
    procedure UpdateActions; override;
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

type
  TmyTextEdit = class(TcxTextEdit)
  protected
    function GetInnerEditClass: TControlClass; override;
  end;

  TmyCustomInnerTextEdit = class(TcxCustomInnerTextEdit)
  private
    procedure WMPaint(var Message: TWMPaint); message WM_PAINT;
    procedure WMPrintClient(var Message: TWMPrintClient); message WM_PRINTCLIENT;
    procedure InternalPaint(ADC: THandle);
  end;

  TOddTextEditProperties = class(TcxTextEditProperties)
  public
    class function GetViewInfoClass: TcxContainerViewInfoClass; override;
  end;

  TOddCustomTextEditViewInfo = class(TcxCustomTextEditViewInfo)
  protected
    procedure DrawText(ACanvas: TcxCanvas); override;
  end;


{ TForm2 }

procedure TForm2.FormCreate(Sender: TObject);
var
  TextEdit: TmyTextEdit;
begin
  TextEdit := TmyTextEdit.Create(Self);
  TextEdit.Parent := Self;
  TextEdit.SetBounds(10, 10, 100, 25);
  cxGrid1DBTableView1str.PropertiesClass := TOddTextEditProperties;
end;

procedure TForm2.UpdateActions;
begin
  inherited;
  if ActiveControl <> nil then
    Caption := ActiveControl.ClassName;
end;

{ TmyTextEdit }

function TmyTextEdit.GetInnerEditClass: TControlClass;
begin
  inherited GetInnerEditClass;
  Result := TmyCustomInnerTextEdit;
end;

{ TmyCustomInnerTextEdit }

procedure TmyCustomInnerTextEdit.WMPaint(var Message: TWMPaint);
var
  DC: HDC;
  PS: TPaintStruct;
  ACanvas: TCanvas;
begin
  inherited;
  DC := Message.DC;
  if DC = 0 then
    DC := BeginPaint(Handle, PS);
  InternalPaint(DC);
  if Message.DC = 0 then
    EndPaint(Handle, PS);
end;

procedure TmyCustomInnerTextEdit.WMPrintClient(var Message: TWMPrintClient);
var
  DC: HDC;
  PS: TPaintStruct;
  ACanvas: TCanvas;
begin
//  inherited;
//  DC := Message.DC;
//  if DC = 0 then
//    DC := BeginPaint(Handle, PS);
//  InternalPaint(DC);
//  if Message.DC = 0 then
//    EndPaint(Handle, PS);
end;

procedure TmyCustomInnerTextEdit.InternalPaint(ADC: THandle);
var
  R: TRect;
  S: string;
  ALeftMargin, ARightMargin: Word;
  AMargings: DWORD;
  APasswordChar: Char;
  ACanvas: TCanvas;
begin
  AMargings := Perform(EM_GETMARGINS, 0, 0);
  ARightMargin := HiWord(AMargings);
  ALeftMargin := LoWord(AMargings);
  S := Text;

  R := ClientRect;
//  case Container.ActiveProperties.Alignment.Horz of
//    taCenter:
//      R.Left := (ClientWidth - ARightMargin - ALeftMargin - cxTextSize(Font, S).cx) div 2 + ALeftMargin;
//    taRightJustify:
//      R.Left := ClientWidth - cxTextSize(Font, S).cx - ARightMargin + ALeftMargin;
//  end;

  ACanvas := TCanvas.Create;
  try
    ACanvas.Handle := ADC;
    try
      ACanvas.Font := Font;
      ACanvas.Font.Color := clRed;
//      if (APasswordChar <> #0) and ShowPasswordCharAsBullet(Container.LookAndFeel.NativeStyle) then
//        ACanvas.Font.Name := 'Segoe UI';
      ACanvas.Brush.Color := clRed;//Color;
      ACanvas.FillRect(ClientRect);
      cxDrawText(ACanvas, S, R, 0);
    finally
      ACanvas.Handle := 0;
    end;
  finally
    ACanvas.Free;
  end;
end;

{ TOddTextEditProperties }

class function TOddTextEditProperties.GetViewInfoClass: TcxContainerViewInfoClass;
begin
  Result := TOddCustomTextEditViewInfo;
end;

{ TOddCustomTextEditViewInfo }

procedure TOddCustomTextEditViewInfo.DrawText(ACanvas: TcxCanvas);
var
  s: string;
  c: Char;
  Left: Integer;
  R: TRect;
  tw: Integer;
  I: Integer;
begin
  Self.TextColor := clRed;
//  ACanvas.FillRect(TextRect, clLime);
  ACanvas.Font := Font;
  s := Text;
  Left := TextRect.Left;
  I := 0;
  for c in s do begin
    tw := ACanvas.TextWidth(c);
    R := Rect(Left, TextRect.Top, Left+tw, TextRect.Bottom);
    if I mod 2 = 0 then
      ACanvas.FillRect(R, clLtGray)
    else
      ACanvas.FillRect(R, clLime);
    Left := Left + tw;
    Inc(I);
  end;
  inherited DrawText(ACanvas);
end;

end.
