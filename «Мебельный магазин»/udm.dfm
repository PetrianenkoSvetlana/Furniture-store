object DataModule1: TDataModule1
  OldCreateOrder = False
  Height = 458
  Width = 726
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source='#1052#1077#1073#1077#1083 +
      #1100#1085#1099#1081' '#1084#1072#1075#1072#1079#1080#1085'.mdb;Mode=ReadWrite;Persist Security Info=False;Jet ' +
      'OLEDB:System database="";Jet OLEDB:Registry Path="";Jet OLEDB:Da' +
      'tabase Password="";Jet OLEDB:Engine Type=5;Jet OLEDB:Database Lo' +
      'cking Mode=1;Jet OLEDB:Global Partial Bulk Ops=2;Jet OLEDB:Globa' +
      'l Bulk Transactions=1;Jet OLEDB:New Database Password="";Jet OLE' +
      'DB:Create System Database=False;Jet OLEDB:Encrypt Database=False' +
      ';Jet OLEDB:Don'#39't Copy Locale on Compact=False;Jet OLEDB:Compact ' +
      'Without Replica Repair=False;Jet OLEDB:SFP=False'
    LoginPrompt = False
    Mode = cmReadWrite
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 40
    Top = 24
  end
  object DataSource2: TDataSource
    DataSet = ADOqKatalog_mebeli
    Left = 136
    Top = 96
  end
  object DataSource3: TDataSource
    DataSet = ADOqSotrudniki
    Left = 248
    Top = 96
  end
  object MainMenu1: TMainMenu
    Left = 40
    Top = 256
    object N1: TMenuItem
      Caption = #1060#1072#1081#1083
      object N4: TMenuItem
        Caption = #1054' '#1087#1088#1086#1075#1088#1072#1084#1084#1077
        OnClick = N4Click
      end
    end
    object N2: TMenuItem
      Caption = #1054#1090#1095#1077#1090#1099
      OnClick = N2Click
    end
    object N3: TMenuItem
      Caption = #1042#1099#1093#1086#1076
      OnClick = N3Click
    end
  end
  object DataSource1: TDataSource
    DataSet = ADOqZakaz
    Left = 40
    Top = 96
  end
  object DataSource4: TDataSource
    DataSet = ADOOtdel
    Left = 360
    Top = 96
  end
  object ADOqZakaz: TADODataSet
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    CommandText = 'SELECT *  FROM qZakaz'#13#10
    Parameters = <>
    Left = 40
    Top = 168
    object ADOqZakazKod_Zakaza: TAutoIncField
      FieldName = 'Kod_Zakaza'
      ReadOnly = True
    end
    object ADOqZakazKod_cheka: TIntegerField
      FieldName = 'Kod_cheka'
    end
    object ADOqZakazFamiliaZak: TWideStringField
      FieldName = 'FamiliaZak'
      Size = 255
    end
    object ADOqZakazImyaZak: TWideStringField
      FieldName = 'ImyaZak'
      Size = 255
    end
    object ADOqZakazOtchestvoZak: TWideStringField
      FieldName = 'OtchestvoZak'
      Size = 255
    end
    object ADOqZakazAdresZak: TWideStringField
      FieldName = 'AdresZak'
      Size = 255
    end
    object ADOqZakazKod_sotrudnika: TIntegerField
      FieldName = 'Kod_sotrudnika'
    end
    object ADOqZakazKod_mebeli: TIntegerField
      FieldName = 'Kod_mebeli'
    end
    object ADOqZakazKolichestvo: TIntegerField
      FieldName = 'Kolichestvo'
    end
    object ADOqZakazData_podachi_zayavleniay: TDateTimeField
      FieldName = 'Data_podachi_zayavleniay'
    end
    object ADOqZakazData_dostavki: TDateTimeField
      FieldName = 'Data_dostavki'
    end
    object ADOqZakazSumma: TIntegerField
      FieldName = 'Summa'
    end
  end
  object ADOqKatalog_mebeli: TADODataSet
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    CommandText = 'SELECT * FROM qKatalog_mebeli'
    Parameters = <>
    Left = 136
    Top = 168
    object ADOqKatalog_mebeliKod_mebeli: TAutoIncField
      FieldName = 'Kod_mebeli'
      ReadOnly = True
    end
    object ADOqKatalog_mebeliKod_otdela: TIntegerField
      FieldName = 'Kod_otdela'
    end
    object ADOqKatalog_mebeliOtdel: TStringField
      FieldKind = fkLookup
      FieldName = 'Otdel'
      LookupDataSet = ADOOtdel
      LookupKeyFields = 'Kod_otdela'
      LookupResultField = 'Otdel'
      KeyFields = 'Kod_otdela'
      Lookup = True
    end
    object ADOqKatalog_mebeliNaimenovanie_tovara: TWideStringField
      FieldName = 'Naimenovanie_tovara'
      Size = 255
    end
    object ADOqKatalog_mebeliDlina: TIntegerField
      FieldName = 'Dlina'
    end
    object ADOqKatalog_mebeliShirina: TIntegerField
      FieldName = 'Shirina'
    end
    object ADOqKatalog_mebeliVisota: TIntegerField
      FieldName = 'Visota'
    end
    object ADOqKatalog_mebeliMaterial: TWideStringField
      FieldName = 'Material'
      Size = 255
    end
    object ADOqKatalog_mebeliCvet: TWideStringField
      FieldName = 'Cvet'
      Size = 255
    end
    object ADOqKatalog_mebeliStoimost: TWideStringField
      FieldName = 'Stoimost'
      Size = 255
    end
    object ADOqKatalog_mebeliIzgotovitel: TWideStringField
      FieldName = 'Izgotovitel'
      Size = 255
    end
  end
  object ADOqSotrudniki: TADODataSet
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    CommandText = 'SELECT * FROM qSotrudniki'#13#10
    Parameters = <>
    Left = 248
    Top = 168
    object ADOqSotrudnikiKod_sotrudnika: TAutoIncField
      FieldName = 'Kod_sotrudnika'
      ReadOnly = True
    end
    object ADOqSotrudnikiFIO: TWideStringField
      FieldName = 'FIO'
      Size = 255
    end
    object ADOqSotrudnikiData_rojdenia: TDateTimeField
      FieldName = 'Data_rojdenia'
    end
    object ADOqSotrudnikiDoljnost: TWideStringField
      FieldName = 'Doljnost'
      Size = 255
    end
    object ADOqSotrudnikiStaj_raboty: TIntegerField
      FieldName = 'Staj_raboty'
    end
  end
  object ADOOtdel: TADODataSet
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    CommandText = 'SELECT * FROM Otdel'#13#10
    Parameters = <>
    Left = 360
    Top = 168
    object ADOOtdelKod_otdela: TAutoIncField
      FieldName = 'Kod_otdela'
      ReadOnly = True
    end
    object ADOOtdelOtdel: TWideStringField
      FieldName = 'Otdel'
      Size = 255
    end
  end
  object ADOdr: TADODataSet
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    CommandText = 
      'SELECT qChek.*, qKatalog_mebeli.*, Otdel.*, qSotrudniki.*  FROM ' +
      'qChek, qKatalog_mebeli, Otdel, qSotrudniki WHERE (qChek.Kod_sotr' +
      'udnika=qSotrudniki.Kod_sotrudnika) AND (qChek.Kod_mebeli=qKatalo' +
      'g_mebeli.Kod_mebeli) AND (qKatalog_mebeli.Kod_otdela=Otdel.Kod_o' +
      'tdela)'
    Parameters = <>
    Left = 464
    Top = 168
    object ADOdrKod_cheka: TAutoIncField
      FieldName = 'Kod_cheka'
      ReadOnly = True
    end
    object ADOdrqChekKod_mebeli: TIntegerField
      FieldName = 'qChek.Kod_mebeli'
    end
    object ADOdrFamiliaZak: TWideStringField
      FieldName = 'FamiliaZak'
      Size = 255
    end
    object ADOdrImyaZak: TWideStringField
      FieldName = 'ImyaZak'
      Size = 255
    end
    object ADOdrOtchestvoZak: TWideStringField
      FieldName = 'OtchestvoZak'
      Size = 255
    end
    object ADOdrAdresZak: TWideStringField
      FieldName = 'AdresZak'
      Size = 255
    end
    object ADOdrqChekKod_sotrudnika: TIntegerField
      FieldName = 'qChek.Kod_sotrudnika'
    end
    object ADOdrKolichestvo: TIntegerField
      FieldName = 'Kolichestvo'
    end
    object ADOdrData_podachi_zayavleniay: TDateTimeField
      FieldName = 'Data_podachi_zayavleniay'
    end
    object ADOdrData_dostavki: TDateTimeField
      FieldName = 'Data_dostavki'
    end
    object ADOdrSumma: TIntegerField
      FieldName = 'Summa'
    end
    object ADOdrqKatalog_mebeliKod_mebeli: TAutoIncField
      FieldName = 'qKatalog_mebeli.Kod_mebeli'
      ReadOnly = True
    end
    object ADOdrqKatalog_mebeliKod_otdela: TIntegerField
      FieldName = 'qKatalog_mebeli.Kod_otdela'
    end
    object ADOdrNaimenovanie_tovara: TWideStringField
      FieldName = 'Naimenovanie_tovara'
      Size = 255
    end
    object ADOdrDlina: TIntegerField
      FieldName = 'Dlina'
    end
    object ADOdrShirina: TIntegerField
      FieldName = 'Shirina'
    end
    object ADOdrVisota: TIntegerField
      FieldName = 'Visota'
    end
    object ADOdrMaterial: TWideStringField
      FieldName = 'Material'
      Size = 255
    end
    object ADOdrCvet: TWideStringField
      FieldName = 'Cvet'
      Size = 255
    end
    object ADOdrStoimost: TWideStringField
      FieldName = 'Stoimost'
      Size = 255
    end
    object ADOdrIzgotovitel: TWideStringField
      FieldName = 'Izgotovitel'
      Size = 255
    end
    object ADOdrOtdelKod_otdela: TAutoIncField
      FieldName = 'Otdel.Kod_otdela'
      ReadOnly = True
    end
    object ADOdrOtdel: TWideStringField
      FieldName = 'Otdel'
      Size = 255
    end
    object ADOdrqSotrudnikiKod_sotrudnika: TAutoIncField
      FieldName = 'qSotrudniki.Kod_sotrudnika'
      ReadOnly = True
    end
    object ADOdrFIO: TWideStringField
      FieldName = 'FIO'
      Size = 255
    end
    object ADOdrData_rojdenia: TDateTimeField
      FieldName = 'Data_rojdenia'
    end
    object ADOdrDoljnost: TWideStringField
      FieldName = 'Doljnost'
      Size = 255
    end
    object ADOdrStaj_raboty: TIntegerField
      FieldName = 'Staj_raboty'
    end
  end
  object DataSource5: TDataSource
    DataSet = ADOdr
    Left = 464
    Top = 96
  end
  object DataSource6: TDataSource
    DataSet = ADOqChek
    Left = 568
    Top = 96
  end
  object ADOqChek: TADODataSet
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    CommandText = 'SELECT * FROM qChek'
    Parameters = <>
    Left = 568
    Top = 168
    object ADOqChekKod_cheka: TAutoIncField
      FieldName = 'Kod_cheka'
      ReadOnly = True
    end
    object ADOqChekKod_mebeli: TIntegerField
      FieldName = 'Kod_mebeli'
    end
    object ADOqChekFamiliaZak: TWideStringField
      FieldName = 'FamiliaZak'
      Size = 255
    end
    object ADOqChekImyaZak: TWideStringField
      FieldName = 'ImyaZak'
      Size = 255
    end
    object ADOqChekOtchestvoZak: TWideStringField
      FieldName = 'OtchestvoZak'
      Size = 255
    end
    object ADOqChekAdresZak: TWideStringField
      FieldName = 'AdresZak'
      Size = 255
    end
    object ADOqChekKod_sotrudnika: TIntegerField
      FieldName = 'Kod_sotrudnika'
    end
    object ADOqChekKolichestvo: TIntegerField
      FieldName = 'Kolichestvo'
    end
    object ADOqChekData_podachi_zayavleniay: TDateTimeField
      FieldName = 'Data_podachi_zayavleniay'
    end
    object ADOqChekData_dostavki: TDateTimeField
      FieldName = 'Data_dostavki'
    end
    object ADOqChekSumma: TIntegerField
      FieldName = 'Summa'
    end
  end
  object qDel: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 136
    Top = 256
  end
end
