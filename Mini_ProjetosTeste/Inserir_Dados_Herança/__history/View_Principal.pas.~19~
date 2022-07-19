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
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Memo2: TMemo;
    Memo3: TMemo;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);

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


    Memo1.Lines.Add(#13'Pessoa: ');
    Memo1.Lines.Add('Nome: ' + Pessoa.Nome);
    Memo1.Lines.Add('Data de nascimento: ' + Pessoa.DataDeNascimento);
    Memo1.Lines.Add('Idade: ' + Pessoa.Idade.ToString);
    Memo1.Lines.Add('Email: ' + Pessoa.Email);

    Memo1.Lines.Add('===============================');
    Memo1.Lines.Add('Cliente:');
    Memo1.Lines.Add('Nome:' + Pessoa2.Nome);
    Memo1.Lines.Add('Data de nascimento:' + Pessoa2.DataDeNascimento);
    Memo1.Lines.Add('Idade:' + Pessoa2.Idade.ToString);
    Memo1.Lines.Add('Valor de Credito: ' + CurrToStr(Pessoa2.ValorDeCredito));
    Memo1.Lines.Add('Receber curr: ' + Pessoa2.Receber(10.5));
    Memo1.Lines.Add('Receber int: ' + Pessoa2.Receber(1));
    /////////////////////////////////////////////////////////////////
    Memo2.Lines.Add(#13'Pessoa: ');
    Memo2.Lines.Add(Pessoa2.ReceberDados);
    Memo2.Lines.Add('===============================');
    Memo2.Lines.Add('Cliente:');
    Memo2.Lines.Add(Pessoa2.ReceberDados);
    Memo2.Lines.Add('===============================');


  finally
    Pessoa.Free;
    Pessoa2.Free;
  end;
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  lPessoa1 : Tpessoa;
  lCliente1, lCliente2, lCliente3 : TCliente;
begin

  lPessoa1.Create;
  lPessoa1.Nome := 'Duda';
  lPessoa1.DataDeNascimento := '11/10/2005';

  lCliente1.Create;
  lCliente2.Create('Carlos antonio');
  lCliente3.Create(lPessoa1);
   try
     Memo3.Lines.Add('Cliente1:' + lCliente1.Nome);
     memo3.Lines.Add('Cliente endereço: ' + lCliente1.Endereco.Logradouro + ' - ' +  lCliente1.Endereco.Numero);
     Memo3.Lines.Add('Cliente2:' + lCliente2.Nome);
     Memo3.Lines.Add('Cliente3:' + lCliente3.Nome +' - ' + lCliente3.DataDeNascimento);

   finally
      lPessoa1.Free;
      lCliente1.Free;
      lCliente2.Free;
      lCliente3.Free;
   end;
end;

end.
