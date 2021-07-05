unit Pech;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, frxExportPDF, frxExportHelpers,
  frxExportHTMLDiv, frxClass, frxExportBaseDialog, frxExportDOCX, frxPreview,
  frxDBSet;

type
  TForm10 = class(TForm)
    frxDBDataset1: TfrxDBDataset;
    frxPreview1: TfrxPreview;
    frxReport1: TfrxReport;
    frxDOCXExport1: TfrxDOCXExport;
    frxHTML5DivExport1: TfrxHTML5DivExport;
    frxPDFExport1: TfrxPDFExport;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form10: TForm10;

implementation

{$R *.dfm}

uses udm, Otchet;

end.
