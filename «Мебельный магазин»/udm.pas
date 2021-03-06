unit udm;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB, Vcl.Menus;

type
  TDataModule1 = class(TDataModule)
    ADOConnection1: TADOConnection;
    DataSource2: TDataSource;
    DataSource3: TDataSource;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    DataSource1: TDataSource;
    DataSource4: TDataSource;
    ADOqZakaz: TADODataSet;
    ADOqKatalog_mebeli: TADODataSet;
    ADOqSotrudniki: TADODataSet;
    ADOOtdel: TADODataSet;
    ADOqKatalog_mebeliKod_mebeli: TAutoIncField;
    ADOqKatalog_mebeliKod_otdela: TIntegerField;
    ADOqKatalog_mebeliNaimenovanie_tovara: TWideStringField;
    ADOqKatalog_mebeliDlina: TIntegerField;
    ADOqKatalog_mebeliShirina: TIntegerField;
    ADOqKatalog_mebeliVisota: TIntegerField;
    ADOqKatalog_mebeliMaterial: TWideStringField;
    ADOqKatalog_mebeliCvet: TWideStringField;
    ADOqKatalog_mebeliStoimost: TWideStringField;
    ADOqKatalog_mebeliIzgotovitel: TWideStringField;
    ADOqSotrudnikiKod_sotrudnika: TAutoIncField;
    ADOqSotrudnikiFIO: TWideStringField;
    ADOqSotrudnikiData_rojdenia: TDateTimeField;
    ADOqSotrudnikiDoljnost: TWideStringField;
    ADOqSotrudnikiStaj_raboty: TIntegerField;
    ADOOtdelKod_otdela: TAutoIncField;
    ADOOtdelOtdel: TWideStringField;
    ADOqKatalog_mebeliOtdel: TStringField;
    ADOdr: TADODataSet;
    DataSource5: TDataSource;
    ADOdrKod_cheka: TAutoIncField;
    ADOdrqChekKod_mebeli: TIntegerField;
    ADOdrFamiliaZak: TWideStringField;
    ADOdrImyaZak: TWideStringField;
    ADOdrOtchestvoZak: TWideStringField;
    ADOdrAdresZak: TWideStringField;
    ADOdrqChekKod_sotrudnika: TIntegerField;
    ADOdrKolichestvo: TIntegerField;
    ADOdrData_podachi_zayavleniay: TDateTimeField;
    ADOdrData_dostavki: TDateTimeField;
    ADOdrSumma: TIntegerField;
    ADOdrqKatalog_mebeliKod_mebeli: TAutoIncField;
    ADOdrqKatalog_mebeliKod_otdela: TIntegerField;
    ADOdrNaimenovanie_tovara: TWideStringField;
    ADOdrDlina: TIntegerField;
    ADOdrShirina: TIntegerField;
    ADOdrVisota: TIntegerField;
    ADOdrMaterial: TWideStringField;
    ADOdrCvet: TWideStringField;
    ADOdrStoimost: TWideStringField;
    ADOdrIzgotovitel: TWideStringField;
    ADOdrOtdelKod_otdela: TAutoIncField;
    ADOdrOtdel: TWideStringField;
    ADOdrqSotrudnikiKod_sotrudnika: TAutoIncField;
    ADOdrFIO: TWideStringField;
    ADOdrData_rojdenia: TDateTimeField;
    ADOdrDoljnost: TWideStringField;
    ADOdrStaj_raboty: TIntegerField;
    ADOqZakazKod_Zakaza: TAutoIncField;
    ADOqZakazFamiliaZak: TWideStringField;
    ADOqZakazImyaZak: TWideStringField;
    ADOqZakazOtchestvoZak: TWideStringField;
    ADOqZakazAdresZak: TWideStringField;
    ADOqZakazKod_sotrudnika: TIntegerField;
    ADOqZakazKod_mebeli: TIntegerField;
    ADOqZakazKolichestvo: TIntegerField;
    ADOqZakazData_podachi_zayavleniay: TDateTimeField;
    ADOqZakazData_dostavki: TDateTimeField;
    ADOqZakazSumma: TIntegerField;
    ADOqZakazKod_cheka: TIntegerField;
    DataSource6: TDataSource;
    ADOqChek: TADODataSet;
    ADOqChekKod_cheka: TAutoIncField;
    ADOqChekKod_mebeli: TIntegerField;
    ADOqChekFamiliaZak: TWideStringField;
    ADOqChekImyaZak: TWideStringField;
    ADOqChekOtchestvoZak: TWideStringField;
    ADOqChekAdresZak: TWideStringField;
    ADOqChekKod_sotrudnika: TIntegerField;
    ADOqChekKolichestvo: TIntegerField;
    ADOqChekData_podachi_zayavleniay: TDateTimeField;
    ADOqChekData_dostavki: TDateTimeField;
    ADOqChekSumma: TIntegerField;
    qDel: TADOQuery;
    procedure N3Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule1: TDataModule1;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses ufMain, uOPR, Otchet;

{$R *.dfm}

procedure TDataModule1.N2Click(Sender: TObject);
begin
Form9.Show;
end;

procedure TDataModule1.N3Click(Sender: TObject);
begin
 Form1.Close;
end;

procedure TDataModule1.N4Click(Sender: TObject);
begin
OPR.Show;
end;

end.
