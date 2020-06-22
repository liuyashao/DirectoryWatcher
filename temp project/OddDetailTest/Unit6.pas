unit Unit6;

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
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
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
    cxGrid2spGridDBBandedTableView1SpecSaleM: TspGridDBBandedColumn;
    cxGrid2spGridDBBandedTableView1SpecCutM: TspGridDBBandedColumn;
    ClientDataSet1Unit: TspStringField;
    ClientDataSet1SpecY: TspFloatField;
    ClientDataSet1SpecM: TspFloatField;
    ClientDataSet1Piece: TspIntegerField;
    ClientDataSet1OddY: TspStringField;
    ClientDataSet1OddM: TspStringField;
    ClientDataSet1OddTotal: TspStringField;
    ClientDataSet1InDetail: TspStringField;
    ClientDataSet1QtyY: TspFloatField;
    ClientDataSet1QtyM: TspFloatField;
    ClientDataSet1Price: TspFloatField;
    ClientDataSet1Amount: TspFloatField;
    ClientDataSet1TotalPiece: TspIntegerField;
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
  ClientDataSet1.Append;
  ClientDataSet1['Unit'] := '码';
  ClientDataSet1['SpecY'] := 39.37;
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
  odIn: IOddDetail;//入库明细

  procedure CalcAmount;
  begin
    case AUnit of
      ouRoll:  DataSet['Amount'] := RoundTo(DataSet.FieldByName('Piece').AsFloat  *DataSet.FieldByName('Price').AsFloat, -2);
      ouYard:  DataSet['Amount'] := RoundTo(DataSet.FieldByName('QtyY').AsFloat*DataSet.FieldByName('Price').AsFloat, -2);
      ouMetre: DataSet['Amount'] := RoundTo(DataSet.FieldByName('QtyM').AsFloat*DataSet.FieldByName('Price').AsFloat, -2);
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
  AUnit := TOddUnit.ParseDef(DataSet.FieldByName('Unit').AsString);
  if SameTextEx(Field.FieldName, ['Unit', 'SpecY', 'SpecM', 'Piece', 'OddY', 'OddM']) then begin
    if SameText(Field.FieldName, 'Unit') then
      PreventFieldChange(procedure
      begin
        if AUnit = ouRoll then begin
          DataSet['OddY'] := null;
          DataSet['OddM'] := null;
        end;
      end);
    if SameText(Field.FieldName, 'SpecY') then
      PreventFieldChange(procedure
      begin
        DataSet['SpecM'] := RoundTo(ouYard.ConvertValueTo(ouMetre, Field.AsFloat), -2);
      end);
    if SameText(Field.FieldName, 'SpecM') then
      PreventFieldChange(procedure
      begin
        DataSet['SpecY'] := RoundTo(ouMetre.ConvertValueTo(ouYard, Field.AsFloat), -2);
      end);
    odRoll  := NewOD(AUnit);
    if AUnit.ToLengthUnit = ouMetre then
      odRoll.Add(DataSet.FieldByName('Piece').AsInteger, DataSet.FieldByName('SpecM').AsFloat)
    else
      odRoll.Add(DataSet.FieldByName('Piece').AsInteger, DataSet.FieldByName('SpecY').AsFloat);
    odOddY  := ParseOD(DataSet.FieldByName('OddY').AsString, ouYard);
    odOddM  := ParseOD(DataSet.FieldByName('OddM').AsString, ouMetre);
    odIn := NewOD(AUnit).Append(odRoll).Append(odOddY).Append(odOddM);
    DataSet['InDetail'] := odIn.ToString;
    DataSet['QtyY']   := RoundTo(odIn.TotalQty[ouYard], -2);
    DataSet['QtyM']   := RoundTo(odIn.TotalQty[ouMetre], -2);
    DataSet['TotalPiece']  := odIn.TotalPieces;
    CalcAmount;
  end;

//  if SameTextEx(Field.FieldName, ['InDetail']) then begin
//    odSale := ParseOD(DataSet.FieldByName('SaleDetail').AsString, AUnit);
//    DataSet['SaleQty'] := RoundTo(odSale.TotalQty[AUnit], -2);
//  end;

  if SameTextEx(Field.FieldName, ['Price']) then
    CalcAmount;
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
  if (TOddUnit.ParseDef(ClientDataSet1.FieldByName('Unit').AsString) = ouRoll) and
    SameTextEx((AItem as TspGridDBBandedColumn).DataBinding.FieldName, ['OddY', 'OddM', 'QtyCut', 'SpecCutY', 'SpecCutM'])
  then begin
    Key := #0;
    ShowGridTableItemHintMsg(AItem, '单位为支时，只能整支入库，不能输入零头明细', 4000);
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

  if SameText(FieldName, 'Piece') then
    ClientDataSet1['Piece'] := StrToFloatVariant(EditValue);
