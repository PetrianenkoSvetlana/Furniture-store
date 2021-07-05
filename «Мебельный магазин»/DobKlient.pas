unit DobKlient;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  TForm7 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Button1: TButton;
    Button2: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;

implementation

{$R *.dfm}

uses Chek, udm;

procedure TForm7.Button1Click(Sender: TObject);
begin
DataModule1.ADOqChek.Edit;
DataModule1.ADOqChek.FieldByName('FamiliaZak').Value:=Edit1.Text;
DataModule1.ADOqChek.FieldByName('ImyaZak').Value:=Edit2.Text;
DataModule1.ADOqChek.FieldByName('OtchestvoZak').Value:=Edit3.Text;
DataModule1.ADOqChek.FieldByName('AdresZak').Value:=Edit4.Text;
DataModule1.ADOqChek.Post;
DataModule1.ADOdr.Close;
DataModule1.ADOdr.Open;
Form7.Close;
end;

procedure TForm7.Button2Click(Sender: TObject);
begin
Form7.Close;
end;

end.
