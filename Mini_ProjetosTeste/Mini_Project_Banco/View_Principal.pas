unit View_Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Pessoa, contabancaria;

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

var
  Form1: TForm1;

implementation

{$R *.dfm}


procedure TForm1.Button1Click(Sender: TObject);
Var
  pessoa : TPessoa;
  iConta, iConta2 : TContaBancaria;
begin
  pessoa := TPessoa.Create;
  iConta := TContaBancaria.Create;
  iConta2 := TContaBancaria.Create;
  try
    pessoa.id := 1;
    pessoa.Nome := 'Erick';
    pessoa.Tipo := 'F';
    pessoa.Email := 'Ericklandim@gmail.com';
    ShowMessage(('Informações do Usuario que conectou:'#13#13' Id: ' +pessoa.id.ToString+ #13' Nome: ' +pessoa.Nome+ #13' Tipo: ' +pessoa.Tipo+  #13' Email: ' +pessoa.Email+ #13#13'Status: Conectado'));

    {----------------------------------------}
    ShowMessage('O usuario fez as seguintes alterações:');
    iConta.Nome := 'Danilo';
    iConta.Depositar(50);

    iConta2.Nome := 'Erick';
    iConta2.Depositar(150);


    Memo1.Lines.Add(iConta.Nome);
    Memo1.Lines.Add(iConta.Saldo.ToString);

    Memo1.Lines.Add(iConta2.Nome);
    Memo1.Lines.Add(iConta2.Saldo.ToString);
  finally
    iconta.DisposeOf;
    iConta2.DisposeOf;
    pessoa.Free;
  end;


end;

end.
