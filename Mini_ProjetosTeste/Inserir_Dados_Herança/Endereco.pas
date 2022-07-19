unit Endereco;

interface

  Type
    TEndereco = class
  Private
    FLogradouro : string;
    FNumero : string;
  public
    Constructor Create;
    property Logradouro: String read FLogradouro write FLogradouro;
    property Numero: String read FNumero write FNumero;
  end;

implementation

{ TEndereco }

constructor TEndereco.Create;
begin
  FLogradouro := 'Sem endereço';
  FNumero := '0';
end;

end.
