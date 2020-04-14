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
    Aggregates = <>
    FieldDefs = <>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Dictionary = <>
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
