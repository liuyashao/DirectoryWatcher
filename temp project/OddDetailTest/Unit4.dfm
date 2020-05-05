object Form4: TForm4
  Left = 0
  Top = 0
  Caption = 'Form4'
  ClientHeight = 293
  ClientWidth = 697
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 14
  object cxGrid1: TcxGrid
    Left = 8
    Top = 24
    Width = 417
    Height = 200
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
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1spGridDBTableView1
    end
  end
  object cxDBExtLookupComboBox1: TcxDBExtLookupComboBox
    Left = 384
    Top = 120
    TabOrder = 1
    Width = 145
  end
  object ClientDataSet1: TClientDataSet
    PersistDataPacket.Data = {
      4B0000009619E0BD0100000018000000030000000000030000004B0003737472
      0100490000000100055749445448020002001E00026474080008000000000005
      666C6F617408000400000000000000}
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
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 512
    Top = 48
    object ClientDataSet1str: TStringField
      FieldName = 'str'
      Size = 30
    end
    object ClientDataSet1dt: TDateTimeField
      FieldName = 'dt'
    end
    object ClientDataSet1float: TFloatField
      FieldName = 'float'
    end
  end
  object DataSource1: TDataSource
    DataSet = ClientDataSet1
    Left = 504
    Top = 136
  end
end
