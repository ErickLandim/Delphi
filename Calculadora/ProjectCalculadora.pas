unit ProjectCalculadora;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    EdtValue1: TEdit;
    EdtValue2: TEdit;
    EdtResult: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);


  private
    { Private declarations }
    function soma(Value1, Value2 : currency) : currency;
    function subtrair(Value1, Value2 : currency) : currency;
    function multiplicar(Value1, Value2 : currency) : currency;
    function dividir(Value1, Value2 : currency) : currency;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  Resultado : currency;
begin
   Resultado := soma(StrTocurr(EdtValue1.Text), StrTocurr(EdtValue2.Text));
   EdtResult.Text := currToStr(Resultado);
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  Resultado : currency;
begin
   Resultado := subtrair(StrTocurr(EdtValue1.Text), StrTocurr(EdtValue2.Text));
   EdtResult.Text := currToStr(Resultado);
end;

procedure TForm1.Button3Click(Sender: TObject);
var
  Resultado : currency;
begin
   Resultado := multiplicar(StrTocurr(EdtValue1.Text), StrTocurr(EdtValue2.Text));
   EdtResult.Text := currToStr(Resultado);
end;

procedure TForm1.Button4Click(Sender: TObject);
var
  Resultado : currency;
begin
   Resultado := dividir(StrTocurr(EdtValue1.Text), StrTocurr(EdtValue2.Text));
   EdtResult.Text := currToStr(Resultado);
end;

//Div � para numeros inteiros, e a / � para ponto flutuante
function TForm1.dividir(Value1, Value2: currency): currency;
begin
  Result := Value1 / Value2;
end;

function TForm1.multiplicar(Value1, Value2: currency): currency;
begin
  Result := Value1 * Value2;
end;

function TForm1.soma(Value1: currency; Value2: currency) : currency;
begin
  Result := Value1 + Value2;
end;

function TForm1.subtrair(Value1, Value2: currency): currency;
begin
  Result := Value1 - Value2;
end;

end.
