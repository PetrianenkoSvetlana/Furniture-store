object Form6: TForm6
  Left = 0
  Top = 0
  Caption = #1042#1099#1073#1086#1088' '#1089#1086#1090#1088#1091#1076#1085#1080#1082#1072
  ClientHeight = 421
  ClientWidth = 687
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object GridPanel1: TGridPanel
    Left = 0
    Top = 0
    Width = 687
    Height = 421
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
        ColumnSpan = 2
        Control = DBGrid1
        Row = 0
      end
      item
        Column = 0
        Control = Button1
        Row = 1
      end
      item
        Column = 1
        Control = Button2
        Row = 1
      end>
    RowCollection = <
      item
        Value = 100.000000000000000000
      end
      item
        SizeStyle = ssAbsolute
        Value = 41.000000000000000000
      end>
    TabOrder = 0
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 685
      Height = 378
      Align = alClient
      DataSource = DataModule1.DataSource3
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'Kod_sotrudnika'
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
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Staj_raboty'
          Visible = True
        end>
    end
    object Button1: TButton
      Left = 1
      Top = 379
      Width = 342
      Height = 41
      Align = alClient
      Caption = #1042#1099#1073#1088#1072#1090#1100' '#1089#1086#1090#1088#1091#1076#1085#1080#1082#1072
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
      TabOrder = 1
      OnClick = Button1Click
      ExplicitLeft = -5
      ExplicitTop = 385
    end
    object Button2: TButton
      Left = 343
      Top = 379
      Width = 343
      Height = 41
      Align = alClient
      Caption = #1047#1072#1082#1088#1099#1090#1100
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
      TabOrder = 2
      OnClick = Button2Click
    end
  end
end
