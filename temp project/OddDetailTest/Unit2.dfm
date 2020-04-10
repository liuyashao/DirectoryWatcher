object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 430
  ClientWidth = 955
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = #23435#20307
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 16
  object cxGrid1: TcxGrid
    Left = 0
    Top = 56
    Width = 955
    Height = 374
    Align = alBottom
    TabOrder = 0
    LookAndFeel.Kind = lfOffice11
    LookAndFeel.NativeStyle = False
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
      object cxGrid1spGridDBTableView1OddStr: TspGridDBColumn
        DataBinding.FieldName = 'OddStr'
        Width = 377
      end
      object cxGrid1spGridDBTableView1Y: TspGridDBColumn
        DataBinding.FieldName = 'Y'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
      end
      object cxGrid1spGridDBTableView1Column1: TspGridDBColumn
        DataBinding.FieldName = 'M'
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1spGridDBTableView1
    end
  end
  object dxColorEdit1: TdxColorEdit
    Left = 72
    Top = 0
    Properties.OnChange = dxColorEdit1PropertiesChange
    TabOrder = 1
    Width = 145
  end
  object DataSource1: TDataSource
    DataSet = ClientDataSet1
    Left = 528
    Top = 16
  end
  object ClientDataSet1: TspClientDataSet
    PersistDataPacket.Data = {
      490000009619E0BD0100000018000000030000000000030000004900064F6464
      5374720100490000000100055749445448020002006400015908000400000000
      00014D08000400000000000000}
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'OddStr'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'Y'
        DataType = ftFloat
      end
      item
        Name = 'M'
        DataType = ftFloat
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Dictionary = <
      item
        FieldName = 'OddStr'
        FieldType = ftString
        Size = 100
        NumericPrecision = 0
        NumericScale = 0
        DisplayWidth = 100
        DisplayLabel = 'OddStr'
        IsAutoGen = False
      end
      item
        FieldName = 'Y'
        FieldType = ftFloat
        NumericPrecision = 15
        NumericScale = 0
        Alignment = taRightJustify
        DisplayWidth = 10
        DisplayLabel = 'Y'
        IsAutoGen = False
      end
      item
        FieldName = 'M'
        FieldType = ftFloat
        NumericPrecision = 15
        NumericScale = 0
        Alignment = taRightJustify
        DisplayWidth = 10
        DisplayLabel = 'M'
        IsAutoGen = False
      end>
    LinkedComponents = <>
    OnFieldChange = ClientDataSet1FieldChange
    Left = 632
    Top = 8
    object ClientDataSet1str: TspStringField
      DisplayWidth = 100
      FieldName = 'OddStr'
      Size = 100
    end
    object ClientDataSet1Y: TspFloatField
      DisplayWidth = 10
      FieldName = 'Y'
    end
    object ClientDataSet1M: TspFloatField
      DisplayWidth = 10
      FieldName = 'M'
    end
  end
  object cxStyleRepository1: TcxStyleRepository
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = []
    end
  end
end
