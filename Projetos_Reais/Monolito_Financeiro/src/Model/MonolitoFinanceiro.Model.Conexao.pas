unit MonolitoFinanceiro.Model.Conexao;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.SQLite,
  FireDAC.Phys.SQLiteDef, FireDAC.Stan.ExprFuncs,
  FireDAC.Phys.SQLiteWrapper.Stat, FireDAC.VCLUI.Wait, Data.DB,
  FireDAC.Comp.Client, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, FireDAC.Comp.DataSet;

type
  TDataModule1 = class(TDataModule)
    SQLConexao: TFDConnection;
    FDQuery1: TFDQuery;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure CarregarConfiguracoes;
    procedure Conectar;
    procedure Desconectar;
    const ARQUIVOCONFIGURACAO = 'MonolitoFinanceiro.cfg';
  end;

var
  DataModule1: TDataModule1;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TDataModule1 }

procedure TDataModule1.CarregarConfiguracoes;
var
  ParametroNome : String;
  ParametroValor : String;
  Contador : Integer;
  ListaParamentros : TstringList;
begin
  SQLConexao.Params.Clear;
    if not FileExists(ARQUIVOCONFIGURACAO) then
    raise Exception.Create('Arquivo de configura��o n�o encontrado!');
      ListaParamentros := TStringList.Create;
        try
         ListaParamentros.LoadFromFile(ARQUIVOCONFIGURACAO);
           for Contador := 0 to Pred(ListaParamentros.Count) do
           begin
              if ListaParamentros[Contador].IndexOf('=') > 0 then
              begin
                ParametroNome := ListaParamentros[Contador].split(['='])[0].trim;
                ParametroValor := ListaParamentros[Contador].Split(['='])[1].Trim;
                SQLConexao.Params.Add(ParametroNome + '=' + ParametroValor);
              end;
           end;
        finally
          ListaParamentros.Free;
        end;
end;

procedure TDataModule1.Conectar;
begin
   SQLConexao.Connected;
end;

procedure TDataModule1.Desconectar;
begin
   SQLConexao.Connected := False;
end;

end.
