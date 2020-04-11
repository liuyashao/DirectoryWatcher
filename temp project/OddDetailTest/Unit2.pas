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
  spClientDataSet, cxLabel;

type
  TForm2 = class(TForm)
    DataSource1: TDataSource;
    ClientDataSet1: TspClientDataSet;
    ClientDataSet1str: TspStringField;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    dxColorEdit1: TdxColorEdit;
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
    procedure FormCreate(Sender: TObject);
    procedure dxColorEdit1PropertiesChange(Sender: TObject);
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
  end;

var
  Form2: TForm2;

implementation

uses uOddTextEditProperties, uOddDetailUtils, Math, spFunc;

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
  if SameTextEx(Field.FullName, ['YOdd', 'MOdd', 'Unit']) then begin
    ody := ParseOD(DataSet.FieldByName('YOdd').AsString, ouYard);
    odm := ParseOD(DataSet.FieldByName('MOdd').AsString, ouMetre);
    ods := NewEmptyOD(AUnit).Append(ody).Append(odm);
    DataSet['SumOdd'] := ods.ToString;
    DataSet['YQty'] := RoundTo(ods.TotalQty[ouYard], -2);
    DataSet['MQty'] := RoundTo(ods.TotalQty[ouMetre], -2);
    CalcAmount;
  end;
  if SameTextEx(Field.FullName, ['Price']) then begin
    CalcAmount;
  end;
end;

procedure TForm2.ClientDataSet1PriceGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  if DisplayText then
    Text := Format('%s/%s', [Sender.AsString, Sender.DataSet.FieldByName('Unit').AsString])
  else
    Text := Sender.AsString;
end;

procedure TForm2.ClientDataSet1SumOddGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  if DisplayText then
    Text := Format('(%s)%s', [Sender.AsString, Sender.DataSet.FieldByName('Unit').AsString])
  else
    Text := Sender.AsString;
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
    ClientDataSet1['Price'] := EditValue else
  if SameText(Column.DataBinding.FieldName, 'YOdd') then
    ClientDataSet1['YOdd'] := EditValue else
  if SameText(Column.DataBinding.FieldName, 'MOdd') then
    ClientDataSet1['MOdd'] := EditValue;
end;

procedure TForm2.dxColorEdit1PropertiesChange(Sender: TObject);
begin
  OddBackgroudColor := dxColorEdit1.ColorValue;
  cxGrid1spGridDBTableView1.Invalidate;
  Caption := ColorToString(dxColorEdit1.ColorValue);
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
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

end.
