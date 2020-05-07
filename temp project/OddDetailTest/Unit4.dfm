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
    Left = 320
    Top = 218
    Width = 10
    Height = 13
    Caption = 'lk'
    FocusControl = cxDBLookupComboBox1
  end
  object spDicLabel2: TspDicLabel
    Left = 562
    Top = 218
    Width = 17
    Height = 13
    Caption = 'Int'
    FocusControl = DBEdit1
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
        Properties.OnValidate = cxGrid1spGridDBTableView1strPropertiesValidate
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
      end
      object cxGrid1spGridDBTableView1lk: TspGridDBColumn
        DataBinding.FieldName = 'lk'
      end
    end
    object cxGrid1spGridDBTableView2: TspGridDBTableView
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
      object cxGrid1spGridDBTableView2str: TspGridDBColumn
        DataBinding.FieldName = 'str'
      end
      object cxGrid1spGridDBTableView2dt: TspGridDBColumn
        DataBinding.FieldName = 'dt'
      end
      object cxGrid1spGridDBTableView2float: TspGridDBColumn
        DataBinding.FieldName = 'float'
      end
      object cxGrid1spGridDBTableView2Int: TspGridDBColumn
        DataBinding.FieldName = 'Int'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ValidationOptions = [evoShowErrorIcon, evoAllowLoseFocus]
        Properties.OnValidate = cxGrid1spGridDBTableView2IntPropertiesValidate
        OnValidateDrawValue = cxGrid1spGridDBTableView2IntValidateDrawValue
        CommonValidatations = [cvNotNull]
      end
      object cxGrid1spGridDBTableView2lk: TspGridDBColumn
        DataBinding.FieldName = 'lk'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ValidationOptions = [evoRaiseException, evoShowErrorIcon, evoAllowLoseFocus]
        CommonValidatations = [cvNotNull]
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1spGridDBTableView2
    end
  end
  object Button1: TButton
    Left = 720
    Top = 32
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
    Left = 584
    Top = 215
    Width = 121
    Height = 21
    DataField = 'Int'
    DataSource = DataSource1
    TabOrder = 4
  end
  object DBNavigator1: TDBNavigator
    Left = 16
    Top = 4
    Width = 240
    Height = 25
    DataSource = DataSource1
    TabOrder = 5
  end
  object cxImage1: TcxImage
    Left = 824
    Top = 160
    Picture.Data = {
      07544269746D617076020000424D760200000000000036000000280000000C00
      00000C0000000100200000000000400200000000000000000000000000000000
      00001840768E1543B4EF061DAEFF0618AAFF0714A7FF0711A4FF070FA2FF070C
      9FFF060A9DFF06089CFF0529A2EF032C6C8E1950BDEF4CB6EDFF57DFFFFF4ADA
      FFFF3ED6FFFF32D3FFFF28CEFFFF1CCBFFFF14C7FFFF0BC3FFFF0593E7FF062A
      A4EF1B59C3EF56BCEFFF64E4FFFF57DFFFFF4ADCFFFF071CAEFF0717ABFF28CF
      FFFF1DCBFFFF14C7FFFF0B96E8FF072BA7EF214E7E8E2D78DAFF71E8FFFF64E5
      FFFF58E0FFFF4ADCFFFF3FD7FFFF33D3FFFF29D0FFFF1DCCFFFF0C4DC3FF0530
      6F8E000000002268C9EB5CBCF0FF71E9FFFF64E5FFFF062BBBFF0725B6FF3FD8
      FFFF34D4FFFF1F9BE8FF0C38ADEB00000000000000001D3E5A612473DCFF7EEC
      FFFF72E9FFFF0635C1FF062DBCFF4BDDFFFF40D9FFFF1143C2FF092950610000
      000000000000000000002A7CD2EB67C5F3FF7FEDFFFF053FC8FF0638C4FF59E2
      FFFF38ABECFF1345B6EB0000000000000000000000000000000021435C612D86
      E6FF8CF0FFFF044AD0FF0541CAFF65E7FFFF1857CDFF0F2F5361000000000000
      0000000000000000000000000000358CD8EB73CCF6FF8CF0FFFF7FEDFFFF53BB
      F1FF185AC2EB0000000000000000000000000000000000000000000000002648
      5D613999ECFF99F2FFFF8DF0FFFF2071DDFF1537576100000000000000000000
      000000000000000000000000000000000000419DDFEB7FD5F9FF74CFF7FF2678
      D2EB000000000000000000000000000000000000000000000000000000000000
      0000284757592C99EFFF2289EAFF1D3D54590000000000000000000000000000
      0000}
    Properties.GraphicClassName = 'TMetafile'
    Properties.GraphicTransparency = gtTransparent
    Properties.ShowFocusRect = False
    Style.BorderStyle = ebsNone
    Style.HotTrack = False
    TabOrder = 6
    Transparent = True
    Height = 49
    Width = 41
  end
  object ClientDataSet1: TspClientDataSet
    PersistDataPacket.Data = {
      570000009619E0BD010000001800000004000000000003000000570003737472
      0100490000000100055749445448020002001E00026474080008000000000005
      666C6F6174080004000000000003496E7404000100000000000000}
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'str'
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
        IsRequest = True
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
        IsRequest = True
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
      Required = True
    end
    object ClientDataSet1lk: TStringField
      DisplayWidth = 20
      FieldKind = fkLookup
      FieldName = 'lk'
      LookupDataSet = ClientDataSet2
      LookupKeyFields = 'Int'
      LookupResultField = 'str'
      KeyFields = 'Int'
      Required = True
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
end
