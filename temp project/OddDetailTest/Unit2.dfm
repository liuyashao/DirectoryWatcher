object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 536
  ClientWidth = 1112
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
    Width = 1112
    Height = 221
    Align = alTop
    TabOrder = 0
    object cxGrid1spGridDBTableView1: TspGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = DataSource1
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '0.00'
          Kind = skSum
        end
        item
          Format = '0.00'
          Kind = skSum
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
          #31859
          #25903)
      end
      object cxGrid1spGridDBTableView1SpecY: TspGridDBColumn
        DataBinding.FieldName = 'SpecY'
      end
      object cxGrid1spGridDBTableView1SpecM: TspGridDBColumn
        DataBinding.FieldName = 'SpecM'
      end
      object cxGrid1spGridDBTableView1SpecSale: TspGridDBColumn
        DataBinding.FieldName = 'SpecSale'
      end
      object cxGrid1spGridDBTableView1Piece: TspGridDBColumn
        DataBinding.FieldName = 'Piece'
      end
      object cxGrid1spGridDBTableView1OddY: TspGridDBColumn
        DataBinding.FieldName = 'OddY'
        Width = 120
      end
      object cxGrid1spGridDBTableView1OddM: TspGridDBColumn
        DataBinding.FieldName = 'OddM'
        Width = 120
      end
      object cxGrid1spGridDBTableView1OddTotal: TspGridDBColumn
        DataBinding.FieldName = 'OddTotal'
        Width = 120
      end
      object cxGrid1spGridDBTableView1SpecCut: TspGridDBColumn
        DataBinding.FieldName = 'SpecCut'
      end
      object cxGrid1spGridDBTableView1QtyCut: TspGridDBColumn
        DataBinding.FieldName = 'QtyCut'
      end
      object cxGrid1spGridDBTableView1SaleDetail: TspGridDBColumn
        DataBinding.FieldName = 'SaleDetail'
        Width = 132
      end
      object cxGrid1spGridDBTableView1SaleQty: TspGridDBColumn
        DataBinding.FieldName = 'SaleQty'
      end
      object cxGrid1spGridDBTableView1Price: TspGridDBColumn
        DataBinding.FieldName = 'Price'
      end
      object cxGrid1spGridDBTableView1Amount: TspGridDBColumn
        DataBinding.FieldName = 'Amount'
      end
      object cxGrid1spGridDBTableView1TotalQtyY: TspGridDBColumn
        DataBinding.FieldName = 'TotalQtyY'
      end
      object cxGrid1spGridDBTableView1TotalQtyM: TspGridDBColumn
        DataBinding.FieldName = 'TotalQtyM'
      end
      object cxGrid1spGridDBTableView1TotalPiece: TspGridDBColumn
        DataBinding.FieldName = 'TotalPiece'
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1spGridDBTableView1
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1112
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
    object spTextEditEx1: TspTextEditEx
      Left = 408
      Top = 5
      TabOrder = 3
      Text = 'spTextEditEx1'
      Width = 121
    end
  end
  object cxGrid2: TcxGrid
    Left = 0
    Top = 256
    Width = 1112
    Height = 280
    Align = alClient
    TabOrder = 2
    object cxGrid2spGridDBBandedTableView1: TspGridDBBandedTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      Bands = <
        item
          Width = 85
        end>
      DisplayTemplate.Items = <>
      DisplayTemplate.Bands = <>
      StateOptions.Font.Charset = DEFAULT_CHARSET
      StateOptions.Font.Color = clWindowText
      StateOptions.Font.Height = -11
      StateOptions.Font.Name = 'Tahoma'
      StateOptions.Font.Style = []
    end
    object cxGrid2Level1: TcxGridLevel
      GridView = cxGrid2spGridDBBandedTableView1
    end
  end
  object DataSource1: TDataSource
    DataSet = ClientDataSet1
    Left = 376
  end
  object ClientDataSet1: TspClientDataSet
    PersistDataPacket.Data = {
      5F0100009619E0BD0100000018000000110000000000030000005F0104556E69
      740100490000000100055749445448020002000A000553706563590800040000
      00000005537065634D0800040000000000085370656353616C65080004000000
      00000550696563650400010000000000044F6464590100490000000100055749
      44544802000200C800044F64644D010049000000010005574944544802000200
      C800084F6464546F74616C010049000000010005574944544802000200C80007
      5370656343757408000400000000000651747943757408000400000000000A53
      616C6544657461696C010049000000010005574944544802000200C800075361
      6C655174790800040000000000055072696365080004000000000006416D6F75
      6E74080004000000000009546F74616C51747959080004000000000009546F74
      616C5174794D08000400000000000A546F74616C506965636504000100000000
      000000}
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'Unit'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'SpecY'
        DataType = ftFloat
      end
      item
        Name = 'SpecM'
        DataType = ftFloat
      end
      item
        Name = 'SpecSale'
        DataType = ftFloat
      end
      item
        Name = 'Piece'
        DataType = ftInteger
      end
      item
        Name = 'OddY'
        DataType = ftString
        Size = 200
      end
      item
        Name = 'OddM'
        DataType = ftString
        Size = 200
      end
      item
        Name = 'OddTotal'
        DataType = ftString
        Size = 200
      end
      item
        Name = 'SpecCut'
        DataType = ftFloat
      end
      item
        Name = 'QtyCut'
        DataType = ftFloat
      end
      item
        Name = 'SaleDetail'
        DataType = ftString
        Size = 200
      end
      item
        Name = 'SaleQty'
        DataType = ftFloat
      end
      item
        Name = 'Price'
        DataType = ftFloat
      end
      item
        Name = 'Amount'
        DataType = ftFloat
      end
      item
        Name = 'TotalQtyY'
        DataType = ftFloat
      end
      item
        Name = 'TotalQtyM'
        DataType = ftFloat
      end
      item
        Name = 'TotalPiece'
        DataType = ftInteger
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
        FieldName = 'SpecY'
        FieldType = ftFloat
        NumericPrecision = 15
        NumericScale = 0
        Alignment = taRightJustify
        DisplayWidth = 10
        DisplayLabel = 'SpecY'
        IsAutoGen = False
      end
      item
        FieldName = 'SpecM'
        FieldType = ftFloat
        NumericPrecision = 15
        NumericScale = 0
        Alignment = taRightJustify
        DisplayWidth = 10
        DisplayLabel = 'SpecM'
        IsAutoGen = False
      end
      item
        FieldName = 'SpecSale'
        FieldType = ftFloat
        NumericPrecision = 15
        NumericScale = 0
        Alignment = taRightJustify
        DisplayWidth = 10
        DisplayLabel = 'SpecSale'
        IsAutoGen = False
      end
      item
        FieldName = 'Piece'
        FieldType = ftInteger
        NumericPrecision = 0
        NumericScale = 0
        Alignment = taRightJustify
        DisplayWidth = 10
        DisplayLabel = 'Piece'
        IsAutoGen = False
      end
      item
        FieldName = 'OddY'
        FieldType = ftString
        Size = 200
        NumericPrecision = 0
        NumericScale = 0
        DisplayWidth = 100
        DisplayLabel = 'OddY'
        IsAutoGen = False
      end
      item
        FieldName = 'OddM'
        FieldType = ftString
        Size = 200
        NumericPrecision = 0
        NumericScale = 0
        DisplayWidth = 200
        DisplayLabel = 'OddM'
        IsAutoGen = False
      end
      item
        FieldName = 'OddTotal'
        FieldType = ftString
        Size = 200
        NumericPrecision = 0
        NumericScale = 0
        DisplayWidth = 200
        DisplayLabel = 'OddTotal'
        IsAutoGen = False
      end
      item
        FieldName = 'SpecCut'
        FieldType = ftFloat
        NumericPrecision = 15
        NumericScale = 0
        Alignment = taRightJustify
        DisplayWidth = 10
        DisplayLabel = 'SpecCut'
        IsAutoGen = False
      end
      item
        FieldName = 'QtyCut'
        FieldType = ftFloat
        NumericPrecision = 15
        NumericScale = 0
        Alignment = taRightJustify
        DisplayWidth = 10
        DisplayLabel = 'QtyCut'
        IsAutoGen = False
      end
      item
        FieldName = 'SaleDetail'
        FieldType = ftString
        Size = 200
        NumericPrecision = 0
        NumericScale = 0
        DisplayWidth = 200
        DisplayLabel = 'SaleDetail'
        IsAutoGen = False
      end
      item
        FieldName = 'SaleQty'
        FieldType = ftFloat
        NumericPrecision = 15
        NumericScale = 0
        Alignment = taRightJustify
        DisplayWidth = 10
        DisplayLabel = 'SaleQty'
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
      end
      item
        FieldName = 'TotalQtyY'
        FieldType = ftFloat
        NumericPrecision = 15
        NumericScale = 0
        Alignment = taRightJustify
        DisplayWidth = 10
        DisplayLabel = 'TotalQtyY'
        IsAutoGen = False
      end
      item
        FieldName = 'TotalQtyM'
        FieldType = ftFloat
        NumericPrecision = 15
        NumericScale = 0
        Alignment = taRightJustify
        DisplayWidth = 10
        DisplayLabel = 'TotalQtyM'
        IsAutoGen = False
      end
      item
        FieldName = 'TotalPiece'
        FieldType = ftInteger
        NumericPrecision = 0
        NumericScale = 0
        Alignment = taRightJustify
        DisplayWidth = 10
        DisplayLabel = 'TotalPiece'
        IsAutoGen = False
      end>
    LinkedComponents = <>
    OnFieldChange = ClientDataSet1FieldChange
    OnSumPredicate = ClientDataSet1SumPredicate
    OnSumData = ClientDataSet1SumData
    Left = 440
    Top = 24
    object ClientDataSet1Unit: TStringField
      DisplayLabel = #21333#20301
      DisplayWidth = 10
      FieldName = 'Unit'
      Size = 10
    end
    object ClientDataSet1SpecY: TFloatField
      DisplayLabel = #30721'/'#25903
      DisplayWidth = 10
      FieldName = 'SpecY'
    end
    object ClientDataSet1SpecM: TFloatField
      DisplayLabel = #31859'/'#25903
      DisplayWidth = 10
      FieldName = 'SpecM'
    end
    object ClientDataSet1SpecSale: TFloatField
      DisplayLabel = #23454#38144#35268#26684
      DisplayWidth = 10
      FieldName = 'SpecSale'
    end
    object ClientDataSet1Piece: TIntegerField
      DisplayLabel = #25972#25903#25968
      DisplayWidth = 10
      FieldName = 'Piece'
    end
    object ClientDataSet1str: TspStringField
      DisplayLabel = #38646#22836#21512#35745#26126#32454
      DisplayWidth = 100
      FieldName = 'OddY'
      Size = 200
    end
    object ClientDataSet1MOdd: TStringField
      DisplayLabel = #38646#22836#21512#35745#26126#32454
      DisplayWidth = 200
      FieldName = 'OddM'
      Size = 200
    end
    object ClientDataSet1SumOdd: TStringField
      DisplayLabel = #38646#22836#21512#35745#26126#32454
      DisplayWidth = 200
      FieldName = 'OddTotal'
      OnGetText = ClientDataSet1SumOddGetText
      Size = 200
    end
    object ClientDataSet1SpecCut: TFloatField
      DisplayLabel = #25955#21098#35268#26684
      DisplayWidth = 10
      FieldName = 'SpecCut'
    end
    object ClientDataSet1QtyCut: TFloatField
      DisplayLabel = #25955#21098#25968
      DisplayWidth = 10
      FieldName = 'QtyCut'
    end
    object ClientDataSet1OddSale: TStringField
      DisplayLabel = #38144#21806#26126#32454
      DisplayWidth = 200
      FieldName = 'SaleDetail'
      Size = 200
    end
    object ClientDataSet1SaleQty: TFloatField
      DisplayLabel = #38144#21806#25968#37327
      DisplayWidth = 10
      FieldName = 'SaleQty'
    end
    object ClientDataSet1Price: TFloatField
      DisplayLabel = #21333#20215
      DisplayWidth = 10
      FieldName = 'Price'
      OnGetText = ClientDataSet1PriceGetText
    end
    object ClientDataSet1Amount: TFloatField
      DisplayLabel = #37329#39069
      DisplayWidth = 10
      FieldName = 'Amount'
    end
    object ClientDataSet1Y: TspFloatField
      DisplayLabel = #24635#30721#25968
      DisplayWidth = 10
      FieldName = 'TotalQtyY'
    end
    object ClientDataSet1M: TspFloatField
      DisplayLabel = #24635#31859#25968
      DisplayWidth = 10
      FieldName = 'TotalQtyM'
    end
    object ClientDataSet1TotalPiece: TIntegerField
      DisplayLabel = #24635#20214#25968
      DisplayWidth = 10
      FieldName = 'TotalPiece'
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
  object Timer1: TTimer
    Interval = 500
    OnTimer = Timer1Timer
    Left = 752
    Top = 152
  end
end
