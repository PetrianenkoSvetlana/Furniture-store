object Form3: TForm3
  Left = 0
  Top = 0
  Caption = #1060#1086#1088#1084#1072' '#1074#1099#1073#1086#1088#1072' '#1090#1086#1074#1072#1088#1072
  ClientHeight = 499
  ClientWidth = 774
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object GridPanel1: TGridPanel
    Left = 0
    Top = 0
    Width = 774
    Height = 499
    Align = alClient
    ColumnCollection = <
      item
        Value = 50.000000000000000000
      end
      item
        Value = 50.000000000000000000
      end>
    ControlCollection = <
      item
        Column = 0
        Control = Edit1
        Row = 1
      end
      item
        Column = 0
        ColumnSpan = 2
        Control = DBGrid1
        Row = 2
      end
      item
        Column = 1
        Control = GridPanel2
        Row = 1
      end
      item
        Column = 1
        Control = Label2
        Row = 0
      end
      item
        Column = 0
        Control = GridPanel3
        Row = 0
      end
      item
        Column = 0
        Control = Button4
        Row = 3
      end
      item
        Column = 1
        Control = Button5
        Row = 3
      end>
    RowCollection = <
      item
        SizeStyle = ssAbsolute
        Value = 28.000000000000000000
      end
      item
        SizeStyle = ssAbsolute
        Value = 55.000000000000000000
      end
      item
        Value = 100.000000000000000000
      end
      item
        SizeStyle = ssAbsolute
        Value = 30.000000000000000000
      end>
    TabOrder = 0
    object Edit1: TEdit
      Left = 1
      Top = 29
      Width = 386
      Height = 55
      Align = alClient
      TabOrder = 0
      OnChange = Edit1Change
      ExplicitHeight = 21
    end
    object DBGrid1: TDBGrid
      Left = 1
      Top = 84
      Width = 772
      Height = 384
      Align = alClient
      DataSource = DataModule1.DataSource2
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'Kod_mebeli'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Otdel'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Naimenovanie_tovara'
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Dlina'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Shirina'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Visota'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Material'
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Cvet'
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Stoimost'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Izgotovitel'
          Width = 100
          Visible = True
        end>
    end
    object GridPanel2: TGridPanel
      Left = 387
      Top = 29
      Width = 386
      Height = 55
      Align = alClient
      ColumnCollection = <
        item
          SizeStyle = ssAbsolute
          Value = 100.000000000000000000
        end
        item
          SizeStyle = ssAbsolute
          Value = 100.000000000000000000
        end
        item
          SizeStyle = ssAbsolute
          Value = 100.000000000000000000
        end
        item
          SizeStyle = ssAbsolute
          Value = 100.000000000000000000
        end>
      ControlCollection = <
        item
          Column = 3
          Control = Button1
          Row = 0
        end
        item
          Column = 3
          Control = Button2
          Row = 1
        end
        item
          Column = 0
          Control = Label3
          Row = 0
        end
        item
          Column = 1
          Control = Label4
          Row = 0
        end
        item
          Column = 2
          Control = Label5
          Row = 0
        end
        item
          Column = 0
          Control = Edit2
          Row = 1
        end
        item
          Column = 1
          Control = Edit3
          Row = 1
        end
        item
          Column = 2
          Control = Edit4
          Row = 1
        end>
      RowCollection = <
        item
          Value = 50.000000000000000000
        end
        item
          Value = 50.000000000000000000
        end>
      TabOrder = 2
      object Button1: TButton
        Left = 301
        Top = 1
        Width = 100
        Height = 26
        Align = alClient
        Caption = #1055#1086#1076#1086#1073#1088#1072#1090#1100
        TabOrder = 0
        OnClick = Button1Click
      end
      object Button2: TButton
        Left = 301
        Top = 27
        Width = 100
        Height = 27
        Align = alClient
        Caption = #1057#1073#1088#1086#1089
        TabOrder = 1
        OnClick = Button2Click
      end
      object Label3: TLabel
        Left = 1
        Top = 1
        Width = 100
        Height = 26
        Align = alClient
        Alignment = taCenter
        Caption = #1044#1083#1080#1085#1072
        ExplicitWidth = 32
        ExplicitHeight = 13
      end
      object Label4: TLabel
        Left = 101
        Top = 1
        Width = 100
        Height = 26
        Align = alClient
        Alignment = taCenter
        Caption = #1064#1080#1088#1080#1085#1072
        ExplicitWidth = 40
        ExplicitHeight = 13
      end
      object Label5: TLabel
        Left = 201
        Top = 1
        Width = 100
        Height = 26
        Align = alClient
        Alignment = taCenter
        Caption = #1042#1099#1089#1086#1090#1072
        ExplicitWidth = 37
        ExplicitHeight = 13
      end
      object Edit2: TEdit
        Left = 1
        Top = 27
        Width = 100
        Height = 27
        Align = alClient
        TabOrder = 2
        ExplicitHeight = 21
      end
      object Edit3: TEdit
        Left = 101
        Top = 27
        Width = 100
        Height = 27
        Align = alClient
        TabOrder = 3
        ExplicitHeight = 21
      end
      object Edit4: TEdit
        Left = 201
        Top = 27
        Width = 100
        Height = 27
        Align = alClient
        TabOrder = 4
        ExplicitHeight = 21
      end
    end
    object Label2: TLabel
      Left = 387
      Top = 1
      Width = 386
      Height = 28
      Align = alClient
      Caption = #1055#1086#1076#1073#1086#1088#1082#1072' '#1084#1077#1073#1077#1083#1080' '#1087#1086' '#1076#1083#1080#1085#1077', '#1096#1080#1088#1080#1085#1077', '#1074#1099#1089#1086#1090#1077':'
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitWidth = 389
      ExplicitHeight = 22
    end
    object GridPanel3: TGridPanel
      Left = 1
      Top = 1
      Width = 386
      Height = 28
      Align = alClient
      ColumnCollection = <
        item
          Value = 69.999999999999910000
        end
        item
          Value = 30.000000000000080000
        end>
      ControlCollection = <
        item
          Column = 0
          Control = Label1
          Row = 0
        end
        item
          Column = 1
          Control = Button3
          Row = 0
        end>
      RowCollection = <
        item
          Value = 100.000000000000000000
        end>
      TabOrder = 3
      object Label1: TLabel
        Left = 1
        Top = 1
        Width = 268
        Height = 26
        Align = alClient
        Caption = #1055#1086#1080#1089#1082' '#1090#1086#1074#1072#1088#1072':'
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitWidth = 124
        ExplicitHeight = 22
      end
      object Button3: TButton
        Left = 269
        Top = 1
        Width = 116
        Height = 26
        Align = alClient
        Caption = #1057#1073#1088#1086#1089
        TabOrder = 0
        OnClick = Button3Click
      end
    end
    object Button4: TButton
      Left = 1
      Top = 468
      Width = 386
      Height = 30
      Align = alClient
      Caption = #1042#1099#1076#1072#1090#1100' '#1090#1086#1074#1072#1088
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
      TabOrder = 4
      OnClick = Button4Click
    end
    object Button5: TButton
      Left = 387
      Top = 468
      Width = 386
      Height = 30
      Align = alClient
      Caption = #1054#1090#1084#1077#1085#1072
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
      TabOrder = 5
      OnClick = Button5Click
    end
  end
end
