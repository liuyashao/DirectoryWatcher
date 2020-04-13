unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxTextEdit, Vcl.StdCtrls,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator,
  cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid, Datasnap.DBClient, cxFontNameComboBox,
  dxCore, cxMaskEdit, cxDropDownEdit, dxColorEdit, spGridDBTableView,
  spClientDataSet, cxLabel, uOddTextEdit, dxSkinsCore, dxSkinBlue,
  dxSkinDevExpressStyle, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinsForm,
  spLinkGraphic, dxSkinBlack, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
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
  dxSkinWhiteprint, dxSkinXmas2008Blue, Vcl.ExtCtrls, spTextEditEx;

type
  TForm2 = class(TForm)
    DataSource1: TDataSource;
    ClientDataSet1: TspClientDataSet;
    ClientDataSet1str: TspStringField;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    ClientDataSet1Y: TspFloatField;
    cxGrid1spGridDBTableView1: TspGridDBTableView;
    ClientDataSet1Unit: TStringField;
    ClientDataSet1MOdd: TStringField;
    ClientDataSet1SumOdd: TStringField;
    ClientDataSet1Price: TFloatField;
    ClientDataSet1Amount: TFloatField;
    cxGrid1spGridDBTableView1Unit: TspGridDBColumn;
    cxGrid1spGridDBTableView1YOdd: TspGridDBColumn;
    cxGrid1spGridDBTableView1MOdd: TspGridDBColumn;
    cxGrid1spGridDBTableView1SumOdd: TspGridDBColumn;
    cxGrid1spGridDBTableView1YQty: TspGridDBColumn;
    cxGrid1spGridDBTableView1MQty: TspGridDBColumn;
    cxGrid1spGridDBTableView1Price: TspGridDBColumn;
    cxGrid1spGridDBTableView1Amount: TspGridDBColumn;
    dxSkinController1: TdxSkinController;
    Panel1: TPanel;
    cxTextEdit1: TcxTextEdit;
    cxTextEdit2: TcxTextEdit;
    cxTextEdit3: TcxTextEdit;
    spTextEditEx1: TspTextEditEx;
    Timer1: TTimer;
    procedure FormCreate(Sender: TObject);
    procedure cxGrid1DBTableView1EditKeyPress(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit; var Key: Char);
    procedure ClientDataSet1FieldChange(DataSet: TDataSet; Field: TField);
    procedure cxGrid1spGridDBTableView1EditValueChanging(
      Sender: TspGridDBTableView; Column: TspGridDBColumn;
      EditControl: TWinControl; const EditValue: string);
    procedure ClientDataSet1SumOddGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure ClientDataSet1PriceGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure ClientDataSet1SumPredicate(DataSet: TDataSet;
      ChandedField: TField; var CanDoSum: Boolean);
    procedure ClientDataSet1SumData(CloneDataSet: TDataSet);
    procedure Timer1Timer(Sender: TObject);
  end;

var
  Form2: TForm2;

implementation

uses uOddDetailUtils, Math, spFunc;

{$R *.dfm}

{ TForm2 }

procedure TForm2.ClientDataSet1FieldChange(DataSet: TDataSet; Field: TField);
var
  AUnit: TOddUnit;
  ody: IOddDetail;
  odm: IOddDetail;
  ods: IOddDetail;

  procedure CalcAmount;
  begin
    case AUnit of
      ouYard:  DataSet['Amount'] := RoundTo(DataSet.FieldByName('YQty').AsFloat*DataSet.FieldByName('Price').AsFloat, -2);
      ouMetre: DataSet['Amount'] := RoundTo(DataSet.FieldByName('MQty').AsFloat*DataSet.FieldByName('Price').AsFloat, -2);
    end;
  end;

begin
  AUnit := TOddUnit.Parse(DataSet.FieldByName('Unit').AsString);
  if SameTextEx(Field.FieldName, ['YOdd', 'MOdd', 'Unit']) then begin
    ody := ParseOD(DataSet.FieldByName('YOdd').AsString, ouYard);
    odm := ParseOD(DataSet.FieldByName('MOdd').AsString, ouMetre);
    ods := NewEmptyOD(AUnit).Append(ody).Append(odm);
    DataSet['SumOdd'] := ods.ToString;
    DataSet['YQty'] := RoundTo(ods.TotalQty[ouYard], -2);
    DataSet['MQty'] := RoundTo(ods.TotalQty[ouMetre], -2);
    CalcAmount;
  end;
  if SameTextEx(Field.FieldName, ['Price']) then
    CalcAmount;
