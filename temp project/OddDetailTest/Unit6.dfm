object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 536
  ClientWidth = 1469
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1469
    Height = 35
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
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
    Top = 35
    Width = 1469
    Height = 501
    Align = alClient
    TabOrder = 1
    object cxGrid2spGridDBBandedTableView1: TspGridDBBandedTableView
      Navigator.Buttons.CustomButtons = <>
      OnEditKeyPress = cxGrid2spGridDBBandedTableView1EditKeyPress
      DataController.DataSource = DataSource1
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Kind = skSum
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GroupByBox = False
      OptionsView.ValidateDataSetConstraint = False
      Styles.Content = cxStyle1
      Bands = <
        item
          Caption = #21830#21697
          Width = 116
        end
        item
          Caption = #25972#25903
          Width = 242
        end
        item
          Caption = #38646#22836
          Width = 346
        end
        item
          Caption = #23454#38469#20837#24211
          Width = 477
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
        Width = 100
        Position.BandIndex = 1
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxGrid2spGridDBBandedTableView1SpecM: TspGridDBBandedColumn
        DataBinding.FieldName = 'SpecM'
        HeaderAlignmentHorz = taCenter
        Width = 100
        Position.BandIndex = 1
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cxGrid2spGridDBBandedTableView1Piece: TspGridDBBandedColumn
        DataBinding.FieldName = 'Piece'
        HeaderAlignmentHorz = taCenter
        Width = 97
        Position.BandIndex = 1
        Position.ColIndex = 2
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
        Caption = #38646#22836#21512#35745
        DataBinding.FieldName = 'OddTotal'
        PropertiesClassName = 'TcxOddTextEditProperties'
        Properties.ReadOnly = True
        HeaderAlignmentHorz = taCenter
        Width = 120
        Position.BandIndex = 2
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object cxGrid2spGridDBBandedTableView1InDetail: TspGridDBBandedColumn
        Caption = #20837#24211#26126#32454
        DataBinding.FieldName = 'InDetail'
        PropertiesClassName = 'TcxOddTextEditProperties'
        HeaderAlignmentHorz = taCenter
        Width = 145
        Position.BandIndex = 3
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxGrid2spGridDBBandedTableView1QtyY: TspGridDBBandedColumn
        DataBinding.FieldName = 'QtyY'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
        HeaderAlignmentHorz = taCenter
        Width = 66
        Position.BandIndex = 3
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cxGrid2spGridDBBandedTableView1QtyM: TspGridDBBandedColumn
        DataBinding.FieldName = 'QtyM'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
        HeaderAlignmentHorz = taCenter
        Width = 64
        Position.BandIndex = 3
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object cxGrid2spGridDBBandedTableView1Price: TspGridDBBandedColumn
        DataBinding.FieldName = 'Price'
        HeaderAlignmentHorz = taCenter
        Width = 50
        Position.BandIndex = 3
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object cxGrid2spGridDBBandedTableView1Amount: TspGridDBBandedColumn
        DataBinding.FieldName = 'Amount'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
        HeaderAlignmentHorz = taCenter
        Width = 52
        Position.BandIndex = 3
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object cxGrid2spGridDBBandedTableView1TotalPiece: TspGridDBBandedColumn
        DataBinding.FieldName = 'TotalPiece'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
        HeaderAlignmentHorz = taCenter
        Width = 64
        Position.BandIndex = 3
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
    end
    object cxGrid2Level1: TcxGridLevel
      GridView = cxGrid2spGridDBBandedTableView1
    end
  end
  object DataSource1: TDataSource
    DataSet = ClientDataSet1
    Left = 368
    Top = 144
  end
  object ClientDataSet1: TspClientDataSet
    PersistDataPacket.Data = {
      130100009619E0BD01000000180000000D000000000003000000130104556E69
      740100490000000100055749445448020002000A000553706563590800040000
      00000005537065634D0800040000000000055069656365040001000000000004
      4F646459010049000000010005574944544802000200C800044F64644D010049
      000000010005574944544802000200C800084F6464546F74616C010049000000
      010005574944544802000200C80008496E44657461696C010049000000010005
      574944544802000200C80004517479590800040000000000045174794D080004
      0000000000055072696365080004000000000006416D6F756E74080004000000
      00000A546F74616C506965636504000100000000000000}
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
        Name = 'InDetail'
        DataType = ftString
        Size = 200
      end
      item
        Name = 'QtyY'
        DataType = ftFloat
      end
      item
        Name = 'QtyM'
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
        Name = 'TotalPiece'
        DataType = ftInteger
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    BeforeOpen = ClientDataSet1BeforeOpen
    Dictionary = <
      item
        FieldName = 'Unit'
        FieldType = ftString
        Size = 10
        NumericPrecision = 0
        NumericScale = 0
        DisplayWidth = 10
        DisplayLabel = #21333#20301
        GridViewOptions.CommonValidatations = []
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
        GridViewOptions.CommonValidatations = []
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
        GridViewOptions.CommonValidatations = []
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
        GridViewOptions.CommonValidatations = []
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
        GridViewOptions.CommonValidatations = []
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
        GridViewOptions.CommonValidatations = []
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
        GridViewOptions.CommonValidatations = []
        IsAutoGen = False
      end
      item
        FieldName = 'InDetail'
        FieldType = ftString
        Size = 200
        NumericPrecision = 0
        NumericScale = 0
        DisplayWidth = 200
        DisplayLabel = #38144#21806#26126#32454
        GridViewOptions.CommonValidatations = []
        IsAutoGen = False
      end
      item
        FieldName = 'QtyY'
        FieldType = ftFloat
        NumericPrecision = 15
        NumericScale = 0
        Alignment = taRightJustify
        DisplayWidth = 10
        DisplayLabel = #24635#30721#25968
        GridViewOptions.CommonValidatations = []
        IsAutoGen = False
      end
      item
        FieldName = 'QtyM'
        FieldType = ftFloat
        NumericPrecision = 15
        NumericScale = 0
        Alignment = taRightJustify
        DisplayWidth = 10
        DisplayLabel = #24635#31859#25968
        GridViewOptions.CommonValidatations = []
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
        GridViewOptions.CommonValidatations = []
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
        GridViewOptions.CommonValidatations = []
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
        GridViewOptions.CommonValidatations = []
        IsAutoGen = False
      end>
    LinkedComponents = <>
    OnFieldChange = ClientDataSet1FieldChange
    OnSumPredicate = ClientDataSet1SumPredicate
    OnSumData = ClientDataSet1SumData
    Left = 472
    Top = 120
    object ClientDataSet1Unit: TspStringField
      DisplayLabel = #21333#20301
      DisplayWidth = 10
      FieldName = 'Unit'
      Size = 10
    end
    object ClientDataSet1SpecY: TspFloatField
      DisplayLabel = #30721'/'#25903
      DisplayWidth = 10
      FieldName = 'SpecY'
    end
    object ClientDataSet1SpecM: TspFloatField
      DisplayLabel = #31859'/'#25903
      DisplayWidth = 10
      FieldName = 'SpecM'
    end
    object ClientDataSet1Piece: TspIntegerField
      DisplayLabel = #25972#25903#25968
      DisplayWidth = 10
      FieldName = 'Piece'
    end
    object ClientDataSet1OddY: TspStringField
      DisplayLabel = #38646#22836#30721#26126#32454
      DisplayWidth = 100
      FieldName = 'OddY'
      Size = 200
    end
    object ClientDataSet1OddM: TspStringField
      DisplayLabel = #38646#22836#31859#26126#32454
      DisplayWidth = 200
      FieldName = 'OddM'
      Size = 200
    end
    object ClientDataSet1OddTotal: TspStringField
      DisplayLabel = #38646#22836#21512#35745#26126#32454
      DisplayWidth = 200
      FieldName = 'OddTotal'
      Size = 200
    end
    object ClientDataSet1InDetail: TspStringField
      DisplayLabel = #38144#21806#26126#32454
      DisplayWidth = 200
      FieldName = 'InDetail'
      Size = 200
    end
    object ClientDataSet1QtyY: TspFloatField
      DisplayLabel = #24635#30721#25968
      DisplayWidth = 10
      FieldName = 'QtyY'
    end
    object ClientDataSet1QtyM: TspFloatField
      DisplayLabel = #24635#31859#25968
      DisplayWidth = 10
      FieldName = 'QtyM'
    end
    object ClientDataSet1Price: TspFloatField
      DisplayLabel = #21333#20215
      DisplayWidth = 10
      FieldName = 'Price'
    end
    object ClientDataSet1Amount: TspFloatField
      DisplayLabel = #37329#39069
      DisplayWidth = 10
      FieldName = 'Amount'
    end
    object ClientDataSet1TotalPiece: TspIntegerField
      DisplayLabel = #24635#20214#25968
      DisplayWidth = 10
      FieldName = 'TotalPiece'
    end
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 168
    Top = 128
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
    SkinName = 'MoneyTwins'
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
