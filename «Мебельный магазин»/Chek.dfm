object Form4: TForm4
  Left = 0
  Top = 0
  Caption = #1060#1086#1088#1084#1080#1088#1086#1074#1072#1085#1080#1077' '#1095#1077#1082#1072
  ClientHeight = 483
  ClientWidth = 774
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 544
    Top = 311
    Width = 167
    Height = 19
    Caption = #1044#1072#1090#1072' '#1087#1086#1076#1072#1095#1080' '#1079#1072#1103#1074#1083#1077#1085#1080#1103
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 544
    Top = 368
    Width = 110
    Height = 19
    Caption = #1044#1072#1090#1072' '#1076#1086#1089#1090#1072#1074#1082#1080
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 345
    Top = 375
    Width = 150
    Height = 13
    Caption = #1042#1074#1077#1076#1080#1090#1077' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1090#1086#1074#1072#1088#1086#1074
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 774
    Height = 297
    Align = alTop
    DataSource = DataModule1.DataSource5
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Kod_cheka'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'qChek.Kod_mebeli'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FamiliaZak'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ImyaZak'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OtchestvoZak'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'AdresZak'
        Width = 190
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Kolichestvo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Data_podachi_zayavleniay'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Data_dostavki'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Summa'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'qKatalog_mebeli.Kod_otdela'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Otdel'
        Width = 100
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
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Cvet'
        Width = 100
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
      end
      item
        Expanded = False
        FieldName = 'qChek.Kod_sotrudnika'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FIO'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Data_rojdenia'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Doljnost'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Staj_raboty'
        Visible = True
      end>
  end
  object Button1: TButton
    Left = 168
    Top = 310
    Width = 171
    Height = 25
    Caption = #1042#1074#1077#1089#1090#1080' '#1076#1072#1085#1085#1099#1077' '#1082#1083#1080#1077#1085#1090#1072
    Enabled = False
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 8
    Top = 310
    Width = 145
    Height = 25
    Caption = #1052#1103#1075#1082#1072#1103' '#1084#1077#1073#1077#1083#1100
    TabOrder = 2
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 8
    Top = 341
    Width = 145
    Height = 25
    Caption = #1052#1077#1073#1077#1083#1100' '#1076#1083#1103' '#1093#1088#1072#1085#1077#1085#1080#1103
    TabOrder = 3
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 8
    Top = 372
    Width = 145
    Height = 25
    Caption = #1052#1077#1073#1077#1083#1100' '#1076#1083#1103' '#1087#1088#1080#1077#1084#1072' '#1087#1080#1097#1080
    TabOrder = 4
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 8
    Top = 403
    Width = 145
    Height = 25
    Caption = #1052#1077#1073#1077#1083#1100' '#1076#1083#1103' '#1088#1072#1073#1086#1090#1099
    TabOrder = 5
    OnClick = Button5Click
  end
  object Button6: TButton
    Left = 168
    Top = 341
    Width = 171
    Height = 25
    Caption = #1042#1099#1073#1088#1072#1090#1100' '#1089#1086#1090#1088#1091#1076#1085#1080#1082#1072
    Enabled = False
    TabOrder = 6
    OnClick = Button6Click
  end
  object DateTimePicker1: TDateTimePicker
    Left = 544
    Top = 336
    Width = 186
    Height = 21
    Date = 43985.000000000000000000
    Time = 0.007724120368948206
    TabOrder = 7
  end
  object DateTimePicker2: TDateTimePicker
    Left = 544
    Top = 393
    Width = 186
    Height = 21
    Date = 43985.000000000000000000
    Time = 0.007724351853539702
    TabOrder = 8
  end
  object Button7: TButton
    Left = 544
    Top = 440
    Width = 186
    Height = 25
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1076#1072#1085#1085#1099#1077' '#1074' '#1095#1077#1082
    Enabled = False
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 9
    OnClick = Button7Click
  end
  object Edit1: TEdit
    Left = 168
    Top = 372
    Width = 171
    Height = 21
    TabOrder = 10
  end
  object Edit2: TEdit
    Left = 168
    Top = 403
    Width = 171
    Height = 21
    ReadOnly = True
    TabOrder = 11
  end
  object Button8: TButton
    Left = 345
    Top = 403
    Width = 120
    Height = 25
    Caption = #1055#1086#1089#1095#1080#1090#1080#1090#1072#1090#1100' '#1089#1091#1084#1084#1091
    Enabled = False
    TabOrder = 12
    OnClick = Button8Click
  end
  object Button9: TButton
    Left = 8
    Top = 450
    Width = 487
    Height = 25
    Caption = #1054#1090#1084#1077#1085#1080#1090#1100' '#1079#1072#1082#1072#1079
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    TabOrder = 13
    OnClick = Button9Click
  end
  object MainMenu1: TMainMenu
    Left = 408
    Top = 322
    object N4: TMenuItem
      Caption = #1055#1088#1077#1076#1074#1072#1088#1080#1090#1077#1083#1100#1085#1099#1081' '#1087#1088#1086#1089#1084#1086#1090#1088
      OnClick = N4Click
    end
    object N1: TMenuItem
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1095#1077#1082
      object PDF1: TMenuItem
        Caption = 'PDF'
        OnClick = PDF1Click
      end
      object Word1: TMenuItem
        Caption = 'Word'
        OnClick = Word1Click
      end
      object HTML1: TMenuItem
        Caption = 'HTML'
        OnClick = HTML1Click
      end
    end
    object N2: TMenuItem
      Caption = #1055#1077#1095#1072#1090#1072#1090#1100' '#1095#1077#1082
      OnClick = N2Click
    end
    object N3: TMenuItem
      Caption = #1063#1077#1082' '#1086#1087#1083#1072#1095#1077#1085
      OnClick = N3Click
    end
  end
end
