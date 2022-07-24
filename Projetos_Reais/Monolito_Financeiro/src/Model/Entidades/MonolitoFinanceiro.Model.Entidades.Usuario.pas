unit MonolitoFinanceiro.Model.Entidades.Usuario;

interface
Type
  TModelEntidadeUsuario = Class
    Private
    FLogin: string;
    FNome: string;
    FID: String;
    procedure SetID(const Value: String);
    procedure SetLogin(const Value: string);
    procedure SetNome(const Value: string);

    Public
      property Nome : string read FNome write SetNome;
      property Login : string read FLogin write SetLogin;
     property ID : String read FID write SetID;
  End;
implementation

{ TModelEntidadeUsuario }

procedure TModelEntidadeUsuario.SetID(const Value: String);
begin
  FID := Value;
end;

procedure TModelEntidadeUsuario.SetLogin(const Value: string);
begin
  FLogin := Value;
end;

procedure TModelEntidadeUsuario.SetNome(const Value: string);
begin
  FNome := Value;
end;

end.
