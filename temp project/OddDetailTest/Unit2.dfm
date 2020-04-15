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
        HeaderAlignmentHorz = taCenter
      end
      object cxGrid1spGridDBTableView1SpecY: TspGridDBColumn
        DataBinding.FieldName = 'SpecY'
        HeaderAlignmentHorz = taCenter
      end
      object cxGrid1spGridDBTableView1SpecM: TspGridDBColumn
        DataBinding.FieldName = 'SpecM'
        HeaderAlignmentHorz = taCenter
      end
      object cxGrid1spGridDBTableView1SpecSale: TspGridDBColumn
        DataBinding.FieldName = 'SpecSale'
        HeaderAlignmentHorz = taCenter
      end
      object cxGrid1spGridDBTableView1Piece: TspGridDBColumn
        DataBinding.FieldName = 'Piece'
        HeaderAlignmentHorz = taCenter
      end
      object cxGrid1spGridDBTableView1OddY: TspGridDBColumn
        DataBinding.FieldName = 'OddY'
        PropertiesClassName = 'TcxOddTextEditProperties'
        HeaderAlignmentHorz = taCenter
        Width = 120
      end
      object cxGrid1spGridDBTableView1OddM: TspGridDBColumn
        DataBinding.FieldName = 'OddM'
        PropertiesClassName = 'TcxOddTextEditProperties'
        HeaderAlignmentHorz = taCenter
        Width = 120
      end
      object cxGrid1spGridDBTableView1OddTotal: TspGridDBColumn
        DataBinding.FieldName = 'OddTotal'
        PropertiesClassName = 'TcxOddTextEditProperties'
        Properties.ReadOnly = True
        HeaderAlignmentHorz = taCenter
        Width = 120
      end
      object cxGrid1spGridDBTableView1SpecCut: TspGridDBColumn
        DataBinding.FieldName = 'SpecCut'
        HeaderAlignmentHorz = taCenter
      end
      object cxGrid1spGridDBTableView1QtyCut: TspGridDBColumn
        DataBinding.FieldName = 'QtyCut'
        HeaderAlignmentHorz = taCenter
      end
      object cxGrid1spGridDBTableView1SaleDetail: TspGridDBColumn
        DataBinding.FieldName = 'SaleDetail'
        PropertiesClassName = 'TcxOddTextEditProperties'
        HeaderAlignmentHorz = taCenter
        Width = 132
      end
      object cxGrid1spGridDBTableView1SaleQty: TspGridDBColumn
        DataBinding.FieldName = 'SaleQty'
        HeaderAlignmentHorz = taCenter
      end
      object cxGrid1spGridDBTableView1Price: TspGridDBColumn
        DataBinding.FieldName = 'Price'
        HeaderAlignmentHorz = taCenter
      end
      object cxGrid1spGridDBTableView1Amount: TspGridDBColumn
        DataBinding.FieldName = 'Amount'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
        HeaderAlignmentHorz = taCenter
      end
      object cxGrid1spGridDBTableView1TotalDetail: TspGridDBColumn
        DataBinding.FieldName = 'TotalDetail'
        PropertiesClassName = 'TcxOddTextEditProperties'
        Properties.ReadOnly = True
        HeaderAlignmentHorz = taCenter
        Width = 150
      end
      object cxGrid1spGridDBTableView1TotalQtyY: TspGridDBColumn
        DataBinding.FieldName = 'TotalQtyY'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
        HeaderAlignmentHorz = taCenter
      end
      object cxGrid1spGridDBTableView1TotalQtyM: TspGridDBColumn
        DataBinding.FieldName = 'TotalQtyM'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
        HeaderAlignmentHorz = taCenter
      end
      object cxGrid1spGridDBTableView1TotalPiece: TspGridDBColumn
        DataBinding.FieldName = 'TotalPiece'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
        HeaderAlignmentHorz = taCenter
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
    object cbRoundType: TcxComboBox
      Left = 208
      Top = 5
      Properties.DropDownListStyle = lsEditFixedList
      TabOrder = 4
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
      DataController.DataSource = DataSource1
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      Styles.Content = cxStyle1
      Bands = <
        item
          Caption = #21830#21697
          Width = 116
        end
        item
          Caption = #25972#25903
          Width = 299
        end
        item
          Caption = #38646#22836
          Width = 346
        end
        item
          Caption = #25955#21098
          Width = 147
        end
        item
          Caption = #23454#38469#38144#21806
          Width = 346
        end
        item
          Caption = #23454#38469#20986#24211
          Width = 301
        end
        item
          Caption = #20854#20182
        end>
      DisplayTemplate.Items = <>
      DisplayTemplate.Bands = <>
      StateOptions.Font.Charset = DEFAULT_CHARSET
      StateOptions.Font.Color = clWindowText
      StateOptions.Font.Height = -11
      StateOptions.Font.Name = 'Tahoma'
      StateOptions.Font.Style = []
      OnEditValueChanging = cxGrid2spGridDBBandedTableView1EditValueChanging
      object cxGrid2spGridDBBandedTableView1Unit: TspGridDBBandedColumn
        DataBinding.FieldName = 'Unit'
        PropertiesClassName = 'TcxComboBoxProperties'
        Properties.DropDownListStyle = lsEditFixedList
        Properties.ImmediatePost = True
        Properties.Items.Strings = (
          #30721
          #31859
          #25903)
        HeaderAlignmentHorz = taCenter
        Width = 44
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxGrid2spGridDBBandedTableView1SpecY: TspGridDBBandedColumn
        DataBinding.FieldName = 'SpecY'
        HeaderAlignmentHorz = taCenter
        Width = 70
        Position.BandIndex = 1
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxGrid2spGridDBBandedTableView1SpecM: TspGridDBBandedColumn
        DataBinding.FieldName = 'SpecM'
        HeaderAlignmentHorz = taCenter
        Width = 88
        Position.BandIndex = 1
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cxGrid2spGridDBBandedTableView1SpecSale: TspGridDBBandedColumn
        DataBinding.FieldName = 'SpecSale'
        HeaderAlignmentHorz = taCenter
        Width = 96
        Position.BandIndex = 1
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object cxGrid2spGridDBBandedTableView1Piece: TspGridDBBandedColumn
        DataBinding.FieldName = 'Piece'
        HeaderAlignmentHorz = taCenter
        Width = 99
        Position.BandIndex = 1
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object cxGrid2spGridDBBandedTableView1OddY: TspGridDBBandedColumn
        Caption = #30721#26126#32454
        DataBinding.FieldName = 'OddY'
        PropertiesClassName = 'TcxOddTextEditProperties'
        HeaderAlignmentHorz = taCenter
        Width = 125
        Position.BandIndex = 2
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxGrid2spGridDBBandedTableView1OddM: TspGridDBBandedColumn
        Caption = #31859#26126#32454
        DataBinding.FieldName = 'OddM'
        PropertiesClassName = 'TcxOddTextEditProperties'
        HeaderAlignmentHorz = taCenter
        Width = 121
        Position.BandIndex = 2
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cxGrid2spGridDBBandedTableView1OddTotal: TspGridDBBandedColumn
        Caption = #21512#35745#26126#32454
        DataBinding.FieldName = 'OddTotal'
        PropertiesClassName = 'TcxOddTextEditProperties'
        Properties.ReadOnly = True
        HeaderAlignmentHorz = taCenter
        Width = 120
        Position.BandIndex = 2
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object cxGrid2spGridDBBandedTableView1SpecCut: TspGridDBBandedColumn
        Caption = #35268#26684
        DataBinding.FieldName = 'SpecCut'
        HeaderAlignmentHorz = taCenter
        Width = 20
        Position.BandIndex = 3
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxGrid2spGridDBBandedTableView1QtyCut: TspGridDBBandedColumn
        Caption = #25968#37327
        DataBinding.FieldName = 'QtyCut'
        HeaderAlignmentHorz = taCenter
        Width = 26
        Position.BandIndex = 3
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cxGrid2spGridDBBandedTableView1SaleDetail: TspGridDBBandedColumn
        DataBinding.FieldName = 'SaleDetail'
        PropertiesClassName = 'TcxOddTextEditProperties'
        HeaderAlignmentHorz = taCenter
        Width = 145
        Position.BandIndex = 4
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxGrid2spGridDBBandedTableView1SaleQty: TspGridDBBandedColumn
        DataBinding.FieldName = 'SaleQty'
        HeaderAlignmentHorz = taCenter
        Width = 82
        Position.BandIndex = 4
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cxGrid2spGridDBBandedTableView1Price: TspGridDBBandedColumn
        DataBinding.FieldName = 'Price'
        HeaderAlignmentHorz = taCenter
        Width = 50
        Position.BandIndex = 4
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object cxGrid2spGridDBBandedTableView1Amount: TspGridDBBandedColumn
        DataBinding.FieldName = 'Amount'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
        HeaderAlignmentHorz = taCenter
        Width = 52
        Position.BandIndex = 4
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object cxGrid2spGridDBBandedTableView1TotalDetail: TspGridDBBandedColumn
        DataBinding.FieldName = 'TotalDetail'
        PropertiesClassName = 'TcxOddTextEditProperties'
        Properties.ReadOnly = True
        HeaderAlignmentHorz = taCenter
        Width = 87
        Position.BandIndex = 5
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxGrid2spGridDBBandedTableView1TotalQtyY: TspGridDBBandedColumn
        DataBinding.FieldName = 'TotalQtyY'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
        HeaderAlignmentHorz = taCenter
        Width = 66
        Position.BandIndex = 5
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cxGrid2spGridDBBandedTableView1TotalQtyM: TspGridDBBandedColumn
        DataBinding.FieldName = 'TotalQtyM'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
        HeaderAlignmentHorz = taCenter
        Width = 64
        Position.BandIndex = 5
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object cxGrid2spGridDBBandedTableView1TotalPiece: TspGridDBBandedColumn
        DataBinding.FieldName = 'TotalPiece'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
        HeaderAlignmentHorz = taCenter
        Width = 64
        Position.BandIndex = 5
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
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
        DisplayLabel = #21333#20301
        IsAutoGen = False
      end
      item
        FieldName = 'SpecY'
        FieldType = ftFloat
        NumericPrecision = 15
        NumericScale = 0
        Alignment = taRightJustify
        DisplayWidth = 10
        DisplayLabel = #30721'/'#25903
        IsAutoGen = False
      end
      item
        FieldName = 'SpecM'
        FieldType = ftFloat
        NumericPrecision = 15
        NumericScale = 0
        Alignment = taRightJustify
        DisplayWidth = 10
        DisplayLabel = #31859'/'#25903
        IsAutoGen = False
      end
      item
        FieldName = 'SpecSale'
        FieldType = ftFloat
        NumericPrecision = 15
        NumericScale = 0
        Alignment = taRightJustify
        DisplayWidth = 10
        DisplayLabel = #38144#21806#35268#26684
        IsAutoGen = False
      end
      item
        FieldName = 'Piece'
        FieldType = ftInteger
        NumericPrecision = 0
        NumericScale = 0
        Alignment = taRightJustify
        DisplayWidth = 10
        DisplayLabel = #25972#25903#25968
        IsAutoGen = False
      end
      item
        FieldName = 'OddY'
        FieldType = ftString
        Size = 200
        NumericPrecision = 0
        NumericScale = 0
        DisplayWidth = 100
        DisplayLabel = #38646#22836#30721#26126#32454
        IsAutoGen = False
      end
      item
        FieldName = 'OddM'
        FieldType = ftString
        Size = 200
        NumericPrecision = 0
        NumericScale = 0
        DisplayWidth = 200
        DisplayLabel = #38646#22836#31859#26126#32454
        IsAutoGen = False
      end
      item
        FieldName = 'OddTotal'
        FieldType = ftString
        Size = 200
        NumericPrecision = 0
        NumericScale = 0
        DisplayWidth = 200
        DisplayLabel = #38646#22836#21512#35745#26126#32454
        IsAutoGen = False
      end
      item
        FieldName = 'SpecCut'
        FieldType = ftFloat
        NumericPrecision = 15
        NumericScale = 0
        Alignment = taRightJustify
        DisplayWidth = 10
        DisplayLabel = #25955#21098#35268#26684
        IsAutoGen = False
      end
      item
        FieldName = 'QtyCut'
        FieldType = ftFloat
        NumericPrecision = 15
        NumericScale = 0
        Alignment = taRightJustify
        DisplayWidth = 10
        DisplayLabel = #25955#21098#25968#37327
        IsAutoGen = False
      end
      item
        FieldName = 'SaleDetail'
        FieldType = ftString
        Size = 200
        NumericPrecision = 0
        NumericScale = 0
        DisplayWidth = 200
        DisplayLabel = #38144#21806#26126#32454
        IsAutoGen = False
      end
      item
        FieldName = 'SaleQty'
        FieldType = ftFloat
        NumericPrecision = 15
        NumericScale = 0
        Alignment = taRightJustify
        DisplayWidth = 10
        DisplayLabel = #38144#21806#25968#37327
        IsAutoGen = False
      end
      item
        FieldName = 'Price'
        FieldType = ftFloat
        NumericPrecision = 15
        NumericScale = 0
        Alignment = taRightJustify
        DisplayWidth = 10
        DisplayLabel = #21333#20215
        IsAutoGen = False
      end
      item
        FieldName = 'Amount'
        FieldType = ftFloat
        NumericPrecision = 15
        NumericScale = 0
        Alignment = taRightJustify
        DisplayWidth = 10
        DisplayLabel = #37329#39069
        IsAutoGen = False
      end
      item
        FieldName = 'TotalDetail'
        FieldType = ftString
        Size = 200
        NumericPrecision = 0
        NumericScale = 0
        DisplayWidth = 200
        DisplayLabel = #20986#24211#26126#32454
        IsAutoGen = False
      end
      item
        FieldName = 'TotalQtyY'
        FieldType = ftFloat
        NumericPrecision = 15
        NumericScale = 0
        Alignment = taRightJustify
        DisplayWidth = 10
        DisplayLabel = #24635#30721#25968
        IsAutoGen = False
      end
      item
        FieldName = 'TotalQtyM'
        FieldType = ftFloat
        NumericPrecision = 15
        NumericScale = 0
        Alignment = taRightJustify
        DisplayWidth = 10
        DisplayLabel = #24635#31859#25968
        IsAutoGen = False
      end
      item
        FieldName = 'TotalPiece'
        FieldType = ftInteger
        NumericPrecision = 0
        NumericScale = 0
        Alignment = taRightJustify
        DisplayWidth = 10
        DisplayLabel = #24635#20214#25968
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
      DisplayLabel = #38144#21806#35268#26684
      DisplayWidth = 10
      FieldName = 'SpecSale'
      OnGetText = ClientDataSet1SpecYGetText
    end
    object ClientDataSet1Piece: TIntegerField
      DisplayLabel = #25972#25903#25968
      DisplayWidth = 10
      FieldName = 'Piece'
    end
    object ClientDataSet1str: TspStringField
      DisplayLabel = #38646#22836#30721#26126#32454
      DisplayWidth = 100
      FieldName = 'OddY'
      OnGetText = ClientDataSet1OddFieldGetText
      Size = 200
    end
    object ClientDataSet1MOdd: TStringField
      DisplayLabel = #38646#22836#31859#26126#32454
      DisplayWidth = 200
      FieldName = 'OddM'
      OnGetText = ClientDataSet1OddFieldGetText
      Size = 200
    end
    object ClientDataSet1SumOdd: TStringField
      DisplayLabel = #38646#22836#21512#35745#26126#32454
      DisplayWidth = 200
      FieldName = 'OddTotal'
      OnGetText = ClientDataSet1OddFieldGetText
      Size = 200
    end
    object ClientDataSet1SpecCut: TFloatField
      DisplayLabel = #25955#21098#35268#26684
      DisplayWidth = 10
      FieldName = 'SpecCut'
      OnGetText = ClientDataSet1SpecYGetText
    end
    object ClientDataSet1QtyCut: TFloatField
      DisplayLabel = #25955#21098#25968#37327
      DisplayWidth = 10
      FieldName = 'QtyCut'
      OnGetText = ClientDataSet1QtyCutGetText
    end
    object ClientDataSet1OddSale: TStringField
      DisplayLabel = #38144#21806#26126#32454
      DisplayWidth = 200
      FieldName = 'SaleDetail'
      OnGetText = ClientDataSet1OddFieldGetText
      Size = 200
    end
    object ClientDataSet1SaleQty: TFloatField
      DisplayLabel = #38144#21806#25968#37327
      DisplayWidth = 10
      FieldName = 'SaleQty'
      OnGetText = ClientDataSet1QtyCutGetText
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
    object ClientDataSet1TotalDetail: TStringField
      DisplayLabel = #20986#24211#26126#32454
      DisplayWidth = 200
      FieldName = 'TotalDetail'
      OnGetText = ClientDataSet1OddFieldGetText
      Size = 200
    end
    object ClientDataSet1Y: TspFloatField
      DisplayLabel = #24635#30721#25968
      DisplayWidth = 10
      FieldName = 'TotalQtyY'
      OnGetText = ClientDataSet1QtyCutGetText
    end
    object ClientDataSet1M: TspFloatField
      DisplayLabel = #24635#31859#25968
      DisplayWidth = 10
      FieldName = 'TotalQtyM'
      OnGetText = ClientDataSet1QtyCutGetText
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
