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
  cxGridBandedTableView, cxGridDBBandedTableView, spGridDBBandedTableView,
  Vcl.Menus, cxButtons;

type
  TForm2 = class(TForm)
    DataSource1: TDataSource;
    ClientDataSet1: TspClientDataSet;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxGrid1spGridDBTableView1: TspGridDBTableView;
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
    cxButton1: TcxButton;
    ClientDataSet1Unit: TspStringField;
    ClientDataSet1SpecY: TspFloatField;
    ClientDataSet1SpecM: TspFloatField;
    ClientDataSet1SpecSaleY: TspFloatField;
    ClientDataSet1SpecSaleM: TspFloatField;
    ClientDataSet1Piece: TspIntegerField;
    ClientDataSet1OddY: TspStringField;
    ClientDataSet1OddM: TspStringField;
    ClientDataSet1OddTotal: TspStringField;
    ClientDataSet1SpecCutY: TspFloatField;
    ClientDataSet1SpecCutM: TspFloatField;
    ClientDataSet1QtyCut: TspFloatField;
    ClientDataSet1SaleDetail: TspStringField;
    ClientDataSet1SaleQty: TspFloatField;
    ClientDataSet1Price: TspFloatField;
    ClientDataSet1Amount: TspFloatField;
    ClientDataSet1TotalDetail: TspStringField;
    ClientDataSet1TotalQtyY: TspFloatField;
    ClientDataSet1TotalQtyM: TspFloatField;
    ClientDataSet1TotalPiece: TspIntegerField;
    cxGrid2spGridDBBandedTableView1SpecSaleM: TspGridDBBandedColumn;
    cxGrid2spGridDBBandedTableView1SpecCutM: TspGridDBBandedColumn;
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
    procedure cbRoundTypePropertiesChange(Sender: TObject);
    procedure cxGrid2spGridDBBandedTableView1EditKeyPress(
      Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
      AEdit: TcxCustomEdit; var Key: Char);
    procedure ClientDataSet1BeforeOpen(DataSet: TDataSet);
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
  ClientDataSet1['SpecSaleY'] := 40;
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
  UpateSpecSale := procedure begin
     DataSet['SpecSaleM'] := DataSet['SpecM'];
     DataSet['SpecSaleY'] := DataSet['SpecY'];
  end;
  try
    AUnit := TOddUnit.Parse(DataSet.FieldByName('Unit').AsString);
    if SameTextEx(Field.FieldName, ['SpecCutY', 'SpecCutM']) then begin
      if SameText(Field.FieldName, 'SpecCutY') then
        PreventFieldChange(procedure
        begin
          DataSet['SpecCutM'] := RoundTo(ouYard.ConvertValueTo(ouMetre, Field.AsFloat), -2);
        end);
      if SameText(Field.FieldName, 'SpecCutM') then
        PreventFieldChange(procedure
        begin
          DataSet['SpecCutY'] := RoundTo(ouMetre.ConvertValueTo(ouYard, Field.AsFloat), -2);
        end);
    end;
    if SameTextEx(Field.FieldName, ['Unit', 'SpecY', 'SpecM', 'SpecSaleY', 'SpecSaleM', 'Piece', 'OddY', 'OddM', 'QtyCut']) then begin
      if SameText(Field.FieldName, 'Unit') then
        PreventFieldChange(procedure
        begin
          UpateSpecSale;
          if AUnit = ouRoll then begin
            DataSet['OddY'] := null;
            DataSet['OddM'] := null;
            DataSet['QtyCut'] := null;
            DataSet['SpecCutY'] := null;
            DataSet['SpecCutM'] := null;
          end;
        end);
      if SameText(Field.FieldName, 'SpecY') then
        PreventFieldChange(procedure
        begin
          DataSet['SpecM'] := RoundTo(ouYard.ConvertValueTo(ouMetre, Field.AsFloat), -2);
          UpateSpecSale;
        end);
      if SameText(Field.FieldName, 'SpecM') then
        PreventFieldChange(procedure
        begin
          DataSet['SpecY'] := RoundTo(ouMetre.ConvertValueTo(ouYard, Field.AsFloat), -2);
          UpateSpecSale;
        end);
      if SameText(Field.FieldName, 'SpecSaleM') then
        PreventFieldChange(procedure
        begin
          DataSet['SpecSaleY'] := RoundTo(ouMetre.ConvertValueTo(ouYard, Field.AsFloat), -2);
        end);
      if SameText(Field.FieldName, 'SpecSaleY') then
        PreventFieldChange(procedure
        begin
          DataSet['SpecSaleM'] := RoundTo(ouYard.ConvertValueTo(ouMetre, Field.AsFloat), -2);
        end);
      odRoll  := NewOD(AUnit);
      if AUnit.ToLengthUnit = ouMetre then
        odRoll.Add(DataSet.FieldByName('Piece').AsInteger, DataSet.FieldByName('SpecSaleM').AsFloat)
      else
        odRoll.Add(DataSet.FieldByName('Piece').AsInteger, DataSet.FieldByName('SpecSaleY').AsFloat);
      odOddY  := ParseOD(DataSet.FieldByName('OddY').AsString, ouYard);
      odOddM  := ParseOD(DataSet.FieldByName('OddM').AsString, ouMetre);
      odCut   := NewOD(AUnit).Add(1, DataSet.FieldByName('QtyCut').AsFloat);
      odSale  := NewOD(AUnit).Append(odRoll).Append(odOddY).Append(odOddM).Append(odCut).Round(TRoundType(cbRoundType.ItemIndex));
      if AUnit.ToLengthUnit = ouMetre then
        odTotal := NewOD(AUnit).Add(DataSet.FieldByName('Piece').AsInteger, DataSet.FieldByName('SpecM').AsFloat)
      else
        odTotal := NewOD(AUnit).Add(DataSet.FieldByName('Piece').AsInteger, DataSet.FieldByName('SpecY').AsFloat);
      odTotal.Append(odOddY).Append(odOddM).Append(odCut);
      DataSet['OddTotal'] := NewOD(AUnit).Append(odOddY).Append(odOddM).ToString;
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
      odSale := ParseOD(DataSet.FieldByName('SaleDetail').AsString, AUnit);
      DataSet['SaleQty'] := RoundTo(odSale.TotalQty[AUnit], -2);
    end;
    if SameTextEx(Field.FieldName, ['Price', 'SaleQty']) then
      CalcAmount;
  finally
    UpateSpecSale := nil;
  end;
