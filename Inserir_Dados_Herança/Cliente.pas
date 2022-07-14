unit Cliente;

interface

uses
  Pessoa, System.SysUtils;

   Type
     TCliente = class(TPessoa)
   private
   FValorDeCredito : Currency;
   public
   property ValorDeCredito: Currency read FValorDeCredito;
   function Receber(Value: integer) : string overload;
   function Receber(Value: currency): string overload;
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

end.
