unit ListaTarefas.Model.Tarefas;

interface

Type
  TTarefas = Class

  private
    FCodigo: Integer;
    FTitulo: String;
    FDescricao: String;
    FDataCriacao: TDateTime;
    FIdUsuario: Integer;
  public
    property Codigo: Integer read FCodigo write FCodigo;
    property IdUsuario: Integer read FIdUsuario write FIdUsuario;
    property Titulo: String read FTitulo write FTitulo;
    property Descricao: String read FDescricao write FDescricao;
    property DataCriacao: TDateTime read FDataCriacao write FDataCriacao;
  End;

implementation

end.
