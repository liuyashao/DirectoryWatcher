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
    ClientDataSet1TotalDetail: TStringField;
    cxGrid1spGridDBTableView1TotalDetail: TspGridDBColumn;
    cxGrid2spGridDBBandedTableView1Unit: TspGridDBBandedColumn;
    cxGrid2spGridDBBandedTableView1SpecY: TspGridDBBandedColumn;
    cxGrid2spGridDBBandedTableView1SpecM: TspGridDBBandedColumn;
    cxGrid2spGridDBBandedTableView1SpecSale: TspGridDBBandedColumn;
    cxGrid2spGridDBBandedTableView1Piece: TspGridDBBandedColumn;
    cxGrid2spGridDBBandedTableView1OddY: TspGridDBBandedColumn;
    cxGrid2spGridDBBandedTableView1OddM: TspGridDBBandedColumn;
    cxGrid2spGridDBBandedTableView1OddTotal: TspGridDBBandedColumn;
    cxGrid2spGridDBBandedTableView1SpecCut: TspGridDBBandedColumn;
    cxGrid2spGridDBBandedTableView1QtyCut: TspGridDBBandedColumn;
    cxGrid2spGridDBBandedTableView1SaleDetail: TspGridDBBandedColumn;
    cxGrid2spGridDBBandedTableView1SaleQty: TspGridDBBandedColumn;
    cxGrid2spGridDBBandedTableView1Price: TspGridDBBandedColumn;
    cxGrid2spGridDBBandedTableView1Amount: TspGridDBBandedColumn;
    cxGrid2spGridDBBandedTableView1TotalDetail: TspGridDBBandedColumn;
    cxGrid2spGridDBBandedTableView1TotalQtyY: TspGridDBBandedColumn;
    cxGrid2spGridDBBandedTableView1TotalQtyM: TspGridDBBandedColumn;
    cxGrid2spGridDBBandedTableView1TotalPiece: TspGridDBBandedColumn;
    cbRoundType: TcxComboBox;
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
    procedure ClientDataSet1SpecYGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure ClientDataSet1QtyCutGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure cxGrid2spGridDBBandedTableView1EditValueChanging(
      Sender: TspGridDBBandedTableView; Column: TspGridDBBandedColumn;
      EditControl: TWinControl; const EditValue: string);
  private
    procedure EditValueChanging(const FieldName, EditValue: string);
  end;

var
  Form2: TForm2;

implementation

uses
  uOddDetailUtils, Math, spFunc;

{$R *.dfm}

{ TForm2 }

procedure TForm2.FormCreate(Sender: TObject);
//var
//  myTextEdit: TcxOddTextEdit;
begin
//  myTextEdit := TcxOddTextEdit.Create(Self);
//  myTextEdit.Parent := Panel1;
//  myTextEdit.SetBounds(5, 5, 200, 25);
  TRoundType.FillStrings(cbRoundType.Properties.Items);
  cbRoundType.ItemIndex := 1;
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

procedure TForm2.ClientDataSet1FieldChange(DataSet: TDataSet; Field: TField);
var
  AUnit: TOddUnit;
  odRoll: IOddDetail;//整支
  odOddY: IOddDetail;//零头码明细
  odOddM: IOddDetail;//零头米明细
  odCut: IOddDetail;//散剪
  odSale: IOddDetail;//销售明细
  odTotal: IOddDetail;//出库明细
  UpateSpecSale: TProc;

  procedure CalcAmount;
  begin
    case AUnit of
      ouRoll: DataSet['Amount'] := RoundTo(DataSet.FieldByName('Piece').AsFloat  *DataSet.FieldByName('Price').AsFloat, -2);
      else    DataSet['Amount'] := RoundTo(DataSet.FieldByName('SaleQty').AsFloat*DataSet.FieldByName('Price').AsFloat, -2);
    end;
  end;

  procedure PreventFieldChange(Proc: TProc);
  begin
    if DataSet is TspClientDataSet then
      (DataSet as TspClientDataSet).DisableFieldChanges;
    try
      Proc;
    finally
      if DataSet is TspClientDataSet then
        (DataSet as TspClientDataSet).EnableFieldChanges;
    end;
  end;

