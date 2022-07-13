unit View_Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Pessoa;

type
  TForm1 = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}


procedure TForm1.Button1Click(Sender: TObject);
Var
  pessoa : TPessoa;
begin
  pessoa := TPessoa.Create;
  try
    pessoa.id := 1;
    pessoa.Nome := 'Erick';
    pessoa.Tipo := 'F';
    pessoa.Email := 'Ericklandim@gmail.com';
    ShowMessage((pessoa.id.ToString+ ' - ' +pessoa.Nome+ ' - ' +pessoa.Tipo+ ' - ' +pessoa.Email));
  finally
    pessoa.Free;
  end;


end;

end.
