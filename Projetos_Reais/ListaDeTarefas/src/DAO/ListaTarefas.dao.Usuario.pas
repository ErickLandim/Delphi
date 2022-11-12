unit ListaTarefas.dao.Usuario;

interface

uses
  ListaTarefas.Model.Usuarios, ListaTarefas.Model.Conexao, Vcl.Dialogs,
  System.SysUtils;

Type
  TDAOUsuario = Class
  private
    FConn: TDMConexao;
    Function PreencheObjeto: TUsuario;
  public
    Constructor Create;
    Destructor Destroy; Override;
    procedure Inserir(Value: TUsuario);
    procedure Apagar(Value: TUsuario);
    Function Alterar(Value: TUsuario): TUsuario;
    Function LoginUsuario(aEmail, aSenha: String): TUsuario;

  End;

implementation

{ TDAOUsuario }

function TDAOUsuario.Alterar(Value: TUsuario): TUsuario;
begin
  FConn.StartTransaction;
  Try
    FConn.SQL('UPDATE usuarios SET nome=:nome, senha=;senha, email=:email WHERE id=:id');
    FConn.Params('nome', Value.Nome);
    FConn.Params('senha', Value.Senha);
    FConn.Params('email', Value.Email);
    FConn.Params('id', Value.Id);
    FConn.ExecSQL;
    FConn.Commit;
    ShowMessage('Registro alterado com sucesso!');
  Except
    FConn.Rollback;
    raise Exception.Create('Erro ao tentar alterar o registro!');
  End;
end;

procedure TDAOUsuario.Apagar(Value: TUsuario);
begin
  FConn.StartTransaction;
  try
    FConn.SQL('DELETE FROM usuarios WHERE id=:id');
    FConn.Params('id', Value.Id);
    FConn.ExecSQL;
    FConn.Commit;
    ShowMessage('Registro excluido com sucesso!');
  Except
    FConn.Rollback;
    raise Exception.Create('Erro ao tentar excluir registro!');

  end;
end;

constructor TDAOUsuario.Create;
begin
  FConn := TDMConexao.Create(nil);
end;

destructor TDAOUsuario.Destroy;
begin
  FConn.Free;
  inherited;
end;

procedure TDAOUsuario.Inserir(Value: TUsuario);
begin
  FConn.StartTransaction;
  try
    FConn.SQL('INSERT INTO usuarios (nome, senha, email) VALUES (:nome, :senha, :email)');
    FConn.Params('nome', Value.Nome);
    FConn.Params('senha', Value.Senha);
    FConn.Params('email', Value.Email);
    FConn.ExecSQL;
    FConn.Commit;
    ShowMessage('Registro incluido com sucesso!');
  Except
    FConn.Rollback;
    raise Exception.Create('Erro ao tentar incluir o registro!');

  end;
end;

function TDAOUsuario.LoginUsuario(aEmail, aSenha: String): TUsuario;
begin
  FConn.SQL('SELECT * FROM usuarios WHERE senha=:senha AND email=:email');
  FConn.Params('senha', aSenha);
  FConn.Params('email', aEmail);
  FConn.Open;

  if FConn.DataSet.IsEmpty then
  begin
    ShowMessage('Login Invalido');
    Exit;
  end;

  Result := PreencheObjeto;
end;

function TDAOUsuario.PreencheObjeto: TUsuario;
begin
  Result := TUsuario.Create;
  FConn.DataSet.First;
  while not FConn.DataSet.Eof do
  begin
    Result.Id := FConn.DataSet.FieldByName('id').AsInteger;
    Result.Nome := FConn.DataSet.FieldByName('nome').AsString;
    Result.Senha := FConn.DataSet.FieldByName('senha').AsString;
    Result.Email := FConn.DataSet.FieldByName('email').AsString;
    FConn.DataSet.Next;
  end;

end;

end.
