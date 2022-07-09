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
    Date : TDateTime;

    procedure ExibeVariavel(Valor : integer);
    function fncExibeTexto : String;
  public
  end;

var
  Form1: TForm1;
  Global: String;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin

  //s := Edit1.Text;
  //s := fncExibeTexto;
  Global := fncExibeTexto;
  ExibeVariavel(StrToInt (Global));
end;

procedure TForm1.ExibeVariavel(Valor : integer);
begin
  ShowMessage(IntToStr(Valor));
end;

function Tform1.fncExibeTexto;
begin
  Result := Edit1.Text;
end;

end.
