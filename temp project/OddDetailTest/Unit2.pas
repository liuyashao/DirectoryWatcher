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
  dxSkinWhiteprint, dxSkinXmas2008Blue, Vcl.ExtCtrls, spTextEditEx,
  cxGridBandedTableView, cxGridDBBandedTableView, spGridDBBandedTableView;

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
    cxGrid1spGridDBTableView1Price: TspGridDBColumn;
    cxGrid1spGridDBTableView1Amount: TspGridDBColumn;
    dxSkinController1: TdxSkinController;
    Panel1: TPanel;
    cxTextEdit1: TcxTextEdit;
    cxTextEdit2: TcxTextEdit;
    cxTextEdit3: TcxTextEdit;
    spTextEditEx1: TspTextEditEx;
    Timer1: TTimer;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    cxGrid2spGridDBBandedTableView1: TspGridDBBandedTableView;
    ClientDataSet1SpecY: TFloatField;
    ClientDataSet1SpecM: TFloatField;
    ClientDataSet1SpecSale: TFloatField;
    ClientDataSet1Piece: TIntegerField;
    ClientDataSet1OddSale: TStringField;
    ClientDataSet1SaleQty: TFloatField;
    ClientDataSet1TotalPiece: TIntegerField;
    ClientDataSet1SpecCut: TFloatField;
    ClientDataSet1QtyCut: TFloatField;
    cxGrid1spGridDBTableView1SpecY: TspGridDBColumn;
    cxGrid1spGridDBTableView1SpecM: TspGridDBColumn;
    cxGrid1spGridDBTableView1SpecSale: TspGridDBColumn;
    cxGrid1spGridDBTableView1Piece: TspGridDBColumn;
    cxGrid1spGridDBTableView1OddY: TspGridDBColumn;
    cxGrid1spGridDBTableView1OddM: TspGridDBColumn;
    cxGrid1spGridDBTableView1OddTotal: TspGridDBColumn;
    cxGrid1spGridDBTableView1SpecCut: TspGridDBColumn;
    cxGrid1spGridDBTableView1QtyCut: TspGridDBColumn;
    cxGrid1spGridDBTableView1SaleDetail: TspGridDBColumn;
    cxGrid1spGridDBTableView1SaleQty: TspGridDBColumn;
    cxGrid1spGridDBTableView1TotalQtyY: TspGridDBColumn;
    cxGrid1spGridDBTableView1TotalQtyM: TspGridDBColumn;
    cxGrid1spGridDBTableView1TotalPiece: TspGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure cxGrid1DBTableView1EditKeyPress(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit; var Key: Char);
    procedure ClientDataSet1FieldChange(DataSet: TDataSet; Field: TField);
    procedure cxGrid1spGridDBTableView1EditValueChanging(
      Sender: TspGridDBTableView; Column: TspGridDBColumn;
      EditControl: TWinControl; const EditValue: string);
    procedure ClientDataSet1OddFieldGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure ClientDataSet1PriceGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure ClientDataSet1SumPredicate(DataSet: TDataSet;
      ChandedField: TField; var CanDoSum: Boolean);
    procedure ClientDataSet1SumData(CloneDataSet: TDataSet);
    procedure Timer1Timer(Sender: TObject);
  private
    FPreventFieldChange: Boolean;
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
  odRoll: IOddDetail;//整支
  odOddY: IOddDetail;//零头码明细
  odOddM: IOddDetail;//零头米明细
  odCut: IOddDetail;//散剪
  odSale: IOddDetail;//销售明细
  odTotal: IOddDetail;//出库明细
  
  procedure PreventFieldChange(Proc: TProc);
  begin
    FPreventFieldChange := True;
    try
      proc;
    finally
      FPreventFieldChange := False;
    end;  
  end;

  procedure SetSpecSale;
  begin
    if AUnit = ouMetre then
      DataSet['SpecSale'] := DataSet['SpecM']
    else
      DataSet['SpecSale'] := DataSet['SpecY'];
  end;

  procedure CalcAmount;
  begin
    case AUnit of
      ouRoll: DataSet['Amount'] := RoundTo(DataSet.FieldByName('Piece').AsFloat  *DataSet.FieldByName('Price').AsFloat, -2);
      else    DataSet['Amount'] := RoundTo(DataSet.FieldByName('SaleQty').AsFloat*DataSet.FieldByName('Price').AsFloat, -2);
    end;
  end;