begin
  UpateSpecSale := procedure
  begin
    if AUnit = ouMetre then
      DataSet['SpecSale'] := DataSet['SpecM']
    else
      DataSet['SpecSale'] := DataSet['SpecY'];
  end;

  AUnit := TOddUnit.Parse(DataSet.FieldByName('Unit').AsString);
  if SameTextEx(Field.FieldName, ['Unit', 'SpecY', 'SpecM', 'SpecSale', 'Piece', 'OddY', 'OddM', 'QtyCut']) then begin
    if SameText(Field.FieldName, 'Unit') then
      PreventFieldChange(procedure
      begin
        UpateSpecSale;
        if AUnit = ouRoll then begin
          DataSet['OddY'] := null;
          DataSet['OddM'] := null;
          DataSet['QtyCut'] := null;
        end;
      end);
    if SameText(Field.FieldName, 'SpecY') then
      PreventFieldChange(procedure
      begin
        DataSet['SpecM'] := RoundTo(Field.AsFloat*0.9144, -2);
        UpateSpecSale;
      end);
    if SameText(Field.FieldName, 'SpecM') then
      PreventFieldChange(procedure
	    begin
        DataSet['SpecY'] := RoundTo(Field.AsFloat/0.9144, -2);
        UpateSpecSale;
      end);
    odRoll  := NewEmptyOD(AUnit).Add(DataSet.FieldByName('Piece').AsInteger, DataSet.FieldByName('SpecSale').AsFloat);
    odOddY  := ParseOD(DataSet.FieldByName('OddY').AsString, ouYard);
    odOddM  := ParseOD(DataSet.FieldByName('OddM').AsString, ouMetre);
    odCut   := NewEmptyOD(AUnit).Add(1, DataSet.FieldByName('QtyCut').AsFloat);
    odSale  := NewEmptyOD(AUnit).Append(odRoll).Append(odOddY).Append(odOddM).Append(odCut)
      .Round(TRoundType(cbRoundType.ItemIndex));
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
	  PreventFieldChange(procedure
    begin
      DataSet['SaleDetail'] := odSale.ToString;
      DataSet['SaleQty']    := RoundTo(odSale.TotalQty[AUnit], -2);
    end);
	  CalcAmount;
  end;
  if SameTextEx(Field.FieldName, ['SaleDetail']) then begin
    odSale := ParseOD(DataSet.FieldByName('SaleDetail').AsString, AUnit)
      .Round(TRoundType(cbRoundType.ItemIndex));
    DataSet['SaleQty'] := RoundTo(odSale.TotalQty[AUnit], -2); 
  end;	
  if SameTextEx(Field.FieldName, ['Price', 'SaleQty']) then
    CalcAmount;
end;

procedure TForm2.cxGrid1spGridDBTableView1EditValueChanging(
  Sender: TspGridDBTableView; Column: TspGridDBColumn; EditControl: TWinControl;
  const EditValue: string);
begin
  EditValueChanging(Column.DataBinding.FieldName, EditValue);
end;

procedure TForm2.cxGrid2spGridDBBandedTableView1EditValueChanging(
  Sender: TspGridDBBandedTableView; Column: TspGridDBBandedColumn;
  EditControl: TWinControl; const EditValue: string);
begin
  EditValueChanging(Column.DataBinding.FieldName, EditValue);
end;

procedure TForm2.EditValueChanging(const FieldName, EditValue: string);
begin
  if SameText(FieldName, 'Price') then
    ClientDataSet1['Price'] := StrToFloatVariant(EditValue) else

  if SameText(FieldName, 'OddY') then
    ClientDataSet1['OddY'] := EditValue else

  if SameText(FieldName, 'OddM') then
    ClientDataSet1['OddM'] := EditValue else

  if SameText(FieldName, 'SpecY') then
    ClientDataSet1['SpecY'] := StrToFloatVariant(EditValue) else

  if SameText(FieldName, 'SpecM') then
    ClientDataSet1['SpecM'] := StrToFloatVariant(EditValue) else

  if SameText(FieldName, 'SpecSale') then
    ClientDataSet1['SpecSale'] := StrToFloatVariant(EditValue) else

  if SameText(FieldName, 'Piece') then
    ClientDataSet1['Piece'] := StrToFloatVariant(EditValue) else

  if SameText(FieldName, 'QtyCut') then
    ClientDataSet1['QtyCut'] := StrToFloatVariant(EditValue) else

  if SameText(FieldName, 'SaleDetail') then
    ClientDataSet1['SaleDetail'] := EditValue;
end;

procedure TForm2.ClientDataSet1OddFieldGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
var
  AUnit: TOddUnit;
begin
  if SameTextEx(Sender.FieldName, ['OddY']) then
    AUnit := ouYard else
  if SameTextEx(Sender.FieldName, ['OddM']) then
    AUnit := ouMetre else
  if SameTextEx(Sender.FieldName, ['OddTotal', 'SaleDetail', 'TotalDetail']) then
    AUnit := TOddUnit.Parse(Sender.DataSet.FieldByName('Unit').AsString);
  Text := GetOddFieldTextWithUnit(Sender, DisplayText, AUnit);
end;

procedure TForm2.ClientDataSet1PriceGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  Text := GetPriceFieldTextWithUnit(Sender, DisplayText, TOddUnit.Parse(Sender.DataSet.FieldByName('Unit').AsString));
end;

procedure TForm2.ClientDataSet1SpecYGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
var
  AUnit: TOddUnit;
begin
  if SameTextEx(Sender.FieldName, ['SpecY', 'SpecCut']) then
    AUnit := ouYard else
  if SameTextEx(Sender.FieldName, ['SpecM']) then
    AUnit := ouMetre else
  if SameTextEx(Sender.FieldName, ['SpecSale']) then
    AUnit := TOddUnit.Parse(Sender.DataSet.FieldByName('Unit').AsString);
  Text := GetSpecFieldTextWithUnit(Sender, DisplayText, AUnit);
end;

procedure TForm2.ClientDataSet1QtyCutGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
var
  AUnit: TOddUnit;
begin
  if SameTextEx(Sender.FieldName, ['TotalQtyY']) then
    AUnit := ouYard else
  if SameTextEx(Sender.FieldName, ['TotalQtyM']) then
    AUnit := ouMetre else
  if SameTextEx(Sender.FieldName, ['QtyCut', 'SaleQty']) then
    AUnit := TOddUnit.Parse(Sender.DataSet.FieldByName('Unit').AsString);
  Text := GetQtyFieldTextWithUnit(Sender, DisplayText, AUnit);
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

procedure TForm2.Timer1Timer(Sender: TObject);
begin
  if ActiveControl <> nil then
    Caption := ActiveControl.ClassName;
end;

end.
