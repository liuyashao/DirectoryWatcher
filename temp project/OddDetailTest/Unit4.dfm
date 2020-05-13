object Form4: TForm4
  Left = 0
  Top = 0
  Caption = 'Form4'
  ClientHeight = 293
  ClientWidth = 873
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  ShowHint = True
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 14
  object spDicLabel1: TspDicLabel
    Left = 326
    Top = 218
    Width = 7
    Height = 13
    Caption = 'lk'
    FocusControl = cxDBLookupComboBox1
  end
  object spDicLabel2: TspDicLabel
    Left = 705
    Top = 218
    Width = 14
    Height = 13
    Caption = 'Int'
    FocusControl = DBEdit1
    Visible = False
    PositionOptions.Position = dpRightMiddle
  end
  object cxGrid1: TcxGrid
    Left = 8
    Top = 35
    Width = 569
    Height = 161
    TabOrder = 0
    object cxGrid1spGridDBTableView1: TspGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = DataSource1
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      DisplayTemplate = <>
      StateOptions.Font.Charset = DEFAULT_CHARSET
      StateOptions.Font.Color = clWindowText
      StateOptions.Font.Height = -11
      StateOptions.Font.Name = 'Tahoma'
      StateOptions.Font.Style = []
      object cxGrid1spGridDBTableView1str: TspGridDBColumn
        DataBinding.FieldName = 'str'
        PropertiesClassName = 'TcxTextEditProperties'
        OnGetProperties = cxGrid1spGridDBTableView1strGetProperties
        OnGetPropertiesForEdit = cxGrid1spGridDBTableView1strGetPropertiesForEdit
        CommonValidatations = [cvNotNull, cvNotEmptyStr]
      end
      object cxGrid1spGridDBTableView1dt: TspGridDBColumn
        DataBinding.FieldName = 'dt'
        CommonValidatations = [cvNotNull]
      end
      object cxGrid1spGridDBTableView1float: TspGridDBColumn
        DataBinding.FieldName = 'float'
        CommonValidatations = [cvNotNull, cvLessThanZero]
      end
      object cxGrid1spGridDBTableView1Int: TspGridDBColumn
        DataBinding.FieldName = 'Int'
        CommonValidatations = [cvNotNull]
      end
      object cxGrid1spGridDBTableView1lk: TspGridDBColumn
        DataBinding.FieldName = 'lk'
        CommonValidatations = [cvNotNull]
      end
    end
    object cxGrid1spGridDBTableView2: TspGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      OnCellClick = cxGrid1spGridDBTableView2CellClick
      OnCellDblClick = cxGrid1spGridDBTableView2CellDblClick
      DataController.DataSource = DataSource1
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      DisplayTemplate = <>
      StateOptions.Font.Charset = DEFAULT_CHARSET
      StateOptions.Font.Color = clWindowText
      StateOptions.Font.Height = -11
      StateOptions.Font.Name = 'Tahoma'
      StateOptions.Font.Style = []
      object cxGrid1spGridDBTableView2str: TspGridDBColumn
        DataBinding.FieldName = 'str'
      end
      object cxGrid1spGridDBTableView2dt: TspGridDBColumn
        DataBinding.FieldName = 'dt'
        Visible = False
      end
      object cxGrid1spGridDBTableView2float: TspGridDBColumn
        DataBinding.FieldName = 'float'
        Visible = False
      end
      object cxGrid1spGridDBTableView2Int: TspGridDBColumn
        DataBinding.FieldName = 'Int'
      end
      object cxGrid1spGridDBTableView2lk: TspGridDBColumn
        DataBinding.FieldName = 'lk'
        CommonValidatations = [cvNotNull]
      end
    end
    object cxGrid1spGridDBBandedTableView1: TspGridDBBandedTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = DataSource1
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.ValidateDataSetConstraint = False
      Bands = <
        item
        end>
      DisplayTemplate.Items = <>
      DisplayTemplate.Bands = <>
      StateOptions.Font.Charset = DEFAULT_CHARSET
      StateOptions.Font.Color = clWindowText
      StateOptions.Font.Height = -11
      StateOptions.Font.Name = 'Tahoma'
      StateOptions.Font.Style = []
      object cxGrid1spGridDBBandedTableView1str: TspGridDBBandedColumn
        DataBinding.FieldName = 'str'
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxGrid1spGridDBBandedTableView1dt: TspGridDBBandedColumn
        DataBinding.FieldName = 'dt'
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cxGrid1spGridDBBandedTableView1float: TspGridDBBandedColumn
        DataBinding.FieldName = 'float'
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object cxGrid1spGridDBBandedTableView1Int: TspGridDBBandedColumn
        DataBinding.FieldName = 'Int'
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
        CommonValidatations = [cvNotNull]
      end
      object cxGrid1spGridDBBandedTableView1lk: TspGridDBBandedColumn
        DataBinding.FieldName = 'lk'
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
        CommonValidatations = [cvNotNull]
      end
    end
    object cxGrid1DBBandedTableView1: TcxGridDBBandedTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = DataSource1
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      Bands = <
        item
        end>
      object cxGrid1DBBandedTableView1Int: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Int'
        PropertiesClassName = 'TcxTextEditProperties'
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1spGridDBTableView2
    end
  end
  object Button1: TButton
    Left = 720
    Top = 35
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 1
    OnClick = Button1Click
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 202
    Width = 161
    Height = 58
    DataSource = DataSource2
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object cxDBLookupComboBox1: TcxDBLookupComboBox
    Left = 336
    Top = 215
    DataBinding.DataField = 'lk'
    DataBinding.DataSource = DataSource1
    Properties.KeyFieldNames = 'Int'
    Properties.ListColumns = <
      item
        FieldName = 'str'
      end>
    TabOrder = 3
    Width = 145
  end
  object DBEdit1: TDBEdit
    Left = 581
    Top = 215
    Width = 121
    Height = 21
    AutoSize = False
    DataField = 'Int'
    DataSource = DataSource1
    TabOrder = 4
    Visible = False
  end
  object DBNavigator1: TDBNavigator
    Left = 16
    Top = 4
    Width = 240
    Height = 25
    DataSource = DataSource1
    TabOrder = 5
  end
  object ClientDataSet1: TspClientDataSet
    PersistDataPacket.Data = {
      570000009619E0BD010000001800000004000000000003000000570003737472
      0100490004000100055749445448020002001E00026474080008000000000005
      666C6F6174080004000000000003496E7404000100000000000000}
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'str'
        Attributes = [faRequired]
        DataType = ftString
        Size = 30
      end
      item
        Name = 'dt'
        DataType = ftDateTime
      end
      item
        Name = 'float'
        DataType = ftFloat
      end
      item
        Name = 'Int'
        DataType = ftInteger
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Dictionary = <
      item
        FieldName = 'str'
        FieldType = ftString
        Size = 30
        NumericPrecision = 0
        NumericScale = 0
        IsRequest = True
        DisplayWidth = 30
        DisplayLabel = 'str'
        IsAutoGen = False
      end
      item
        FieldName = 'dt'
        FieldType = ftDateTime
        NumericPrecision = 0
        NumericScale = 0
        DisplayWidth = 18
        DisplayLabel = 'dt'
        IsAutoGen = False
      end
      item
        FieldName = 'float'
        FieldType = ftFloat
        NumericPrecision = 15
        NumericScale = 0
        Alignment = taRightJustify
        DisplayWidth = 10
        DisplayLabel = 'float'
        IsAutoGen = False
      end
      item
        FieldName = 'Int'
        FieldType = ftInteger
        NumericPrecision = 0
        NumericScale = 0
        Alignment = taRightJustify
        DisplayWidth = 10
        DisplayLabel = 'Int'
        IsAutoGen = False
      end
      item
        FieldName = 'lk'
        FieldType = ftString
        FieldKind = fkLookup
        Size = 20
        NumericPrecision = 0
        NumericScale = 0
        DisplayLabel = 'lk'
        LookupFieldInfo.KeyFields = 'Int'
        LookupFieldInfo.LookupKeyFields = 'Int'
        LookupFieldInfo.LookupResultField = 'Str'
        LookupFieldInfo.CacheEnabled = False
        IsAutoGen = False
      end>
    LinkedComponents = <>
    Left = 664
    Top = 56
    object ClientDataSet1str: TStringField
      DisplayWidth = 30
      FieldName = 'str'
      Required = True
      Size = 30
    end
    object ClientDataSet1dt: TDateTimeField
      DisplayWidth = 18
      FieldName = 'dt'
    end
    object ClientDataSet1float: TFloatField
      DisplayWidth = 10
      FieldName = 'float'
    end
    object ClientDataSet1Int: TIntegerField
      DisplayWidth = 10
      FieldName = 'Int'
    end
    object ClientDataSet1lk: TStringField
      DisplayWidth = 20
      FieldKind = fkLookup
      FieldName = 'lk'
      LookupDataSet = ClientDataSet2
      LookupKeyFields = 'Int'
      LookupResultField = 'str'
      KeyFields = 'Int'
      Lookup = True
    end
  end
  object DataSource1: TDataSource
    DataSet = ClientDataSet1
    Left = 656
    Top = 144
  end
  object VirtualQuery1: TVirtualQuery
    SourceDataSets = <
      item
        TableName = 'ClientDataSet1'
        DataSet = ClientDataSet1
      end>
    SQL.Strings = (
      'select count(*) as cnt from ClientDataSet1')
    Left = 752
    Top = 72
  end
  object DataSource2: TDataSource
    DataSet = VirtualQuery1
    Left = 496
    Top = 243
  end
  object DataSource3: TDataSource
    DataSet = ClientDataSet2
    Left = 760
    Top = 224
  end
  object ClientDataSet2: TClientDataSet
    PersistDataPacket.Data = {
      4A0000009619E0BD0100000018000000020000000000030000004A0003496E74
      0100490000000100055749445448020002001400037374720100490000000100
      0557494454480200020014000000}
    Active = True
    Aggregates = <>
    Params = <>
    Left = 752
    Top = 152
    object ClientDataSet2Int: TStringField
      FieldName = 'Int'
    end
    object ClientDataSet2str: TStringField
      FieldName = 'str'
    end
  end
  object dxSkinController1: TdxSkinController
    NativeStyle = False
    SkinName = 'Coffee'
    Left = 608
    Top = 24
  end
  object spUniQuery1: TspUniQuery
    Left = 224
    Top = 224
  end
end
