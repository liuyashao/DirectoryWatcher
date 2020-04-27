unit uFrmDic;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, dxBar, cxClasses, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  spGridDBTableView, cxGridLevel, cxGrid, Datasnap.DBClient, cxContainer,
  cxMemo, cxDBEdit, cxCheckBox, cxMaskEdit, cxSpinEdit, cxTextEdit,
  Vcl.StdCtrls, Vcl.ExtCtrls, spclientdataset, Vcl.ActnList, dxSkinsCore,
  cxCustomData, cxFilter, cxData,
  cxDataControllerConditionalFormattingRulesManagerDialog, cxDropDownEdit,
  dxBarBuiltInMenu, Vcl.StdActns, System.Actions, cxPC;

type
  TFrmDic = class(TForm)
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarLargeButton1: TdxBarLargeButton;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1spGridDBTableView1: TspGridDBTableView;
    dxBarLargeButton2: TdxBarLargeButton;
    dxBarLargeButton3: TdxBarLargeButton;
    cdsDic: TClientDataSet;
    dsDic: TDataSource;
    cdsDicFieldName: TStringField;
    cdsDicFieldType: TStringField;
    cdsDicFieldKind: TStringField;
    cdsDicCharLength: TIntegerField;
    cdsDicNumericPrecision: TIntegerField;
    cdsDicNumericScale: TIntegerField;
    cdsDicIsNullable: TBooleanField;
    cdsDicIsKey: TBooleanField;
    cdsDicIsRequest: TBooleanField;
    cdsDicAlignment: TStringField;
    cdsDicDisplayWidth: TIntegerField;
    cdsDicDisplayLabel: TStringField;
    cdsDicDisplayFormat: TStringField;
    cdsDicEditMask: TStringField;
    cdsDicVisible: TBooleanField;
    cdsDicCustomConstraint: TStringField;
    cdsDicConstraintErrMsg: TStringField;
    cdsDicDefaultValue: TStringField;
    cdsDicDLKeyFields: TStringField;
    cdsDicDLLookupDataSetSQL: TMemoField;
    cdsDicDLLookupKeyFields: TStringField;
    cdsDicDLLookupResultField: TStringField;
    cxGrid1spGridDBTableView1FieldName: TspGridDBColumn;
    cxGrid1spGridDBTableView1FieldType: TspGridDBColumn;
    cxGrid1spGridDBTableView1FieldKind: TspGridDBColumn;
    cxGrid1spGridDBTableView1Size: TspGridDBColumn;
    cxGrid1spGridDBTableView1NumericPrecision: TspGridDBColumn;
    cxGrid1spGridDBTableView1NumericScale: TspGridDBColumn;
    cxGrid1spGridDBTableView1IsNullable: TspGridDBColumn;
    cxGrid1spGridDBTableView1IsKey: TspGridDBColumn;
    cxGrid1spGridDBTableView1IsRequest: TspGridDBColumn;
    cxGrid1spGridDBTableView1Alignment: TspGridDBColumn;
    cxGrid1spGridDBTableView1DisplayWidth: TspGridDBColumn;
    cxGrid1spGridDBTableView1DisplayLabel: TspGridDBColumn;
    cxGrid1spGridDBTableView1DisplayFormat: TspGridDBColumn;
    cxGrid1spGridDBTableView1EditMask: TspGridDBColumn;
    cxGrid1spGridDBTableView1Hint: TspGridDBColumn;
    cxGrid1spGridDBTableView1Visible: TspGridDBColumn;
    cxGrid1spGridDBTableView1CustomConstraint: TspGridDBColumn;
    cxGrid1spGridDBTableView1ConstraintErrMsg: TspGridDBColumn;
    cxGrid1spGridDBTableView1DefaultValue: TspGridDBColumn;
    cxGrid1spGridDBTableView1DLKeyFields: TspGridDBColumn;
    cxGrid1spGridDBTableView1DLLookupDataSetSQL: TspGridDBColumn;
    cxGrid1spGridDBTableView1DLLookupKeyFields: TspGridDBColumn;
    Panel1: TPanel;
    Label1: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    Label2: TLabel;
    cxDBTextEditFieldType: TcxDBComboBox;
    Label3: TLabel;
    cxDBTextEditFieldKind: TcxDBComboBox;
    Label4: TLabel;
    cxDBSpinEdit1: TcxDBSpinEdit;
    Label5: TLabel;
    cxDBSpinEdit2: TcxDBSpinEdit;
    Label6: TLabel;
    cxDBSpinEdit3: TcxDBSpinEdit;
    cxDBCheckBox1: TcxDBCheckBox;
    cxDBCheckBox2: TcxDBCheckBox;
    cxDBCheckBox3: TcxDBCheckBox;
    Label7: TLabel;
    cxDBTextEditAlignment: TcxDBComboBox;
    Label8: TLabel;
    cxDBSpinEdit4: TcxDBSpinEdit;
    Label9: TLabel;
    cxDBTextEdit5: TcxDBTextEdit;
    Label10: TLabel;
    cxDBTextEdit6: TcxDBTextEdit;
    Label11: TLabel;
    cxDBTextEdit7: TcxDBTextEdit;
    Label12: TLabel;
    cxDBCheckBox4: TcxDBCheckBox;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    cxDBTextEdit13: TcxDBTextEdit;
    cxDBTextEdit14: TcxDBTextEdit;
    cxGrid1spGridDBTableView1DLLookupResultField: TspGridDBColumn;
    ActionList1: TActionList;
    actSave: TAction;
    SaveDialog1: TSaveDialog;
    actEdit: TAction;
    actImport: TAction;
    cxDBMemo1: TcxDBMemo;
    cdsDicRemark: TMemoField;
    cxDBTextEditDefaultValue: TcxDBComboBox;
    actCancel: TAction;
    dxBarLargeButton4: TdxBarLargeButton;
    cdsDicCharCase: TStringField;
    Label20: TLabel;
    cxDBTextEditCharCase: TcxDBComboBox;
    cxGrid1spGridDBTableView1CharCase: TspGridDBColumn;
    cdsDicIsTrim: TBooleanField;
    cxDBCheckBox6: TcxDBCheckBox;
    cxGrid1spGridDBTableView1IsTrim: TspGridDBColumn;
    cdsDicLOSql: TMemoField;
    cdsDicLOItems: TMemoField;
    cdsDicLOListStyle: TStringField;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    Panel2: TPanel;
    cxDBMemo3: TcxDBMemo;
    cxDBTextEdit10: TcxDBTextEdit;
    cxDBTextEdit11: TcxDBTextEdit;
    cxDBTextEdit12: TcxDBTextEdit;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Panel3: TPanel;
    cxDBTextEditLOListStyle: TcxDBComboBox;
    cxDBMemo2: TcxDBMemo;
    cxDBMemo4: TcxDBMemo;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    WindowClose1: TWindowClose;
    btnClose: TdxBarLargeButton;
    cdsDicID: TIntegerField;
    cxDBCheckBox7: TcxDBCheckBox;
    cdsDicNotInUpdate: TBooleanField;
    cxGrid1spGridDBTableView1NotInUpdate: TspGridDBColumn;
    Label24: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    cdsDicLinkedPYField: TStringField;
    cxDBCheckBox5: TcxDBCheckBox;
    cdsDicIsAutoGen: TBooleanField;
    Label25: TLabel;
    cxDBTextEdit3: TcxDBTextEdit;
    cdsDicHint: TStringField;
    cdsDicDLCacheEnabled: TBooleanField;
    cxDBCheckBox8: TcxDBCheckBox;
    procedure cdsDicCalcFields(DataSet: TDataSet);
    procedure cdsDicAfterInsert(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actSaveExecute(Sender: TObject);
    procedure actSaveUpdate(Sender: TObject);
    procedure actEditExecute(Sender: TObject);
    procedure actEditUpdate(Sender: TObject);
    procedure actImportUpdate(Sender: TObject);
    procedure actImportExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actCancelUpdate(Sender: TObject);
    procedure actCancelExecute(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure cdsDicAfterDelete(DataSet: TDataSet);
    procedure cxGrid1spGridDBTableView1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    FFileName: string;
    procedure SetFileName(const Value: string);
    procedure MoveDown;
    procedure MoveUp;
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); overload; override;
    constructor Create(AOwner: TComponent; const FileName: string); overload; virtual;
    property FileName: string read FFileName write SetFileName;
    class procedure FillDataByDictionaryItem(DataSet: TDataSet;
      DictionaryItem: TspDictionaryItem);
  end;

var
  FrmDic: TFrmDic;

implementation

uses
  typinfo, uDmMain, AES, uAESKey, spFunc;

{$R *.dfm}
constructor TFrmDic.Create(AOwner: TComponent);
begin
  inherited;
end;

constructor TFrmDic.Create(AOwner: TComponent; const FileName: string);
var
  cds: TspClientDataSet;
  I: Integer;
  fs: TFileStream;
  ms: TMemoryStream;
begin
  Create(AOwner);
  dxBarManager1.LargeImages := DmMain.ImageList1;
  Self.FileName := FileName;
  cdsDic.DisableControls;
  cds := TspClientDataSet.Create(nil);
  try
    fs := TFileStream.Create(FileName, fmOpenRead);
    ms := DecryptStream(fs, gAESKey);
    try
      ms.Position := 0;
      cds.Dictionary.LoadFromStream(ms);
//      cds.Dictionary.LoadFromStream(fs);
    finally
      FreeAndNil(fs);
      FreeAndNil(ms);
    end;
    for I := 0 to cds.Dictionary.Count - 1 do begin
      cdsDic.Append;
      cdsDic['ID'] := I + 1;
      FillDataByDictionaryItem(cdsDic, cds.Dictionary[I]);
      cdsDic.Post;
    end;
    if cdsDic.ChangeCount > 0 then cdsDic.MergeChangeLog;
    cdsDic.First;
    cdsDic.ReadOnly := True;
  finally
    cds.Free;
    cdsDic.EnableControls;
  end;
end;

procedure TFrmDic.cxGrid1spGridDBTableView1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Shift = [ssCtrl]) and (Key in [VK_UP, VK_DOWN]) then
  begin
    if Key  = VK_UP then
      MoveUp else
    if Key  = VK_DOWN then
      MoveDown;
    Key := 0;
  end;
