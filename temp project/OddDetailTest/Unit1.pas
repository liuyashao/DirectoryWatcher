unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinTheBezier,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, cxTextEdit, uOddTextEdit;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    Button1: TButton;
    edt1: TEdit;
    cxOddTextEdit1: TcxOddTextEdit;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses uOddDetailUtils;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  od: IOddDetail;
  I: Integer;
begin
  for I := 1 to 10000 do begin
    od := ParseOD(edt1.Text);
    od.Add(2, 36.52);
  end;
  Memo1.Lines.Clear;
  Memo1.Lines.Add(od.ToString);
  Memo1.Lines.Add(od.ToString(Metre, 4));

  Memo1.Lines.Add(od.ToStringWithUnit);
  Memo1.Lines.Add(od.ToStringWithUnit(Metre, 4));

  Memo1.Lines.Add(od.TotalPieces.ToString);
  Memo1.Lines.Add(od.TotalQty[Yard].ToString+'ย๋');
  Memo1.Lines.Add(od.TotalQty[Metre].ToString+'รื');

  Memo1.Lines.Add('--Begin Append--');
  od.Append(ParseOD('2*30', Metre));
  Memo1.Lines.Add(od.ToString);
  Memo1.Lines.Add('--End Append--');

  od.ConvertTo(Metre);

  Memo1.Lines.Add(od.ToString);
  Memo1.Lines.Add(od.ToString(Yard));

  Memo1.Lines.Add(od.ToStringWithUnit);
  Memo1.Lines.Add(od.ToStringWithUnit(Yard));

  Memo1.Lines.Add(od.TotalPieces.ToString);
  Memo1.Lines.Add(od.TotalQty[Metre].ToString+'รื');
  Memo1.Lines.Add(od.TotalQty[Yard].ToString+'ย๋');


  od.Append(ParseOD('3*30', Metre)).Merge;
  Memo1.Lines.Add('--Merge--');
  Memo1.Lines.Add(od.ToString);
  Memo1.Lines.Add(od.ToString(Yard));
  Memo1.Lines.Add(od.TotalQty[Yard].ToString+'ย๋');
end;

end.