begin
  if FPreventFieldChange then
    Exit;
  AUnit := TOddUnit.Parse(DataSet.FieldByName('Unit').AsString);
  if SameTextEx(Field.FieldName, ['Unit', 'SpecY', 'SpecM', 'SpecSale', 'Piece', 'OddY', 'OddM', 'QtyCut']) then begin
    if SameText(Field.FieldName, 'Unit') then begin
      FPreventFieldChange := True;
      try
        SetSpecSale;
        if AUnit = ouRoll then begin
          DataSet['OddY'] := null;
          DataSet['OddM'] := null;
          DataSet['QtyCut'] := null;
        end;
      finally
        FPreventFieldChange := False;
      end;
    end;
    if SameText(Field.FieldName, 'SpecY') then begin
      FPreventFieldChange := True;
      try
        DataSet['SpecM'] := RoundTo(Field.AsFloat*0.9144, -2);
        SetSpecSale;
      finally
        FPreventFieldChange := False;
      end;
    end;
    if SameText(Field.FieldName, 'SpecM') then begin
      FPreventFieldChange := True;
      try
        DataSet['SpecY'] := RoundTo(Field.AsFloat/0.9144, -2);
        SetSpecSale;
      finally
        FPreventFieldChange := False;
      end;
    end;
    odRoll  := NewEmptyOD(AUnit).Add(DataSet.FieldByName('Piece').AsInteger, DataSet.FieldByName('SpecSale').AsFloat);
    odOddY  := ParseOD(DataSet.FieldByName('OddY').AsString, ouYard);
    odOddM  := ParseOD(DataSet.FieldByName('OddM').AsString, ouMetre);
    odCut   := NewEmptyOD(AUnit).Add(1, DataSet.FieldByName('QtyCut').AsFloat);
    odSale  := NewEmptyOD(AUnit).Append(odRoll).Append(odOddY).Append(odOddM).Append(odCut);
    if AUnit = ouMetre then
      odTotal := NewEmptyOD(AUnit).Add(DataSet.FieldByName('Piece').AsInteger, DataSet.FieldByName('SpecM').AsFloat)
    else
      odTotal := NewEmptyOD(AUnit).Add(DataSet.FieldByName('Piece').AsInteger, DataSet.FieldByName('SpecY').AsFloat);
    odTotal.Append(odOddY).Append(odOddM).Append(odCut);
    DataSet['OddTotal'] := NewEmptyOD(AUnit).Append(odOddY).Append(odOddM).ToString;
	DataSet['TotalDetail'] := odTotal.ToString;
	DataSet['TotalQtyY']   := RoundTo(odTotal.TotalQty[ouYard], -2);
    DataSet['TotalQtyM']   := RoundTo(odTotal.TotalQty[ouMetre], -2);
    DataSet['TotalPiece']  := odTotal.TotalPieces;	
	PreventFieldChange(
	  procedure begin
        DataSet['SaleDetail'] := odSale.ToString;
        DataSet['SaleQty']    := RoundTo(odSale.TotalQty[AUnit], -2);      
	  end);
	CalcAmount;
  end;
  if SameTextEx(Field.FieldName, ['SaleDetail']) then begin
    odSale := ParseOD(DataSet.FieldByName('SaleDetail').AsString, AUnit);	
    DataSet['SaleQty'] := RoundTo(odSale.TotalQty[AUnit], -2); 
  end;	
  if SameTextEx(Field.FieldName, ['Price', 'SaleQty']) then
    CalcAmount;
end;

procedure TForm2.cxGrid1spGridDBTableView1EditValueChanging(
  Sender: TspGridDBTableView; Column: TspGridDBColumn; EditControl: TWinControl;
  const EditValue: string);
