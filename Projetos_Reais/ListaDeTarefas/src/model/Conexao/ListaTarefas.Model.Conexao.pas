unit ListaTarefas.Model.Conexao;

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
  TDMConexao = class(TDataModule)
    FDConnection1: TFDConnection;
    FDQComando: TFDQuery;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Function DataSet: TDataSet;
    Procedure SQL(Value: String);
    Procedure Params(aParams: String; aValue: Variant); overload;
    Function Params(aParams: String) : Variant; Overload;
    procedure ExecSQL;
    procedure Open;
    procedure StartTransaction;
    procedure Commit;
    Procedure RollBack;
  end;


implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TDataModule1 }

procedure TDMConexao.Commit;
begin
  FDConnection1.Commit;
end;

procedure TDMConexao.DataModuleCreate(Sender: TObject);
begin
  FDConnection1.Connected;
end;

function TDMConexao.DataSet: TDataSet;
begin
  Result := FDQComando;
end;

procedure TDMConexao.ExecSQL;
begin
  FDQComando.ExecSQL;
end;

procedure TDMConexao.Open;
begin
  FDQComando.Open;
end;

procedure TDMConexao.Params(aParams: String; aValue: Variant);
begin
  FDQComando.ParamByName(aParams).Value := aValue;
end;

function TDMConexao.Params(aParams: String): Variant;
begin
  Result := FDQComando.ParamByName(aParams).Value;
end;

procedure TDMConexao.RollBack;
begin
  FDConnection1.Rollback;
end;

procedure TDMConexao.SQL(Value: String);
begin
  FDQComando.SQL.Add(Value);
end;

procedure TDMConexao.StartTransaction;
begin
  FDConnection1.StartTransaction;
end;

end.
