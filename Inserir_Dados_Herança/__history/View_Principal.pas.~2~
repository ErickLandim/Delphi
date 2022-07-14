unit View_Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Pessoa, Cliente;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  // Trunc( (now - StrToDate(Value )) / 365.25);
var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  Pessoa: TPessoa;
  Pessoa2: TCliente;
begin
  Pessoa := TPessoa.Create;
  Pessoa2 := TCliente.Create;
  try
    Pessoa.Nome := 'Erick';
    Pessoa.DataDeNascimento := '26/10/2003';
    Pessoa.Email := 'ErickLandim@gmail.com';

    Pessoa2.Nome := 'Andre';
    Pessoa2.DataDeNascimento := '24/04/2003';
    Pessoa2.Email := 'Andrecoelho@gmail.com';
    Pessoa2.ValorDeCredito := 1000;

    Memo1.Lines.Add('Pessoa: ');
    Memo1.Lines.Add('Nome: ' + Pessoa.Nome);
    Memo1.Lines.Add('Data de nascimento: ' + Pessoa.DataDeNascimento);
    Memo1.Lines.Add('Idade: ' + Pessoa.Idade.ToString);
    Memo1.Lines.Add('Email: ' + Pessoa.Email);

    Memo1.Lines.Add('Cliente:');
    Memo1.Lines.Add('Nome:' + Pessoa2.Nome);
    Memo1.Lines.Add('Data de nascimento:' + Pessoa2.DataDeNascimento);
    Memo1.Lines.Add('Idade:' + Pessoa2.Idade.ToString);
    Memo1.Lines.Add('Valor de Credito: ' + Pessoa2.ValorDeCredito.ToString);
  finally
    Pessoa.DisposeOf;
    Pessoa2.DisposeOf;
  end;
end;

end.