end;

procedure TForm2.ClientDataSet1BeforeOpen(DataSet: TDataSet);
begin
  ClientDataSet1.FieldByName('OddY').OnGetText := ClientDataSet1OddFieldGetText;
  ClientDataSet1.FieldByName('OddM').OnGetText := ClientDataSet1OddFieldGetText;
  ClientDataSet1.FieldByName('InDetail').OnGetText := ClientDataSet1OddFieldGetText;

  ClientDataSet1.FieldByName('Price').OnGetText := ClientDataSet1PriceGetText;

  ClientDataSet1.FieldByName('SpecY').OnGetText := ClientDataSet1SpecYGetText;
  ClientDataSet1.FieldByName('SpecM').OnGetText := ClientDataSet1SpecYGetText;

  ClientDataSet1.FieldByName('QtyY').OnGetText := ClientDataSet1QtyCutGetText;
  ClientDataSet1.FieldByName('QtyM').OnGetText := ClientDataSet1QtyCutGetText;
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
  if SameTextEx(Sender.FieldName, ['InDetail']) then
    AUnit := TOddUnit.ParseDef(Sender.DataSet.FieldByName('Unit').AsString);
  Text := GetOddFieldTextWithUnit(Sender, DisplayText, AUnit);
end;

procedure TForm2.ClientDataSet1PriceGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  Text := GetPriceFieldTextWithUnit(Sender, DisplayText, TOddUnit.ParseDef(Sender.DataSet.FieldByName('Unit').AsString));
end;

procedure TForm2.ClientDataSet1SpecYGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
var
  AUnit: TOddUnit;
begin
  if SameTextEx(Sender.FieldName, ['SpecY']) then
    AUnit := ouYard else
  if SameTextEx(Sender.FieldName, ['SpecM']) then
    AUnit := ouMetre;
  Text := GetSpecFieldTextWithUnit(Sender, DisplayText, AUnit);
end;

procedure TForm2.ClientDataSet1QtyCutGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
var
  AUnit: TOddUnit;
begin
  if SameTextEx(Sender.FieldName, ['QtyY']) then
    AUnit := ouYard else
  if SameTextEx(Sender.FieldName, ['QtyM']) then
    AUnit := ouMetre else
  if SameTextEx(Sender.FieldName, ['InDetail']) then
    AUnit := TOddUnit.ParseDef(Sender.DataSet.FieldByName('Unit').AsString);
  Text := GetQtyFieldTextWithUnit(Sender, DisplayText, AUnit);
end;

procedure TForm2.ClientDataSet1SumPredicate(DataSet: TDataSet;
  ChandedField: TField; var CanDoSum: Boolean);
begin
  CanDoSum := SameTextEx(ChandedField.FieldName, ['QtyY', 'QtyM', 'TotalPiece', 'Amount'])
end;

procedure TForm2.ClientDataSet1SumData(CloneDataSet: TDataSet);
var
  TotalQtyY: Double;
  TotalQtyM: Double;
  TotalPiece: Integer;
  Amount: Double;
begin
  TotalQtyY := 0;
  TotalQtyM := 0;
  TotalPiece := 0;
  Amount := 0;
  ForEachRecord(CloneDataSet,
    procedure (DataSet: TDataSet)
    var
      AUnit: TOddUnit;
    begin
      AUnit := TOddUnit.ParseDef(DataSet.FieldByName('Unit').AsString);
      TotalQtyY  := TotalQtyY + DataSet.FieldByName('QtyY').AsFloat;
      TotalQtyM  := TotalQtyM + DataSet.FieldByName('QtyM').AsFloat;
      TotalPiece := TotalPiece + DataSet.FieldByName('TotalPiece').AsInteger;
      Amount     := Amount + DataSet.FieldByName('Amount').AsFloat;
    end);
  cxTextEdit1.Text := FormatFloat('0.00', TotalQtyY);
  cxTextEdit2.Text := FormatFloat('0.00', TotalQtyM);
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
