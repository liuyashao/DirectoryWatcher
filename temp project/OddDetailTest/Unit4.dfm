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
  PixelsPerInch = 96
  TextHeight = 14
  object cxGrid1: TcxGrid
    Left = 112
    Top = 32
    Width = 313
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
        OnGetProperties = cxGrid1spGridDBTableView1strGetProperties
        OnGetPropertiesForEdit = cxGrid1spGridDBTableView1strGetPropertiesForEdit
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1spGridDBTableView1
    end
  end
  object ClientDataSet1: TClientDataSet
    PersistDataPacket.Data = {
      320000009619E0BD010000001800000001000000000003000000320003737472
      0100490000000100055749445448020002001E000000}
    Active = True
    Aggregates = <>
    Params = <>
    Left = 512
    Top = 48
    object ClientDataSet1str: TStringField
      FieldName = 'str'
      Size = 30
    end
  end
  object DataSource1: TDataSource
    DataSet = ClientDataSet1
    Left = 504
    Top = 136
  end
end