end;

procedure TFrmDic.MoveUp;
var
  ID, ToID: Integer;
  bm: TBookmark;
begin
  if (cdsDic.RecNo = 1) or cdsDic.ReadOnly or cdsDic.IsEmpty then Exit;
  ID := cdsDic.FieldByName('ID').AsInteger;
  ToID := ID - 1;
  cdsDic.DisableControls;
  cdsDic.Locate('ID', ToID, []);
  bm := cdsDic.GetBookmark;
  cdsDic.Locate('ID', ID, []);
  cdsDic.Edit;
  cdsDic.FieldByName('ID').AsInteger := ToID;
  cdsDic.Post;
  cdsDic.GotoBookmark(bm);
  cdsDic.Edit;
  cdsDic.FieldByName('ID').AsInteger := ID;
  cdsDic.Post;
  cdsDic.Locate('ID', ToID, []);
  cdsDic.EnableControls;
end;

procedure TFrmDic.MoveDown;
var
  ID, ToID: Integer;
  bm: TBookmark;
begin
  if (cdsDic.RecNo = cdsDic.RecordCount) or cdsDic.ReadOnly or cdsDic.IsEmpty then Exit;
  ID := cdsDic.FieldByName('ID').AsInteger;
  ToID := ID + 1;
  cdsDic.DisableControls;
  cdsDic.Locate('ID', ToID, []);
  bm := cdsDic.GetBookmark;
  cdsDic.Locate('ID', ID, []);
  cdsDic.Edit;
  cdsDic.FieldByName('ID').AsInteger := ToID;
  cdsDic.Post;
  cdsDic.GotoBookmark(bm);
  cdsDic.Edit;
  cdsDic.FieldByName('ID').AsInteger := ID;
  cdsDic.Post;
  cdsDic.Locate('ID', ToID, []);
  cdsDic.EnableControls;
