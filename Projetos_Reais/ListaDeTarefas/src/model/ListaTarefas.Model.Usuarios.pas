unit ListaTarefas.Model.Usuarios;

interface

  Type
    TUsuario = class

    private
      FNome: String;
      FEmail: String;
      FSenha: String;
      FId: Integer;

    public
      property Id: Integer read FId write FId;
      property Nome: String read FNome write FNome;
      property Email: String read FEmail write FEmail;
      property Senha: String read FSenha write FSenha;
    end;



implementation

end.
