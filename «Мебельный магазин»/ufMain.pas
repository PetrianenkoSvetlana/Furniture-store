unit ufMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Image1: TImage;
    Button1: TButton;
    Button3: TButton;
    Button4: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses FM, udm, Zakaz, Chek, NewMeb;

procedure TForm1.Button1Click(Sender: TObject);
begin
 Application.CreateForm(TForm2,Form2);
 Form2.Caption:='Каталог мебели';

 Form2.DBGrid1.DataSource:=DataModule1.DataSource2;
 Form2.DBNavigator1.DataSource:=DataModule1.DataSource2;

 Form2.DBGrid1.Columns.Clear;
 Form2.DBGrid1.Columns.Add;
 Form2.DBGrid1.Columns[0].Field:=DataModule1.ADOqKatalog_mebeliKod_mebeli;
 Form2.DBGrid1.Columns[0].Width:=50;


 Form2.DBGrid1.Columns.Add;
 Form2.DBGrid1.Columns[1].Field:=DataModule1.ADOqKatalog_mebeliKod_otdela;
 Form2.DBGrid1.Columns[1].Width:=50;


 Form2.DBGrid1.Columns.Add;
 Form2.DBGrid1.Columns[2].Field:=DataModule1.ADOqKatalog_mebeliOtdel;
 Form2.DBGrid1.Columns[2].Width:=100;


 Form2.DBGrid1.Columns.Add;
 Form2.DBGrid1.Columns[3].Field:=DataModule1.ADOqKatalog_mebeliNaimenovanie_tovara;
 Form2.DBGrid1.Columns[3].Width:=150;


 Form2.DBGrid1.Columns.Add;
 Form2.DBGrid1.Columns[4].Field:=DataModule1.ADOqKatalog_mebeliDlina;
 Form2.DBGrid1.Columns[4].Width:=50;


 Form2.DBGrid1.Columns.Add;
 Form2.DBGrid1.Columns[5].Field:=DataModule1.ADOqKatalog_mebeliShirina;
 Form2.DBGrid1.Columns[5].Width:=50;


 Form2.DBGrid1.Columns.Add;
 Form2.DBGrid1.Columns[6].Field:=DataModule1.ADOqKatalog_mebeliVisota;
 Form2.DBGrid1.Columns[6].Width:=50;


 Form2.DBGrid1.Columns.Add;
 Form2.DBGrid1.Columns[7].Field:=DataModule1.ADOqKatalog_mebeliMaterial;
 Form2.DBGrid1.Columns[7].Width:=100;


 Form2.DBGrid1.Columns.Add;
 Form2.DBGrid1.Columns[8].Field:=DataModule1.ADOqKatalog_mebeliCvet;
 Form2.DBGrid1.Columns[8].Width:=100;

 Form2.DBGrid1.Columns.Add;
 Form2.DBGrid1.Columns[9].Field:=DataModule1.ADOqKatalog_mebeliStoimost;
 Form2.DBGrid1.Columns[9].Width:=50;

 Form2.DBGrid1.Columns.Add;
 Form2.DBGrid1.Columns[10].Field:=DataModule1.ADOqKatalog_mebeliIzgotovitel;
 Form2.DBGrid1.Columns[10].Width:=100;


 Form2.Width:=850+60;
 Form2.ShowModal;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
Form5.Show;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
 Application.CreateForm(TForm2,Form2);
 Form2.Caption:='Сотрудники';

 Form2.DBGrid1.DataSource:=DataModule1.DataSource3;
 Form2.DBNavigator1.DataSource:=DataModule1.DataSource3;

 Form2.DBGrid1.Columns.Clear;
 Form2.DBGrid1.Columns.Add;
 Form2.DBGrid1.Columns[0].Field:=DataModule1.ADOqSotrudnikiKod_sotrudnika;
 Form2.DBGrid1.Columns[0].Width:=50;


 Form2.DBGrid1.Columns.Add;
 Form2.DBGrid1.Columns[1].Field:=DataModule1.ADOqSotrudnikiFIO;
 Form2.DBGrid1.Columns[1].Width:=150;


 Form2.DBGrid1.Columns.Add;
 Form2.DBGrid1.Columns[2].Field:=DataModule1.ADOqSotrudnikiData_rojdenia;
 Form2.DBGrid1.Columns[2].Width:=100;


 Form2.DBGrid1.Columns.Add;
 Form2.DBGrid1.Columns[3].Field:=DataModule1.ADOqSotrudnikiDoljnost;
 Form2.DBGrid1.Columns[3].Width:=100;


 Form2.DBGrid1.Columns.Add;
 Form2.DBGrid1.Columns[4].Field:=DataModule1.ADOqSotrudnikiStaj_raboty;
 Form2.DBGrid1.Columns[4].Width:=100;


 Form2.Width:=500+60;
 Form2.ShowModal;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
 Form4.Show;
end;

end.