end;

procedure TFrmDic.FormCreate(Sender: TObject);
var
  I: Integer;
begin
  dxBarManager1.ImageOptions.LargeImages := DmMain.ImageList1;
  for I := Ord(Low(TFieldType)) to Ord(High(TFieldType)) do
    cxDBTextEditFieldType.Properties.Items.Add( GetEnumName(TypeInfo(TFieldType), I) );
  TcxComboBoxProperties(cxGrid1spGridDBTableView1FieldType.Properties).Items.Assign(cxDBTextEditFieldType.Properties.Items);

  for I := Ord(Low(TFieldKind)) to Ord(High(TFieldKind)) do
//    if I <> Ord(fkInternalCalc) then
      cxDBTextEditFieldKind.Properties.Items.Add( GetEnumName(TypeInfo(TFieldKind), I) );
  TcxComboBoxProperties(cxGrid1spGridDBTableView1FieldKind.Properties).Items.Assign(cxDBTextEditFieldKind.Properties.Items);

  for I := Ord(Low(TAlignment)) to Ord(High(TAlignment)) do
    cxDBTextEditAlignment.Properties.Items.Add( GetEnumName(TypeInfo(TAlignment), I) );
  TcxComboBoxProperties(cxGrid1spGridDBTableView1Alignment.Properties).Items.Assign(cxDBTextEditAlignment.Properties.Items);

  for I := Ord(Low(TEditCharCase)) to Ord(High(TEditCharCase)) do
    cxDBTextEditCharCase.Properties.Items.Add( GetEnumName(TypeInfo(TEditCharCase), I) );
  TcxComboBoxProperties(cxGrid1spGridDBTableView1CharCase.Properties).Items.Assign(cxDBTextEditCharCase.Properties.Items);

  for I := Ord(Low(TcxEditDropDownListStyle)) to Ord(High(TcxEditDropDownListStyle)) do
    cxDBTextEditLOListStyle.Properties.Items.Add( GetEnumName(TypeInfo(TcxEditDropDownListStyle), I) );

  cxDBTextEditDefaultValue.Properties.Items.Add('@Now');
  cxDBTextEditDefaultValue.Properties.Items.Add('@Date');
  cxDBTextEditDefaultValue.Properties.Items.Add('@Time');
  cxDBTextEditDefaultValue.Properties.Items.Add('@UserNo');
  cxDBTextEditDefaultValue.Properties.Items.Add('@UserName');
  cxDBTextEditDefaultValue.Properties.Items.Add('@TempBillNo');
  TcxComboBoxProperties(cxGrid1spGridDBTableView1DefaultValue.Properties).Items.Assign(cxDBTextEditDefaultValue.Properties.Items);
