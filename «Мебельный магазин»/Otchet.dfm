object Form9: TForm9
  Left = 0
  Top = 0
  AutoSize = True
  Caption = #1054#1090#1095#1077#1090
  ClientHeight = 449
  ClientWidth = 767
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 0
    Top = 0
    Width = 767
    Height = 22
    Align = alTop
    Caption = #1055#1086#1080#1089#1082
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    ExplicitWidth = 53
  end
  object Edit1: TEdit
    Left = 0
    Top = 22
    Width = 767
    Height = 21
    Align = alTop
    TabOrder = 0
    OnChange = Edit1Change
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 43
    Width = 767
    Height = 406
    Align = alClient
    DataSource = DataModule1.DataSource1
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Kod_Zakaza'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Kod_cheka'
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
        FieldName = 'Kod_sotrudnika'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Kod_mebeli'
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
      end>
  end
  object MainMenu1: TMainMenu
    Left = 448
    Top = 320
    object N1: TMenuItem
      Caption = #1055#1088#1077#1076#1074#1072#1088#1080#1090#1077#1083#1100#1085#1099#1081' '#1087#1088#1086#1089#1084#1086#1090#1088
      OnClick = N1Click
    end
    object N2: TMenuItem
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1086#1090#1095#1077#1090
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
    object N3: TMenuItem
      Caption = #1055#1077#1095#1072#1090#1072#1090#1100' '#1086#1090#1095#1077#1090
      OnClick = N3Click
    end
    object N4: TMenuItem
      Caption = #1042#1099#1093#1086#1076
      OnClick = N4Click
    end
  end
end