end;

procedure TForm2.cbRoundTypePropertiesChange(Sender: TObject);
begin
  if ClientDataSet1.Active then begin
    ForEachRecord(ClientDataSet1,
      procedure(DataSet: TDataSet)
      begin
        ClientDataSet1.Edit;
        ClientDataSet1FieldChange(DataSet, DataSet.FieldByName('Piece'));
      end);
    ClientDataSet1.SumData;
  end;
end;

procedure TForm2.cxGrid1spGridDBTableView1EditValueChanging(
  Sender: TspGridDBTableView; Column: TspGridDBColumn; EditControl: TWinControl;
  const EditValue: string);
begin
  EditValueChanging(Column.DataBinding.FieldName, EditValue);
end;

procedure TForm2.cxGrid2spGridDBBandedTableView1EditKeyPress(
  Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
  AEdit: TcxCustomEdit; var Key: Char);
begin
  if (TOddUnit.Parse(ClientDataSet1.FieldByName('Unit').AsString) = ouRoll) and
    SameTextEx((AItem as TspGridDBBandedColumn).DataBinding.FieldName, ['OddY', 'OddM', 'QtyCut', 'SpecCutY', 'SpecCutM'])
  then begin
    Key := #0;
    ShowGridTableItemHintMsg(AItem, '单位为支时，只能整支销售，不能输入零头或散剪', 4000);
  end;
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

  if SameText(FieldName, 'SpecSaleY') then
    ClientDataSet1['SpecSaleY'] := StrToFloatVariant(EditValue) else

  if SameText(FieldName, 'SpecSaleM') then
    ClientDataSet1['SpecSaleM'] := StrToFloatVariant(EditValue) else

  if SameText(FieldName, 'SpecCutY') then
    ClientDataSet1['SpecCutY'] := StrToFloatVariant(EditValue) else

  if SameText(FieldName, 'SpecCutM') then
    ClientDataSet1['SpecCutM'] := StrToFloatVariant(EditValue) else

  if SameText(FieldName, 'Piece') then
    ClientDataSet1['Piece'] := StrToFloatVariant(EditValue) else

  if SameText(FieldName, 'QtyCut') then
    ClientDataSet1['QtyCut'] := StrToFloatVariant(EditValue) else

  if SameText(FieldName, 'SaleDetail') then
    ClientDataSet1['SaleDetail'] := EditValue;
