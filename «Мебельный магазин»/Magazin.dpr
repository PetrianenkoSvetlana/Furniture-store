program Magazin;

uses
  Vcl.Forms,
  ufMain in 'ufMain.pas' {Form1},
  udm in 'udm.pas' {DataModule1: TDataModule},
  FM in 'FM.pas' {Form2},
  Zakaz in 'Zakaz.pas' {Form3},
  uOPR in 'uOPR.pas' {OPR},
  Chek in 'Chek.pas' {Form4},
  VSotrud in 'VSotrud.pas' {Form6},
  DobKlient in 'DobKlient.pas' {Form7},
  FR in 'FR.pas' {Form8},
  Otchet in 'Otchet.pas' {Form9},
  Pech in 'Pech.pas' {Form10};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TOPR, OPR);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(TForm6, Form6);
  Application.CreateForm(TForm7, Form7);
  Application.CreateForm(TForm8, Form8);
  Application.CreateForm(TForm9, Form9);
  Application.CreateForm(TForm10, Form10);
  Application.Run;
end.