end;

procedure TFrmDic.actSaveExecute(Sender: TObject);
var
  cds: TspClientDataSet;
  ms1: TMemoryStream;
  ms2: TMemoryStream;
  bm: TBookmark;
begin
  if cdsDic.State in dsEditModes then cdsDic.Post;
//  if cdsDic.ChangeCount > 0 then begin
    cds := TspClientDataSet.Create(nil);
    cdsDic.DisableControls;
    bm := cdsDic.GetBookmark;
    try
      cdsDic.First;
      while not cdsDic.Eof do begin
        with cds.Dictionary.Add do begin
          FieldName := cdsDic.FieldByName('FieldName').AsString;
          FieldType := TFieldType(GetEnumValue(TypeInfo(TFieldType), cdsDic.FieldByName('FieldType').AsString));
          FieldKind := TFieldKind(GetEnumValue(TypeInfo(TFieldKind), cdsDic.FieldByName('FieldKind').AsString));
          CharCase := TEditCharCase(GetEnumValue(TypeInfo(TEditCharCase), cdsDic.FieldByName('CharCase').AsString));
          Size := cdsDic.FieldByName('Size').AsInteger;
          NumericPrecision := cdsDic.FieldByName('NumericPrecision').AsInteger;
          NumericScale := cdsDic.FieldByName('NumericScale').AsInteger;
          IsNullable := cdsDic.FieldByName('IsNullable').AsBoolean;
          IsKey := cdsDic.FieldByName('IsKey').AsBoolean;
          NotInUpdate := cdsDic.FieldByName('NotInUpdate').AsBoolean;
          IsRequest := cdsDic.FieldByName('IsRequest').AsBoolean;
          Alignment := TAlignment(GetEnumValue(TypeInfo(TAlignment), cdsDic.FieldByName('Alignment').AsString));
          DisplayWidth := cdsDic.FieldByName('DisplayWidth').AsInteger;
          DisplayLabel := cdsDic.FieldByName('DisplayLabel').AsString;
          DisplayFormat := cdsDic.FieldByName('DisplayFormat').AsString;
          EditMask := cdsDic.FieldByName('EditMask').AsString;
          Remark := cdsDic.FieldByName('Remark').AsString;
          Visible := cdsDic.FieldByName('Visible').AsBoolean;
          IsAutoGen := cdsDic.FieldByName('IsAutoGen').AsBoolean;
          CustomConstraint := cdsDic.FieldByName('CustomConstraint').AsString;
          ConstraintErrMsg := cdsDic.FieldByName('ConstraintErrMsg').AsString;
          PYCodeLinkedFieldName := cdsDic.FieldByName('LinkedPYField').AsString;
		  PYWBExcludCodes := [];
          if cdsDic.FieldByName('DefaultValue').AsString <> '' then
            DefaultValue := cdsDic.FieldByName('DefaultValue').AsString
          else
            DefaultValue := null;
