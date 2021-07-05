unit VSotrud;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.ExtCtrls;

type
  TForm6 = class(TForm)
    GridPanel1: TGridPanel;
    DBGrid1: TDBGrid;
    Button1: TButton;
    Button2: TButton;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

{$R *.dfm}

uses udm, Chek;

procedure TForm6.Button1Click(Sender: TObject);
begin
DataModule1.ADOqChek.Edit;
DataModule1.ADOqChek.FieldByName('Kod_sotrudnika').Value:=DataModule1.ADOqSotrudniki.FieldByName('Kod_sotrudnika').Value;
DataModule1.ADOqChek.Post;
DataModule1.ADOdr.Close;
DataModule1.ADOdr.Open;
Form6.Close;
end;

procedure TForm6.Button2Click(Sender: TObject);
begin
Form6.Close;
end;

end.
