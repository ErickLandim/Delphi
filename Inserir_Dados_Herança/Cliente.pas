unit Cliente;

interface

uses
  Pessoa, System.SysUtils, Endereco;

   Type
     TCliente = class(TPessoa)
   private
   FValorDeCredito : Currency;
   FCpf : String;
   FEndereco: TEndereco;
   public
   property ValorDeCredito: Currency read FValorDeCredito;
   property Cpf : string read FCpf write FCpf;
   property Endereco: TEndereco read FEndereco write FEndereco;
   function Receber(Value: integer) : string overload;
   function Receber(Value: currency): string overload;
   function ReceberDados: string; override;

   Constructor Create; Overload;
   Constructor Create(Value: String) ; Overload;
   Constructor Create(Value: TPessoa) ; Overload;
   Destructor Destroy; Override;
   end;
implementation

{ TCliente }

function TCliente.Receber(Value: integer): string;
begin
  Result := Value.ToString;
end;

constructor TCliente.Create;
begin
   Nome := 'Alexandro';
   FEndereco := TEndereco.Create;
end;

constructor TCliente.Create(Value: String);
begin
    Nome := Value;
end;

constructor TCliente.Create(Value: TPessoa);
begin
    Nome := Value.Nome;
    DataDenascimento := Value.DataDeNascimento;
end;

destructor TCliente.Destroy;
begin
  FEndereco.free;
end;

function TCliente.Receber(Value: currency): string;
begin
  FValorDeCredito := Value * (Value * 0.10);
  Result := CurrToStr(Value);
end;


function TCliente.ReceberDados: string;
begin
inherited;
     Result := Dados +
    ' - CPF: ' + Cpf +
    ' - Valor de Credito:' + CurrToStr(ValorDeCredito) +
    ' - Receber int: '+ Receber(1)+
    ' - Receber Curr: '+ Receber(2);
end;

end.