//          ReadOnly := cdsDic.FieldByName('ReadOnly').AsBoolean;
          IsTrim := cdsDic.FieldByName('IsTrim').AsBoolean;
          Hint := cdsDic.FieldByName('Hint').AsString;
          LookupFieldInfo.KeyFields := cdsDic.FieldByName('DLKeyFields').AsString;
          LookupFieldInfo.LookupDataSetSQL := cdsDic.FieldByName('DLLookupDataSetSQL').AsString;
          LookupFieldInfo.LookupKeyFields := cdsDic.FieldByName('DLLookupKeyFields').AsString;
          LookupFieldInfo.LookupResultField := cdsDic.FieldByName('DLLookupResultField').AsString;
          LookupFieldInfo.CacheEnabled := cdsDic.FieldByName('DLCacheEnabled').AsBoolean;
          ListOptions.SQL.Text := cdsDic.FieldByName('LOSql').AsString;
          ListOptions.Items.Text := cdsDic.FieldByName('LOItems').AsString;
          ListOptions.ListStyle := TcxEditDropDownListStyle(GetEnumValue(TypeInfo(TcxEditDropDownListStyle), cdsDic.FieldByName('LOListStyle').AsString));
        end;
        cdsDic.Next;
      end;
      ms1 := TMemoryStream.Create;
      ms2 := TMemoryStream.Create;
      try
        cds.Dictionary.SaveToStream(ms1);
        ms1.Position := 0;
        EncryptStream(ms1, ms2, gAESKey);
        if FileName = '' then begin
          if SaveDialog1.Execute then begin
            ms2.SaveToFile(SaveDialog1.FileName);
//            ms1.SaveToFile(SaveDialog1.FileName);
            FileName := SaveDialog1.FileName
          end
          else Exit;
        end
        else
//          ms1.SaveToFile(FileName);
          ms2.SaveToFile(FileName);
      finally
        FreeAndNil(ms1);
        FreeAndNil(ms2);
      end;
      cdsDic.MergeChangeLog;
    finally
      cdsDic.GotoBookmark(bm);
      cdsDic.EnableControls;
      FreeAndNil(cds);
    end;
//  end;
  cdsDic.ReadOnly := True;
end;

procedure TFrmDic.actEditUpdate(Sender: TObject);
begin
  actEdit.Enabled := cdsDic.ReadOnly
end;

procedure TFrmDic.actImportExecute(Sender: TObject);
begin
  DmMain.DoImport(cdsDic);
end;

procedure TFrmDic.actImportUpdate(Sender: TObject);
begin
  actImport.Enabled := not cdsDic.ReadOnly;
end;

procedure TFrmDic.actSaveUpdate(Sender: TObject);
begin
  actSave.Enabled := not cdsDic.ReadOnly;
end;

procedure TFrmDic.actCancelExecute(Sender: TObject);
begin
  if cdsDic.State in dsEditModes then cdsDic.Cancel;
  if cdsDic.ChangeCount > 0 then cdsDic.CancelUpdates;
  cdsDic.ReadOnly := True;
end;

procedure TFrmDic.actCancelUpdate(Sender: TObject);
begin
  actCancel.Enabled := not cdsDic.ReadOnly;
