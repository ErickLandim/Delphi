unit MonolitoFinanceiro.Model.Usuarios;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Datasnap.Provider,
  Datasnap.DBClient, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  MonolitoFinanceiro.Model.Conexao, MonolitoFinanceiro.Utilitarios;

type
  TDmUsuarios = class(TDataModule)
    SQLUsuarios: TFDQuery;
    CdsUsuarios: TClientDataSet;
    CdpUsuarios: TDataSetProvider;
    CdsUsuariosId: TStringField;
    CdsUsuariosNome: TStringField;
    CdsUsuariosLogin: TStringField;
    CdsUsuariosSenha: TStringField;
    CdsUsuariosStatus: TStringField;
    CdsUsuariosData_Cadastro: TDateField;
  private
    { Private declarations }
  public
    { Public declarations }
    Function TemLoginCadastrado(Login : string; Id : String) : Boolean;
    Procedure EfetuarLogin(Login :  string;  Senha : String);
  end;

var
  DmUsuarios: TDmUsuarios;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TDmUsuarios }

procedure TDmUsuarios.EfetuarLogin(Login, Senha: String);
Var
  SQLConsulta : TFDQuery;
  lUsuario : TModelUsuarioEntidade;
begin
  SQLConsulta := TFDQuery.Create(nil);
  lUsuario := TModelUsuarioEntidade.Create;
    try
      SQLConsulta.Connection := DmConexao.SQLConexao;
      SQLConsulta.SQL.Clear;
      SQLConsulta.SQL.Add('SELECT * FROM USUARIOS WHERE LOGIN = :LOGIN AND :SENHA ');
      SQLConsulta.ParamByName('LOGIN').AsString := Login;
      SQLConsulta.ParamByName('SENHA').AsString := Senha;
      SQLConsulta.Open;

        if SQLConsulta.IsEmpty then
          raise Exception.Create('Usuário e/ou Senha inválidos');
            if SQLConsulta.FieldbyName('STATUS').AsString <> 'A' then
              raise Exception.Create('Usuário Bloqueado, entre em contato com o adminstrador');

              lUsuario.IDUsuarioLogado := SQLConsulta.FieldbyName('ID').AsString;
              lUsuario.NomeUsuarioLogado := SQLConsulta.FieldByName('NOME').AsString;
              lUsuario.LoginUsuarioLogado := SQLConsulta.FieldByName('LOGIN').AsString;
    finally
      SQLConsulta.Close;
      SQLConsulta.Free;
      lUsuario.Free;
    end;
end;

function TDmUsuarios.TemLoginCadastrado(Login, Id: String): Boolean;
Var
  SQLConsulta : TFDQuery;
begin
  Result := False;
  SQLConsulta := TFDQuery.Create(nil);
    try
      SQLConsulta.Connection := DmConexao.SQLConexao;
      SQLConsulta.SQL.Clear;
      SQLConsulta.SQL.Add('SELECT ID FROM USUARIOS WHERE LOGIN = :LOGIN');
      SQLConsulta.ParamByName('LOGIN').AsString := Login;
      SQLConsulta.Open;
        if not SQLConsulta.IsEmpty then
         Result := SQLConsulta.FieldByName('ID').AsString <> ID;
    finally
      SQLConsulta.Close;
      SQLConsulta.Free;
    end;
end;

end.
