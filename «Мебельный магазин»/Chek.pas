unit Chek;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.ComCtrls, Vcl.Menus;

type
  TForm4 = class(TForm)
    DBGrid1: TDBGrid;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    DateTimePicker1: TDateTimePicker;
    Label1: TLabel;
    DateTimePicker2: TDateTimePicker;
    Label2: TLabel;
    Button7: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Label3: TLabel;
    Button8: TButton;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    PDF1: TMenuItem;
    Word1: TMenuItem;
    HTML1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    Button9: TButton;
    N4: TMenuItem;
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure PDF1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Word1Click(Sender: TObject);
    procedure HTML1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;
  str: string;

implementation

{$R *.dfm}

uses udm, Zakaz, VSotrud, DobKlient, FR;

procedure TForm4.Button1Click(Sender: TObject);
begin
Form7.Show;
end;

procedure TForm4.Button2Click(Sender: TObject);
begin
if not Button1.Enabled then  Button1.Enabled:=True;
if not Button6.Enabled then  Button6.Enabled:=True;
if not Button7.Enabled then  Button7.Enabled:=True;
if not Button8.Enabled then  Button8.Enabled:=True;
form3.otd:=' and (qKatalog_mebeli.Kod_otdela=1)';
form3.show;
end;

procedure TForm4.Button3Click(Sender: TObject);
begin
if not Button1.Enabled then  Button1.Enabled:=True;
if not Button6.Enabled then  Button6.Enabled:=True;
if not Button7.Enabled then  Button7.Enabled:=True;
if not Button8.Enabled then  Button8.Enabled:=True;
form3.otd:=' and (qKatalog_mebeli.Kod_otdela=2)';
form3.show;
end;

procedure TForm4.Button4Click(Sender: TObject);
begin
if not Button1.Enabled then  Button1.Enabled:=True;
if not Button6.Enabled then  Button6.Enabled:=True;
if not Button7.Enabled then  Button7.Enabled:=True;
if not Button8.Enabled then  Button8.Enabled:=True;
form3.otd:=' and (qKatalog_mebeli.Kod_otdela=3)';
form3.show;
end;

procedure TForm4.Button5Click(Sender: TObject);
begin
if not Button1.Enabled then  Button1.Enabled:=True;
if not Button6.Enabled then  Button6.Enabled:=True;
if not Button7.Enabled then  Button7.Enabled:=True;
if not Button8.Enabled then  Button8.Enabled:=True;
form3.otd:=' and (qKatalog_mebeli.Kod_otdela=4)';
form3.show;
end;

procedure TForm4.Button6Click(Sender: TObject);
begin
Form6.Show;
end;

procedure TForm4.Button7Click(Sender: TObject);
begin
DataModule1.ADOqChek.Edit;
DataModule1.ADOqChek.FieldByName('Data_podachi_zayavleniay').Value:=DateTimePicker1.Date;
DataModule1.ADOqChek.FieldByName('Data_dostavki').Value:=DateTimePicker2.Date;
DataModule1.ADOqChek.FieldByName('Kolichestvo').Value:=Edit1.Text;
DataModule1.ADOqChek.FieldByName('Summa').Value:=Edit2.Text;
DataModule1.ADOqChek.Post;
DataModule1.ADOqChek.Close;
DataModule1.ADOqChek.Open;
DataModule1.ADOdr.Close;
DataModule1.ADOdr.Open;
end;

procedure TForm4.Button8Click(Sender: TObject);
begin
Edit2.Text:=IntToStr(DataModule1.ADOdr.FieldByName('Stoimost').Value*StrToInt(Edit1.Text));
end;

procedure TForm4.Button9Click(Sender: TObject);
begin
if Application.MessageBox(pchar('?? ???????,??? ?????? ??????? ??????'), 'qChek', MB_YESNO)=IDYES then
  begin
    DataModule1.qDel.SQL.clear;
    DataModule1.qDel.sql.add('Delete from qChek');
    DataModule1.qDel.ExecSQL;
    DataModule1.ADOqChek.Close;
    DataModule1.ADOqChek.Open;
    DataModule1.ADOdr.Close;
    DataModule1.ADOdr.Open;
  end;
Form4.Close;
end;

procedure TForm4.FormCreate(Sender: TObject);
begin
  DateTimePicker1.Date:=date();
  DateTimePicker2.Date:=date();
end;

procedure TForm4.HTML1Click(Sender: TObject);
begin
Form8.frxReport1.ShowReport();
Form8.frxReport1.Export(Form8.frxHTML5DivExport1);
end;

procedure TForm4.N2Click(Sender: TObject);
begin
Form8.frxReport1.ShowReport();
Form8.frxReport1.Print;
end;

procedure TForm4.N3Click(Sender: TObject);
begin
DataModule1.ADOqZakaz.Insert;
DataModule1.ADOqZakaz.FieldByName('Kod_cheka').Value:=DataModule1.ADOqChek.FieldByName('Kod_cheka').Value;
DataModule1.ADOqZakaz.FieldByName('Kod_mebeli').Value:=DataModule1.ADOqChek.FieldByName('Kod_mebeli').Value;
DataModule1.ADOqZakaz.FieldByName('FamiliaZak').Value:=DataModule1.ADOqChek.FieldByName('FamiliaZak').Value;
DataModule1.ADOqZakaz.FieldByName('ImyaZak').Value:=DataModule1.ADOqChek.FieldByName('ImyaZak').Value;
DataModule1.ADOqZakaz.FieldByName('OtchestvoZak').Value:=DataModule1.ADOqChek.FieldByName('OtchestvoZak').Value;
DataModule1.ADOqZakaz.FieldByName('AdresZak').Value:=DataModule1.ADOqChek.FieldByName('AdresZak').Value;
DataModule1.ADOqZakaz.FieldByName('Kod_sotrudnika').Value:=DataModule1.ADOqChek.FieldByName('Kod_sotrudnika').Value;
DataModule1.ADOqZakaz.FieldByName('Kolichestvo').Value:=DataModule1.ADOqChek.FieldByName('Kolichestvo').Value;
DataModule1.ADOqZakaz.FieldByName('Data_podachi_zayavleniay').Value:=DataModule1.ADOqChek.FieldByName('Data_podachi_zayavleniay').Value;
DataModule1.ADOqZakaz.FieldByName('Data_dostavki').Value:=DataModule1.ADOqChek.FieldByName('Data_dostavki').Value;
DataModule1.ADOqZakaz.FieldByName('Summa').Value:=DataModule1.ADOqChek.FieldByName('Summa').Value;
DataModule1.ADOqZakaz.Post;
DataModule1.ADOqZakaz.Close;
DataModule1.ADOqZakaz.Open;
    DataModule1.qDel.SQL.clear;
    DataModule1.qDel.sql.add('Delete from qChek WHERE Kod_cheka='+IntToStr(DataModule1.ADOqChekKod_cheka.Value));
    DataModule1.qDel.ExecSQL;
    DataModule1.ADOqChek.Close;
    DataModule1.ADOqChek.Open;
    DataModule1.ADOdr.Close;
    DataModule1.ADOdr.Open;
Form4.Close;
end;

procedure TForm4.N4Click(Sender: TObject);
begin
Form8.Show;
Form8.frxReport1.ShowReport();
end;

procedure TForm4.PDF1Click(Sender: TObject);
begin
Form8.frxReport1.ShowReport();
Form8.frxReport1.Export(Form8.frxPDFExport1);
end;

procedure TForm4.Word1Click(Sender: TObject);
begin
Form8.frxReport1.ShowReport();
Form8.frxReport1.Export(Form8.frxDOCXExport1);
end;

end.
