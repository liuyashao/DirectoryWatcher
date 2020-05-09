unit Unit4;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator,
  cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB, cxDBData,
  cxTextEdit, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  spGridDBTableView, Datasnap.DBClient, cxGridCustomView, cxClasses,
  cxGridLevel, cxGrid, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinTheBezier, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, cxContainer, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBExtLookupComboBox, dxmdaset, MemDS, DBAccess, VirtualQuery,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, cxDBLookupComboBox, cxDBEdit, Vcl.Mask,
  Vcl.DBCtrls, spClientDataSet, Vcl.ExtCtrls, spDicLabel, cxImage,
  dxGDIPlusClasses, dxSkinsForm, cxGridBandedTableView, cxGridDBBandedTableView,
  spGridDBBandedTableView, Uni, spUniQuery;

type
  TForm4 = class(TForm)
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1spGridDBTableView1: TspGridDBTableView;
    ClientDataSet1: TspClientDataSet;
    DataSource1: TDataSource;
    ClientDataSet1str: TStringField;
    cxGrid1spGridDBTableView1str: TspGridDBColumn;
    ClientDataSet1dt: TDateTimeField;
    ClientDataSet1float: TFloatField;
    cxGrid1spGridDBTableView1dt: TspGridDBColumn;
    cxGrid1spGridDBTableView1float: TspGridDBColumn;
    VirtualQuery1: TVirtualQuery;
    Button1: TButton;
    DataSource2: TDataSource;
    DBGrid1: TDBGrid;
    ClientDataSet1Int: TIntegerField;
    DataSource3: TDataSource;
    ClientDataSet2: TClientDataSet;
    ClientDataSet2Int: TStringField;
    ClientDataSet2str: TStringField;
    ClientDataSet1lk: TStringField;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    cxGrid1spGridDBTableView1Int: TspGridDBColumn;
    cxGrid1spGridDBTableView1lk: TspGridDBColumn;
    DBEdit1: TDBEdit;
    DBNavigator1: TDBNavigator;
    spDicLabel1: TspDicLabel;
    spDicLabel2: TspDicLabel;
    cxGrid1spGridDBTableView2: TspGridDBTableView;
    cxGrid1spGridDBTableView2str: TspGridDBColumn;
    cxGrid1spGridDBTableView2dt: TspGridDBColumn;
    cxGrid1spGridDBTableView2float: TspGridDBColumn;
    cxGrid1spGridDBTableView2Int: TspGridDBColumn;
    cxGrid1spGridDBTableView2lk: TspGridDBColumn;
    dxSkinController1: TdxSkinController;
    cxGrid1spGridDBBandedTableView1: TspGridDBBandedTableView;
    cxGrid1spGridDBBandedTableView1str: TspGridDBBandedColumn;
    cxGrid1spGridDBBandedTableView1dt: TspGridDBBandedColumn;
    cxGrid1spGridDBBandedTableView1float: TspGridDBBandedColumn;
    cxGrid1spGridDBBandedTableView1Int: TspGridDBBandedColumn;
    cxGrid1spGridDBBandedTableView1lk: TspGridDBBandedColumn;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid1DBBandedTableView1Int: TcxGridDBBandedColumn;
    spUniQuery1: TspUniQuery;
    procedure cxGrid1spGridDBTableView1strGetPropertiesForEdit(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AProperties: TcxCustomEditProperties);
    procedure cxGrid1spGridDBTableView1strGetProperties(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AProperties: TcxCustomEditProperties);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure cxGrid1spGridDBTableView2IntPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

USES spClasses;

{$R *.dfm}

procedure TForm4.Button1Click(Sender: TObject);
begin
//  VirtualQuery1.Close;
//  VirtualQuery1.SQL.Text := 'select count(*) as cnt from ClientDataSet1';
//  VirtualQuery1.Open;
//  ShowMessage(VirtualQuery1.Fields[0].AsString);
  ClientDataSet1['dt'] := null;
end;

procedure TForm4.cxGrid1spGridDBTableView1strGetProperties(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AProperties: TcxCustomEditProperties);
begin
  Caption := '1'
end;

procedure TForm4.cxGrid1spGridDBTableView1strGetPropertiesForEdit(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AProperties: TcxCustomEditProperties);
begin
  Caption := '2'
end;

procedure TForm4.cxGrid1spGridDBTableView2IntPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
//  cxGrid1spGridDBTableView2Int.Properties.
  ErrorText := '123';
end;

procedure TForm4.FormCreate(Sender: TObject);
begin
//  cxGrid1spGridDBTableView1str.RegisterValidateItem(TspValidateItem.Construct(
//  function (ADisplayValue: TcxEditValue; AEdit: TcxCustomEdit; AEditingItem: TcxCustomGridTableItem): TspValidateResult
//  begin
//    Result.Error := VarToStr(ADisplayValue).Length mod 2 = 1;
//    if Result.Error then begin
//      Result.ErrorText := '长度不能为奇数';
////      Result.DisplayValue := '';
//    end;
//  end));
  ClientDataSet2.Append;
  ClientDataSet2['int'] := 1;
  ClientDataSet2['str'] := 'A';
  ClientDataSet2.Post;
  ClientDataSet2.Append;
  ClientDataSet2['int'] := 2;
  ClientDataSet2['str'] := 'B';
  ClientDataSet2.Post;
end;

end.
