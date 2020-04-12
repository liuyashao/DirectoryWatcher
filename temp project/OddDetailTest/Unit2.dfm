object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 492
  ClientWidth = 1019
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
    Top = 35
    Width = 1019
    Height = 457
    Align = alClient
    TabOrder = 0
    ExplicitTop = 72
    ExplicitHeight = 432
    object cxGrid1spGridDBTableView1: TspGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = DataSource1
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '0.00'
          Kind = skSum
          Column = cxGrid1spGridDBTableView1YQty
        end
        item
          Format = '0.00'
          Kind = skSum
          Column = cxGrid1spGridDBTableView1MQty
        end
        item
          Format = '0.00'
          Kind = skSum
          Column = cxGrid1spGridDBTableView1Amount
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsView.Footer = True
      Styles.Content = cxStyle1
      DisplayTemplate = <>
      StateOptions.Font.Charset = DEFAULT_CHARSET
      StateOptions.Font.Color = clWindowText
      StateOptions.Font.Height = -11
      StateOptions.Font.Name = 'Tahoma'
      StateOptions.Font.Style = []
      OnEditValueChanging = cxGrid1spGridDBTableView1EditValueChanging
      object cxGrid1spGridDBTableView1Unit: TspGridDBColumn
        DataBinding.FieldName = 'Unit'
        PropertiesClassName = 'TcxComboBoxProperties'
        Properties.DropDownListStyle = lsEditFixedList
        Properties.ImmediatePost = True
        Properties.Items.Strings = (
          #30721
          #31859)
      end
      object cxGrid1spGridDBTableView1YOdd: TspGridDBColumn
        DataBinding.FieldName = 'YOdd'
        PropertiesClassName = 'TcxOddTextEditProperties'
        Width = 161
      end
      object cxGrid1spGridDBTableView1MOdd: TspGridDBColumn
        DataBinding.FieldName = 'MOdd'
        PropertiesClassName = 'TcxOddTextEditProperties'
        Width = 150
      end
      object cxGrid1spGridDBTableView1SumOdd: TspGridDBColumn
        DataBinding.FieldName = 'SumOdd'
        PropertiesClassName = 'TcxOddTextEditProperties'
        Properties.ReadOnly = True
        Options.Editing = False
        Options.Focusing = False
        Width = 215
      end
      object cxGrid1spGridDBTableView1YQty: TspGridDBColumn
        DataBinding.FieldName = 'YQty'
      end
      object cxGrid1spGridDBTableView1MQty: TspGridDBColumn
        DataBinding.FieldName = 'MQty'
      end
      object cxGrid1spGridDBTableView1Price: TspGridDBColumn
        DataBinding.FieldName = 'Price'
      end
      object cxGrid1spGridDBTableView1Amount: TspGridDBColumn
        DataBinding.FieldName = 'Amount'
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1spGridDBTableView1
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1019
    Height = 35
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    object cxTextEdit1: TcxTextEdit
      Left = 600
      Top = 5
      TabOrder = 0
      Text = 'cxTextEdit1'
      Width = 121
    end
    object cxTextEdit2: TcxTextEdit
      Left = 727
      Top = 5
      TabOrder = 1
      Text = 'cxTextEdit2'
      Width = 121
    end
    object cxTextEdit3: TcxTextEdit
      Left = 896
      Top = 5
      TabOrder = 2
      Text = 'cxTextEdit3'
      Width = 121
    end
  end
  object DataSource1: TDataSource
    DataSet = ClientDataSet1
    Left = 376
  end
  object ClientDataSet1: TspClientDataSet
    PersistDataPacket.Data = {
      B70000009619E0BD010000001800000008000000000003000000B70004556E69
      740100490000000100055749445448020002000A0004594F6464010049000000
      010005574944544802000200C800044D4F646401004900000001000557494454
      4802000200C8000653756D4F6464010049000000010005574944544802000200
      C80004595174790800040000000000044D517479080004000000000005507269
      6365080004000000000006416D6F756E7408000400000000000000}
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'Unit'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'YOdd'
        DataType = ftString
        Size = 200
      end
      item
        Name = 'MOdd'
        DataType = ftString
        Size = 200
      end
      item
        Name = 'SumOdd'
        DataType = ftString
        Size = 200
      end
      item
        Name = 'YQty'
        DataType = ftFloat
      end
      item
        Name = 'MQty'
        DataType = ftFloat
      end
      item
        Name = 'Price'
        DataType = ftFloat
      end
      item
        Name = 'Amount'
        DataType = ftFloat
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Dictionary = <
      item
        FieldName = 'Unit'
        FieldType = ftString
        Size = 10
        NumericPrecision = 0
        NumericScale = 0
        DisplayWidth = 10
        DisplayLabel = 'Unit'
        IsAutoGen = False
      end
      item
        FieldName = 'YOdd'
        FieldType = ftString
        Size = 200
        NumericPrecision = 0
        NumericScale = 0
        DisplayWidth = 100
        DisplayLabel = 'YOdd'
        IsAutoGen = False
      end
      item
        FieldName = 'MOdd'
        FieldType = ftString
        Size = 200
        NumericPrecision = 0
        NumericScale = 0
        DisplayWidth = 200
        DisplayLabel = 'MOdd'
        IsAutoGen = False
      end
      item
        FieldName = 'SumOdd'
        FieldType = ftString
        Size = 200
        NumericPrecision = 0
        NumericScale = 0
        DisplayWidth = 200
        DisplayLabel = 'SumOdd'
        IsAutoGen = False
      end
      item
        FieldName = 'YQty'
        FieldType = ftFloat
        NumericPrecision = 15
        NumericScale = 0
        Alignment = taRightJustify
        DisplayWidth = 10
        DisplayLabel = 'YQty'
        IsAutoGen = False
      end
      item
        FieldName = 'MQty'
        FieldType = ftFloat
        NumericPrecision = 15
        NumericScale = 0
        Alignment = taRightJustify
        DisplayWidth = 10
        DisplayLabel = 'MQty'
        IsAutoGen = False
      end
      item
        FieldName = 'Price'
        FieldType = ftFloat
        NumericPrecision = 15
        NumericScale = 0
        Alignment = taRightJustify
        DisplayWidth = 10
        DisplayLabel = 'Price'
        IsAutoGen = False
      end
      item
        FieldName = 'Amount'
        FieldType = ftFloat
        NumericPrecision = 15
        NumericScale = 0
        Alignment = taRightJustify
        DisplayWidth = 10
        DisplayLabel = 'Amount'
        IsAutoGen = False
      end>
    LinkedComponents = <>
    OnFieldChange = ClientDataSet1FieldChange
    OnSumPredicate = ClientDataSet1SumPredicate
    OnSumData = ClientDataSet1SumData
    Left = 440
    Top = 24
    object ClientDataSet1Unit: TStringField
      DisplayWidth = 10
      FieldName = 'Unit'
      Size = 10
    end
    object ClientDataSet1str: TspStringField
      DisplayWidth = 100
      FieldName = 'YOdd'
      Size = 200
    end
    object ClientDataSet1MOdd: TStringField
      DisplayWidth = 200
      FieldName = 'MOdd'
      Size = 200
    end
    object ClientDataSet1SumOdd: TStringField
      DisplayWidth = 200
      FieldName = 'SumOdd'
      OnGetText = ClientDataSet1SumOddGetText
      Size = 200
    end
    object ClientDataSet1Y: TspFloatField
      DisplayWidth = 10
      FieldName = 'YQty'
      DisplayFormat = '0.00'
    end
    object ClientDataSet1M: TspFloatField
      DisplayWidth = 10
      FieldName = 'MQty'
      DisplayFormat = '0.00'
    end
    object ClientDataSet1Price: TFloatField
      DisplayWidth = 10
      FieldName = 'Price'
      OnGetText = ClientDataSet1PriceGetText
      DisplayFormat = '0.00'
    end
    object ClientDataSet1Amount: TFloatField
      DisplayWidth = 10
      FieldName = 'Amount'
      DisplayFormat = '0.00'
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
  object dxSkinController1: TdxSkinController
    NativeStyle = False
    SkinName = 'TheAsphaltWorld'
    Left = 272
    Top = 24
  end
end
