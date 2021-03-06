unit FR;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, frxClass, frxPreview, frxDBSet,
  frxExportPDF, frxExportHelpers, frxExportHTMLDiv, frxExportBaseDialog,
  frxExportDOCX{, frxClass, frxExportBaseDialog,
  frxExportPDF, frxPreview, frxDBSet};

type
  TForm8 = class(TForm)
    frxDBDataset1: TfrxDBDataset;
    frxReport1: TfrxReport;
    frxPreview1: TfrxPreview;
    frxDOCXExport1: TfrxDOCXExport;
    frxHTML5DivExport1: TfrxHTML5DivExport;
    frxPDFExport1: TfrxPDFExport;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form8: TForm8;

implementation

{$R *.dfm}

uses Chek, udm;

end.
