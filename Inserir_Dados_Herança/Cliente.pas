unit Cliente;

interface

uses
  Pessoa, System.SysUtils;

   Type
     TCliente = class(TPessoa)
   private
   FValorDeCredito : Currency;
   FCpf : String;
   public
   property ValorDeCredito: Currency read FValorDeCredito;
   property Cpf : string read FCpf write FCpf;
   function Receber(Value: integer) : string overload;
   function Receber(Value: currency): string overload;
   function ReceberDados: string; override;
   end;
implementation

{ TCliente }

function TCliente.Receber(Value: integer): string;
begin
  Result := Value.ToString;
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