begin
  if SameText(Column.DataBinding.FieldName, 'Price') then
    ClientDataSet1['Price'] := StrToFloatVariant(EditValue) else

  if SameText(Column.DataBinding.FieldName, 'OddY') then
    ClientDataSet1['OddY'] := EditValue else

  if SameText(Column.DataBinding.FieldName, 'OddM') then
    ClientDataSet1['OddM'] := EditValue else

  if SameText(Column.DataBinding.FieldName, 'SpecY') then
    ClientDataSet1['SpecY'] := StrToFloatVariant(EditValue) else

  if SameText(Column.DataBinding.FieldName, 'SpecM') then
    ClientDataSet1['SpecM'] := StrToFloatVariant(EditValue) else

  if SameText(Column.DataBinding.FieldName, 'SpecSale') then
    ClientDataSet1['SpecSale'] := StrToFloatVariant(EditValue) else

  if SameText(Column.DataBinding.FieldName, 'Piece') then
    ClientDataSet1['Piece'] := StrToFloatVariant(EditValue) else

  if SameText(Column.DataBinding.FieldName, 'QtyCut') then
    ClientDataSet1['QtyCut'] := StrToFloatVariant(EditValue) else
	
  if SameText(Column.DataBinding.FieldName, 'SaleDetail') then
    ClientDataSet1['SaleDetail'] := EditValue;  
end;

procedure TForm2.ClientDataSet1PriceGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  GetPriceFieldTextWithUnit(Sender, DisplayText, TOddUnit.Parse(Sender.DataSet.FieldByName('Unit').AsString));
end;

procedure TForm2.ClientDataSet1OddFieldGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  Text := GetOddFieldTextWithUnit(Sender, DisplayText, TOddUnit.Parse(Sender.DataSet.FieldByName('Unit').AsString));
end;

procedure TForm2.ClientDataSet1SumPredicate(DataSet: TDataSet;
  ChandedField: TField; var CanDoSum: Boolean);
begin
  CanDoSum := SameTextEx(ChandedField.FieldName, ['TotalQtyY', 'TotalQtyM', 'TotalPiece', 'SaleQty', 'Amount'])
end;

procedure TForm2.ClientDataSet1SumData(CloneDataSet: TDataSet);
//var
//  MQty: Double;
//  YQty: Double;
//  Amount: Double;
begin
//  MQty := 0;
//  YQty := 0;
//  Amount := 0;
//  ForEachRecord(CloneDataSet,
//    procedure (DataSet: TDataSet)
//    begin
//      MQty := MQty + DataSet.FieldByName('MQty').AsFloat;
//      YQty := YQty + DataSet.FieldByName('YQty').AsFloat;
//      Amount := Amount + DataSet.FieldByName('Amount').AsFloat;
//    end);
//  cxTextEdit1.Text := FormatFloat('0.00', YQty);
//  cxTextEdit2.Text := FormatFloat('0.00', MQty);
//  cxTextEdit3.Text := FormatFloat('0.00', Amount);
end;

procedure TForm2.cxGrid1DBTableView1EditKeyPress(Sender: TcxCustomGridTableView;
  AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit; var Key: Char);
begin
  Caption := AEdit.ClassName;
end;

procedure TForm2.FormCreate(Sender: TObject);
//var
//  myTextEdit: TcxOddTextEdit;
begin
//  myTextEdit := TcxOddTextEdit.Create(Self);
//  myTextEdit.Parent := Panel1;
//  myTextEdit.SetBounds(5, 5, 200, 25);
  ClientDataSet1.Append;
  ClientDataSet1['Unit'] := '码';
  ClientDataSet1['SpecY'] := 39.37;
  ClientDataSet1['SpecSale'] := 40;
  ClientDataSet1['Piece'] := 3;
  ClientDataSet1['OddY'] := '4*32.92+30';
  ClientDataSet1['OddM'] := '2*50+35';
  ClientDataSet1['Price'] := 10;
  ClientDataSet1.Post;
  ClientDataSet1.Append;
  ClientDataSet1['Unit'] := '米';
  ClientDataSet1['SpecY'] := 40;
  ClientDataSet1['Piece'] := 2;
  ClientDataSet1['OddY'] := '3*35.62+50';
  ClientDataSet1['OddM'] := '2*30+38.6';
  ClientDataSet1['Price'] := 10;
  ClientDataSet1.Post;
end;

procedure TForm2.Timer1Timer(Sender: TObject);
begin
  if ActiveControl <> nil then
    Caption := ActiveControl.ClassName;
end;

end.
