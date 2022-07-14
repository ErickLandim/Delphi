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
var
  Pessoa: TPessoa;
  Pessoa2: TCliente;

begin
  Pessoa := TPessoa.Create;
  Pessoa2 := TCliente.Create;

  try
    Pessoa.Nome := Edit1.Text;
    Pessoa.DataDeNascimento := Edit2.Text;//'26/10/2003';
    Pessoa.Email := Edit3.Text;//'ErickLandim@gmail.com';

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
  finally
    Pessoa.Free;
    Pessoa2.Free;
  end;
end;

end.
