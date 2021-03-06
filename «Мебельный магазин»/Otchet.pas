unit Otchet;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.Menus;

type
  TForm9 = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    DBGrid1: TDBGrid;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    PDF1: TMenuItem;
    Word1: TMenuItem;
    HTML1: TMenuItem;
    procedure Edit1Change(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure PDF1Click(Sender: TObject);
    procedure Word1Click(Sender: TObject);
    procedure HTML1Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form9: TForm9;
  str: string;

implementation

{$R *.dfm}

uses udm, ufMain, Pech;

procedure TForm9.Edit1Change(Sender: TObject);
begin
   str:=DataModule1.ADOqZakaz.CommandText;
   DataModule1.ADOqZakaz.Active:=False;
   if Edit1.Text<>'' then
   str:='SELECT * FROM qZakaz WHERE (FamiliaZak LIKE '+#39+'%'+Edit1.Text+'%'+#39+') or (ImyaZak LIKE '+#39+'%'+Edit1.Text+'%'+#39+') or (OtchestvoZak LIKE '+#39+'%'+Edit1.Text+'%'+#39+') or (AdresZak LIKE '+#39+'%'+Edit1.Text+'%'+#39+')'
   else str:='SELECT * FROM qZakaz';
   DataModule1.ADOqZakaz.CommandText:=str;
   DataModule1.ADOqZakaz.Active:=True;
   DBGrid1.DataSource:=DataModule1.DataSource1;
end;

procedure TForm9.HTML1Click(Sender: TObject);
begin
Form10.frxReport1.ShowReport();
Form10.frxReport1.Export(Form10.frxHTML5DivExport1);
end;

procedure TForm9.N1Click(Sender: TObject);
begin
Form10.Show;
Form10.frxReport1.ShowReport();
end;

procedure TForm9.N3Click(Sender: TObject);
begin
Form10.frxReport1.ShowReport();
Form10.frxReport1.Print;
end;

procedure TForm9.N4Click(Sender: TObject);
begin
Form9.Close;
end;

procedure TForm9.PDF1Click(Sender: TObject);
begin
Form10.frxReport1.ShowReport();
Form10.frxReport1.Export(Form10.frxPDFExport1);
end;

procedure TForm9.Word1Click(Sender: TObject);
begin
Form10.frxReport1.ShowReport();
Form10.frxReport1.Export(Form10.frxDOCXExport1);
end;

end.
