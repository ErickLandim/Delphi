unit ListaTarefas.dao.Tarefas;

interface

uses
  ListaTarefas.Model.Conexao, System.Generics.Collections,
  ListaTarefas.Model.Tarefas,
  Vcl.Dialogs, System.SysUtils;

type
  TTarefasDAO = Class
  private
    FConexao: TDMConexao;
    Function PreecheLista: TObjectList<TTarefas>;
    Function PreencheObject: TTarefas;
  public
    Constructor Create;
    Destructor destroy; Override;
    procedure Inserir(aTarefas: TTarefas);
    procedure Apagar(aId: integer);
    function Alterar(aTarefas: TTarefas): TTarefas;
    function ListarTarefas(aUsuario: integer): TObjectList<TTarefas>;
    function BuscarTarefas(aId: integer): TTarefas;
  End;

implementation

{ TTarefasDAO }

function TTarefasDAO.Alterar(aTarefas: TTarefas): TTarefas;
begin
  FConexao.StartTransaction;
  try
    FConexao.SQL('UPDATE Tarefas SET titulo =:titulo, descricao = :descricao, WHERE id = :id');
    FConexao.Params('titulo', aTarefas.Titulo);
    FConexao.Params('descricao', aTarefas.Descricao);
    FConexao.Params('id', aTarefas.Codigo);
    FConexao.ExecSQL;
    FConexao.Commit;

    Showmessage('Tarefa alterada com sucesso!');
  except
    FConexao.Rollback;
    raise Exception.Create('Erro ao tentar alterar a tarefa!');
  end;
end;

procedure TTarefasDAO.Apagar(aId: integer);
begin
  FConexao.StartTransaction;
  try
    FConexao.SQL('DELETE FROM Tarefas WHERE id=:id;');
    FConexao.Params('id', aId);
    FConexao.ExecSQL;
    FConexao.Commit;

    Showmessage('Tarefa apagada com sucesso!');

  Except
    FConexao.Rollback;
    raise Exception.Create('Erro ao apagar Tarefa!');
  end;
end;

function TTarefasDAO.BuscarTarefas(aId: integer): TTarefas;
begin
  FConexao.SQL('SELECT * FROM Tarefas WHERE id = :id');
  FConexao.Params('id', aId);
  FConexao.Open;
  if not FConexao.DataSet.IsEmpty then
    result := PreencheObject;
end;

constructor TTarefasDAO.Create;
begin
  FConexao := TDMConexao.Create(nil);
end;

destructor TTarefasDAO.destroy;
begin
  FConexao.DisposeOF;
  inherited;
end;

procedure TTarefasDAO.Inserir(aTarefas: TTarefas);
begin
  FConexao.StartTransaction;
  Try
    FConexao.SQL('INSERT INTO Tarefas(idusuario,titulo,descricao)VALUES(:idusuario,:titulo,:descricao);');
    FConexao.Params('idusuario', aTarefas.IdUsuario);
    FConexao.Params('titulo', aTarefas.Titulo);
    FConexao.Params('descricao', aTarefas.Descricao);
    FConexao.ExecSQL;
    FConexao.Commit;
    Showmessage('Tarefa cadastrada com sucesso!');
  Except
    FConexao.Rollback;
    raise Exception.Create('Erro ao incluir tarefa');
  End;
end;

function TTarefasDAO.ListarTarefas(aUsuario: integer): TObjectList<TTarefas>;
begin
  FConexao.SQL('SELECT * FROM Tarefas WHERE idusuario =:id');
  FConexao.Params('id', aUsuario);
  FConexao.Open;

  if not FConexao.DataSet.IsEmpty then
    result := PreecheLista;
end;

function TTarefasDAO.PreecheLista: TObjectList<TTarefas>;
var
  lTarefas: TTarefas;
begin
  result := TObjectList<TTarefas>.Create;

  FConexao.DataSet.First;
  while not FConexao.DataSet.Eof do
  begin
    lTarefas := TTarefas.Create;
    lTarefas.Codigo := FConexao.DataSet.FieldByName('id').AsInteger;
    lTarefas.IdUsuario := FConexao.DataSet.FieldByName('idusuario').AsInteger;
    lTarefas.Titulo := FConexao.DataSet.FieldByName('titulo').AsString;
    lTarefas.Descricao := FConexao.DataSet.FieldByName('descricao').AsString;
    lTarefas.DataCriacao := FConexao.DataSet.FieldByName('datacriacao').AsDateTime;
    result.Add(lTarefas);
    FConexao.DataSet.Next;
  end;
end;

function TTarefasDAO.PreencheObject: TTarefas;
begin
  Result := TTarefas.Create;
  Result.Codigo := FConexao.DataSet.FieldByName('id').AsInteger;
    Result.IdUsuario := FConexao.DataSet.FieldByName('idusuario').AsInteger;
    Result.Titulo := FConexao.DataSet.FieldByName('titulo').AsString;
    Result.Descricao := FConexao.DataSet.FieldByName('descricao').AsString;
    Result.DataCriacao := FConexao.DataSet.FieldByName('datacriacao').AsDateTime;

end;

end.