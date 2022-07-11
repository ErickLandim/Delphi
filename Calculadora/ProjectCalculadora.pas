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
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);


  private
    { Private declarations }
    function soma(Value1, Value2 : integer) : integer;
    function subtrair(Value1, Value2 : integer) : integer;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  Resultado : integer;
begin
   Resultado := soma(StrToInt(EdtValue1.Text), StrToInt(EdtValue2.Text));
   EdtResult.Text := IntToStr(Resultado);
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  Resultado : integer;
begin
   Resultado := subtrair(StrtoInt(EdtValue1.Text), StrtoInt(EdtValue2.Text));
   EdtResult.Text := IntToStr(Resultado);
end;

function TForm1.soma(Value1: Integer; Value2: Integer) : integer;
begin
  Result := Value1 + Value2;
end;

function TForm1.subtrair(Value1, Value2: integer): integer;
begin
  Result := Value1 - Value2;
end;

end.
