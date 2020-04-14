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
  TextHeight = 17
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
        PropertiesClassName = 'TcxOddTextEditProperties'
        Width = 120
      end
      object cxGrid1spGridDBTableView1OddM: TspGridDBColumn
        DataBinding.FieldName = 'OddM'
        PropertiesClassName = 'TcxOddTextEditProperties'
        Width = 120
      end
      object cxGrid1spGridDBTableView1OddTotal: TspGridDBColumn
        DataBinding.FieldName = 'OddTotal'
        PropertiesClassName = 'TcxOddTextEditProperties'
        Properties.ReadOnly = True
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
        PropertiesClassName = 'TcxOddTextEditProperties'
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
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
      end
      object cxGrid1spGridDBTableView1TotalDetail: TspGridDBColumn
        DataBinding.FieldName = 'TotalDetail'
        PropertiesClassName = 'TcxOddTextEditProperties'
        Properties.ReadOnly = True
        Width = 150
      end
      object cxGrid1spGridDBTableView1TotalQtyY: TspGridDBColumn
        DataBinding.FieldName = 'TotalQtyY'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
      end
      object cxGrid1spGridDBTableView1TotalQtyM: TspGridDBColumn
        DataBinding.FieldName = 'TotalQtyM'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
      end
      object cxGrid1spGridDBTableView1TotalPiece: TspGridDBColumn
        DataBinding.FieldName = 'TotalPiece'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
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
      7F0100009619E0BD0100000018000000120000000000030000007F0104556E69
      740100490000000100055749445448020002000A000553706563590800040000
      00000005537065634D0800040000000000085370656353616C65080004000000
      00000550696563650400010000000000044F6464590100490000000100055749
      44544802000200C800044F64644D010049000000010005574944544802000200
      C800084F6464546F74616C010049000000010005574944544802000200C80007
      5370656343757408000400000000000651747943757408000400000000000A53
      616C6544657461696C010049000000010005574944544802000200C800075361
      6C655174790800040000000000055072696365080004000000000006416D6F75
      6E7408000400000000000B546F74616C44657461696C01004900000001000557
      4944544802000200C80009546F74616C51747959080004000000000009546F74
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
        Name = 'TotalDetail'
        DataType = ftString
        Size = 200
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
        FieldName = 'TotalDetail'
        FieldType = ftString
        Size = 200
        NumericPrecision = 0
        NumericScale = 0
        DisplayWidth = 200
        DisplayLabel = 'TotalDetail'
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
      DisplayWidth = 10
      FieldName = 'Unit'
      Size = 10
    end
    object ClientDataSet1SpecY: TFloatField
      DisplayWidth = 10
      FieldName = 'SpecY'
    end
    object ClientDataSet1SpecM: TFloatField
      DisplayWidth = 10
      FieldName = 'SpecM'
    end
    object ClientDataSet1SpecSale: TFloatField
      DisplayWidth = 10
      FieldName = 'SpecSale'
    end
    object ClientDataSet1Piece: TIntegerField
      DisplayWidth = 10
      FieldName = 'Piece'
    end
    object ClientDataSet1str: TspStringField
      DisplayWidth = 100
      FieldName = 'OddY'
      Size = 200
    end
    object ClientDataSet1MOdd: TStringField
      DisplayWidth = 200
      FieldName = 'OddM'
      Size = 200
    end
    object ClientDataSet1SumOdd: TStringField
      DisplayWidth = 200
      FieldName = 'OddTotal'
      Size = 200
    end
    object ClientDataSet1SpecCut: TFloatField
      DisplayWidth = 10
      FieldName = 'SpecCut'
    end
    object ClientDataSet1QtyCut: TFloatField
      DisplayWidth = 10
      FieldName = 'QtyCut'
    end
    object ClientDataSet1OddSale: TStringField
      DisplayWidth = 200
      FieldName = 'SaleDetail'
      Size = 200
    end
    object ClientDataSet1SaleQty: TFloatField
      DisplayWidth = 10
      FieldName = 'SaleQty'
    end
    object ClientDataSet1Price: TFloatField
      DisplayWidth = 10
      FieldName = 'Price'
      OnGetText = ClientDataSet1PriceGetText
    end
    object ClientDataSet1Amount: TFloatField
      DisplayWidth = 10
      FieldName = 'Amount'
    end
    object ClientDataSet1TotalDetail: TStringField
      DisplayWidth = 200
      FieldName = 'TotalDetail'
      Size = 200
    end
    object ClientDataSet1Y: TspFloatField
      DisplayWidth = 10
      FieldName = 'TotalQtyY'
    end
    object ClientDataSet1M: TspFloatField
      DisplayWidth = 10
      FieldName = 'TotalQtyM'
    end
    object ClientDataSet1TotalPiece: TIntegerField
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