end;

procedure TForm2.ClientDataSet1PriceGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  if DisplayText and not Sender.AsString.IsEmpty then
    Text := Format('%s/%s', [Sender.AsString, Sender.DataSet.FieldByName('Unit').AsString])
  else
    Text := Sender.AsString;
end;

procedure TForm2.ClientDataSet1SumOddGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  if DisplayText and not Sender.AsString.IsEmpty then
    Text := Format('(%s)%s', [Sender.AsString, Sender.DataSet.FieldByName('Unit').AsString])
  else
    Text := Sender.AsString;
end;

procedure TForm2.ClientDataSet1SumPredicate(DataSet: TDataSet;
  ChandedField: TField; var CanDoSum: Boolean);
begin
  CanDoSum := SameTextEx(ChandedField.FieldName, ['MQty', 'YQty', 'Amount'])
end;

procedure TForm2.ClientDataSet1SumData(CloneDataSet: TDataSet);
var
  MQty: Double;
  YQty: Double;
  Amount: Double;
begin
  MQty := 0;
  YQty := 0;
  Amount := 0;
  ForEachRecord(CloneDataSet,
    procedure (DataSet: TDataSet)
    begin
      MQty := MQty + DataSet.FieldByName('MQty').AsFloat;
      YQty := YQty + DataSet.FieldByName('YQty').AsFloat;
      Amount := Amount + DataSet.FieldByName('Amount').AsFloat;
    end);
  cxTextEdit1.Text := FormatFloat('0.00', YQty);
  cxTextEdit2.Text := FormatFloat('0.00', MQty);
  cxTextEdit3.Text := FormatFloat('0.00', Amount);
end;

procedure TForm2.cxGrid1DBTableView1EditKeyPress(Sender: TcxCustomGridTableView;
  AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit; var Key: Char);
begin
  Caption := AEdit.ClassName;
end;

procedure TForm2.cxGrid1spGridDBTableView1EditValueChanging(
  Sender: TspGridDBTableView; Column: TspGridDBColumn; EditControl: TWinControl;
  const EditValue: string);
begin
  if SameText(Column.DataBinding.FieldName, 'Price') then
    ClientDataSet1['Price'] := StrToFloatVariant(EditValue) else
  if SameText(Column.DataBinding.FieldName, 'YOdd') then
    ClientDataSet1['YOdd'] := EditValue else
  if SameText(Column.DataBinding.FieldName, 'MOdd') then
    ClientDataSet1['MOdd'] := EditValue
end;

procedure TForm2.FormCreate(Sender: TObject);
var
  myTextEdit: TcxOddTextEdit;
begin
  myTextEdit := TcxOddTextEdit.Create(Self);
  myTextEdit.Parent := Panel1;
  myTextEdit.SetBounds(5, 5, 200, 25);
  cxGrid1spGridDBTableView1YOdd.PropertiesClass := TcxOddTextEditProperties;
  cxGrid1spGridDBTableView1MOdd.PropertiesClass := TcxOddTextEditProperties;
  cxGrid1spGridDBTableView1SumOdd.PropertiesClass := TcxOddTextEditProperties;
  cxGrid1spGridDBTableView1SumOdd.Properties.ReadOnly := True;
  ClientDataSet1.Append;
  ClientDataSet1['Unit'] := 'ย๋';
  ClientDataSet1['YOdd'] := '4*32.92+51.21';
  ClientDataSet1['MOdd'] := '4*32.92+51.21';
  ClientDataSet1['Price'] := 10;
  ClientDataSet1.Post;
  ClientDataSet1.Append;
  ClientDataSet1['Unit'] := 'รื';
  ClientDataSet1['YOdd'] := '3*39+20';
  ClientDataSet1['MOdd'] := '2*20+36';
  ClientDataSet1['Price'] := 10;
  ClientDataSet1.Post;
end;

procedure TForm2.Timer1Timer(Sender: TObject);
begin
  if ActiveControl <> nil then
    Caption := ActiveControl.ClassName;
end;

end.
