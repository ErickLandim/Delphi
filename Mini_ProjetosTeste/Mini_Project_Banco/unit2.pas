unit unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, contabancaria;

type
  TForm3 = class(TForm)
    Button1: TButton;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

procedure TForm3.Button1Click(Sender: TObject);
var
  iConta, iConta2 : TContaBancaria;
begin
  iConta := TContaBancaria.Create;
  iConta2 := TContaBancaria.Create;

  Try
    iConta.Nome := 'Danilo';
    iConta.Depositar(50);

    iConta.Nome := 'Erick';
    iConta.Depositar(150);


    Memo1.Lines.Add(iConta.Nome);
    Memo1.Lines.Add(iConta.Saldo.ToString);

    Memo1.Lines.Add(iConta2.Nome);
    Memo1.Lines.Add(iConta2.Saldo.ToString);
  finally
    iconta.DisposeOf;
    iConta2.DisposeOf;
  end;
end;

end.
