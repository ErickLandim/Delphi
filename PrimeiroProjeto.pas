unit PrimeiroProjeto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    procedure Button1Click(Sender: TObject);
  private
    { Public declarations }
    i : integer;
    c : currency;
    s : string;
    b : boolean;

    procedure ExibeVariavel(Valor : String);
    function fncExibeTexto : string;
  public
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin

  //s := Edit1.Text;
  s := fncExibeTexto;
  ExibeVariavel(s);
end;

procedure TForm1.ExibeVariavel(Valor : String);
begin
  ShowMessage (Valor);
end;

function Tform1.fncExibeTexto;
begin
  Result := Edit1.Text;
end;

end.