end;

procedure TFrmDic.actEditExecute(Sender: TObject);
begin
  cdsDic.ReadOnly := False;
end;

procedure TFrmDic.cdsDicAfterDelete(DataSet: TDataSet);
var
  ID: Integer;
begin
  DataSet.DisableControls;
  try
    DataSet.First;
    ID := 1;
    while not DataSet.Eof do
    begin
      DataSet.Edit;
      DataSet.FieldByName('ID').AsInteger := ID;
      DataSet.Post;
      DataSet.Next;
      Inc(ID);
    end;
  finally
    DataSet.EnableControls;
  end;
end;

procedure TFrmDic.cdsDicAfterInsert(DataSet: TDataSet);
var
  cds: TspClientDataSet;
  di: TspDictionaryItem;
begin
  cds := TspClientDataSet.Create(nil);
  di := cds.Dictionary.add;
  try
    FillDataByDictionaryItem(DataSet, di);
    DataSet['ID'] := DataSet.RecordCount;
  finally
    cds.Free;
  end;
end;

procedure TFrmDic.cdsDicCalcFields(DataSet: TDataSet);
begin
  if DataSet.RecNo > 0 then DataSet.FieldByName('idx').AsInteger := DataSet.RecNo;
end;

class procedure TFrmDic.FillDataByDictionaryItem(DataSet: TDataSet; DictionaryItem: TspDictionaryItem);
begin
  with DictionaryItem do begin
    DataSet['FieldName'] := FieldName;
    DataSet['FieldType'] := GetEnumName(TypeInfo(TFieldType), Ord(FieldType));
    DataSet['FieldKind'] := GetEnumName(TypeInfo(TFieldKind), Ord(FieldKind));
    DataSet['CharCase']  := GetEnumName(TypeInfo(TEditCharCase), Ord(CharCase));
    DataSet['Size'] := Size;
    DataSet['NumericPrecision'] := NumericPrecision;
    DataSet['NumericScale'] := NumericScale;
    DataSet['IsNullable'] := IsNullable;
    DataSet['IsKey'] := IsKey;
    DataSet['NotInUpdate'] := NotInUpdate;
    DataSet['IsRequest'] := IsRequest;
    DataSet['Alignment'] := GetEnumName(TypeInfo(TAlignment), Ord(Alignment));
    DataSet['DisplayWidth'] := DisplayWidth;
    DataSet['DisplayLabel'] := DisplayLabel;
    DataSet['DisplayFormat'] := DisplayFormat;
    DataSet['EditMask'] := EditMask;
    DataSet['Remark'] := Remark;
    DataSet['Visible'] := Visible;
    DataSet['CustomConstraint'] := CustomConstraint;
    DataSet['ConstraintErrMsg'] := ConstraintErrMsg;
    DataSet['LinkedPYField'] := PYCodeLinkedFieldName;
	PYWBExcludCodes;
    DataSet['DefaultValue'] := VarToStr(DefaultValue);
//    DataSet['ReadOnly'] := ReadOnly;
    DataSet['IsTrim'] := IsTrim;
    with LookupFieldInfo do begin
      DataSet['DLKeyFields'] := KeyFields;
      DataSet['DLLookupDataSetSQL'] := LookupDataSetSQL;
      DataSet['DLLookupKeyFields'] := LookupKeyFields;
      DataSet['DLLookupResultField'] := LookupResultField;
      DataSet['DLCacheEnabled'] := CacheEnabled;
    end;
    with ListOptions do begin
      DataSet['LOSql'] := SQL.Text;
      DataSet['LOItems'] := Items.Text;
      DataSet['LOListStyle'] := GetEnumName(TypeInfo(TcxEditDropDownListStyle), Ord(ListStyle));;
    end;
    DataSet['IsAutoGen'] := IsAutoGen;
    DataSet['Hint'] := Hint;
  end;
end;

procedure TFrmDic.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmDic.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if not cdsDic.ReadOnly then begin
     spFunc.ShowInformation('数据尚未保存，请保存或取消后再退出');
     CanClose := False;
   end;
end;

procedure TFrmDic.SetFileName(const Value: string);
begin
  FFileName := Value;
  Caption := ExtractFileName(Value);
end;

end.
