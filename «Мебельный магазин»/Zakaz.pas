unit Zakaz;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls;

type
  TForm3 = class(TForm)
    GridPanel1: TGridPanel;
    Edit1: TEdit;
    DBGrid1: TDBGrid;
    GridPanel2: TGridPanel;
    Label2: TLabel;
    Button1: TButton;
    Button2: TButton;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    GridPanel3: TGridPanel;
    Label1: TLabel;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    procedure Edit1Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    otd:string;
    { Public declarations }
  end;

var
  Form3: TForm3;
  str: string;

implementation

{$R *.dfm}

uses udm;

procedure TForm3.Button1Click(Sender: TObject);
begin
str:=DataModule1.ADOqKatalog_mebeli.CommandText;
if (Edit2.Text<>'') or (Edit3.Text<>'') or (Edit4.Text<>'')then
  begin
   str:=str+' WHERE ((Dlina <='+Edit2.Text+') and (Shirina <='+Edit3.Text+') and (Visota <='+Edit4.Text+'))';
   DataModule1.ADOqKatalog_mebeli.Active:=False;
   DataModule1.ADOqKatalog_mebeli.CommandText:=str+otd;
   DataModule1.ADOqKatalog_mebeli.Active:=True;
   DBGrid1.DataSource:=DataModule1.DataSource2;
  end;
end;

procedure TForm3.Button2Click(Sender: TObject);
begin
DataModule1.ADOqKatalog_mebeli.Active:=False;
str:='SELECT * FROM qKatalog_mebeli'+otd;
DataModule1.ADOqKatalog_mebeli.CommandText:=str;
DataModule1.ADOqKatalog_mebeli.Active:=True;
DBGrid1.DataSource:=DataModule1.DataSource2;
Edit2.Text:='';
Edit3.Text:='';
Edit4.Text:='';
end;

procedure TForm3.Button3Click(Sender: TObject);
begin
DataModule1.ADOqKatalog_mebeli.Active:=False;
str:='SELECT * FROM qKatalog_mebeli';
DataModule1.ADOqKatalog_mebeli.CommandText:=str;
DataModule1.ADOqKatalog_mebeli.Active:=True;
DBGrid1.DataSource:=DataModule1.DataSource2;
Edit1.Text:='';
end;

procedure TForm3.Button4Click(Sender: TObject);
begin
DataModule1.ADOqChek.Insert;
DataModule1.ADOqChek.FieldByName('Kod_mebeli').Value:=DataModule1.ADOqKatalog_mebeli.FieldByName('Kod_mebeli').Value;
DataModule1.ADOqChek.Post;
DataModule1.ADOdr.Close;
DataModule1.ADOdr.Open;
Form3.Close;
end;

procedure TForm3.Button5Click(Sender: TObject);
begin
Form3.Close;
end;

procedure TForm3.Edit1Change(Sender: TObject);
  begin
   str:=DataModule1.ADOqKatalog_mebeli.CommandText;
   DataModule1.ADOqKatalog_mebeli.Active:=False;
   if Form3.Edit1.Text<>'' then
   str:='SELECT qKatalog_mebeli.*, Otdel.Otdel FROM qKatalog_mebeli, Otdel WHERE ((Otdel.Otdel LIKE '+#39+'%'+Edit1.Text+'%'+#39+') or (Naimenovanie_tovara LIKE '+#39+'%'+Edit1.Text+'%'+#39+') or (Cvet LIKE '+#39+'%'+Edit1.Text+'%'+#39+') or (Izgotovitel LIKE '+#39+'%'+Edit1.Text+'%'+#39+')) and (Otdel.Kod_otdela=qKatalog_mebeli.Kod_otdela)'+otd
   else str:='SELECT * FROM qKatalog_mebeli';
   DataModule1.ADOqKatalog_mebeli.CommandText:=str;
   DataModule1.ADOqKatalog_mebeli.Active:=True;
   DBGrid1.DataSource:=DataModule1.DataSource2;
  end;


procedure TForm3.FormActivate(Sender: TObject);
begin
   DataModule1.ADOqKatalog_mebeli.Close;
   str:='SELECT qKatalog_mebeli.*, Otdel.Otdel FROM qKatalog_mebeli, Otdel WHERE (Otdel.Kod_otdela=qKatalog_mebeli.Kod_otdela)'+otd;
   DataModule1.ADOqKatalog_mebeli.CommandText:=str;
   DataModule1.ADOqKatalog_mebeli.Open;
   DBGrid1.DataSource:=DataModule1.DataSource2;
end;

end.