end;

procedure TForm2.ClientDataSet1BeforeOpen(DataSet: TDataSet);
begin
  ClientDataSet1.FieldByName('OddY').OnGetText := ClientDataSet1OddFieldGetText;
  ClientDataSet1.FieldByName('OddM').OnGetText := ClientDataSet1OddFieldGetText;
  ClientDataSet1.FieldByName('OddTotal').OnGetText := ClientDataSet1OddFieldGetText;
  ClientDataSet1.FieldByName('SaleDetail').OnGetText := ClientDataSet1OddFieldGetText;
  ClientDataSet1.FieldByName('TotalDetail').OnGetText := ClientDataSet1OddFieldGetText;

  ClientDataSet1.FieldByName('Price').OnGetText := ClientDataSet1PriceGetText;

  ClientDataSet1.FieldByName('SpecY').OnGetText := ClientDataSet1SpecYGetText;
  ClientDataSet1.FieldByName('SpecM').OnGetText := ClientDataSet1SpecYGetText;
  ClientDataSet1.FieldByName('SpecCutY').OnGetText := ClientDataSet1SpecYGetText;
  ClientDataSet1.FieldByName('SpecCutM').OnGetText := ClientDataSet1SpecYGetText;
  ClientDataSet1.FieldByName('SpecSaleY').OnGetText := ClientDataSet1SpecYGetText;
  ClientDataSet1.FieldByName('SpecSaleM').OnGetText := ClientDataSet1SpecYGetText;

  ClientDataSet1.FieldByName('TotalQtyY').OnGetText := ClientDataSet1QtyCutGetText;
  ClientDataSet1.FieldByName('TotalQtyM').OnGetText := ClientDataSet1QtyCutGetText;
  ClientDataSet1.FieldByName('QtyCut').OnGetText := ClientDataSet1QtyCutGetText;
  ClientDataSet1.FieldByName('SaleQty').OnGetText := ClientDataSet1QtyCutGetText;


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
  if SameTextEx(Sender.FieldName, ['SpecY', 'SpecSaleY', 'SpecCutY']) then
    AUnit := ouYard else
  if SameTextEx(Sender.FieldName, ['SpecM', 'SpecSaleM', 'SpecCutM']) then
    AUnit := ouMetre;
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
var
  TotalQtyY: Double;
  TotalQtyM: Double;
  TotalPiece: Integer;
  SaleQtyY: Double;
  SaleQtyM: Double;
  Amount: Double;
begin
  TotalQtyY := 0;
  TotalQtyM := 0;
  TotalPiece := 0;
  SaleQtyY := 0;
  SaleQtyM := 0;
  Amount := 0;
  ForEachRecord(CloneDataSet,
    procedure (DataSet: TDataSet)
    var
      AUnit: TOddUnit;
    begin
      AUnit := TOddUnit.Parse(DataSet.FieldByName('Unit').AsString);
      TotalQtyY  := TotalQtyY + DataSet.FieldByName('TotalQtyY').AsFloat;
      TotalQtyM  := TotalQtyM + DataSet.FieldByName('TotalQtyM').AsFloat;
      TotalPiece := TotalPiece + DataSet.FieldByName('TotalPiece').AsInteger;
      SaleQtyY   := SaleQtyY + AUnit.ConvertValueTo(ouYard,  DataSet.FieldByName('SaleQty').AsFloat);
      SaleQtyM   := SaleQtyM + AUnit.ConvertValueTo(ouMetre, DataSet.FieldByName('SaleQty').AsFloat);
      Amount     := Amount + DataSet.FieldByName('Amount').AsFloat;
    end);
  cxTextEdit1.Text := FormatFloat('0.00', SaleQtyY);
  cxTextEdit2.Text := FormatFloat('0.00', SaleQtyM);
  cxTextEdit3.Text := FormatFloat('0.00', Amount);
  spTextEditEx1.Text := TotalPiece.ToString;
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
