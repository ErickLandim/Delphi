unit Componente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Imaging.pngimage,
  Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, ELSDBEdit;

type
  TForm1 = class(TForm)
    Image1: TImage;
    Panel1: TPanel;
    ELSDBEdit1: TELSDBEdit;
    ELSDBEdit2: TELSDBEdit;
    ELSDBEdit3: TELSDBEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

end.
