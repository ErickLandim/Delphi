unit MonolitoFinanceiro.Model.Usuarios;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Datasnap.Provider,
  Datasnap.DBClient, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  MonolitoFinanceiro.Model.Conexao, MonolitoFinanceiro.Utilitarios,
  MonolitoFinanceiro.Model.Entidades.Usuario;

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
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  private
    FEntidadeUsuario : TModelEntidadeUsuario;
    { Private declarations }
  public
    { Public declarations }
    Function TemLoginCadastrado(Login : string; Id : String) : Boolean;
    Procedure EfetuarLogin(Login :  string;  Senha : String);
    function GetUsuarioLogado : TModelEntidadeUsuario;


  end;

var
  DmUsuarios: TDmUsuarios;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TDmUsuarios }

procedure TDmUsuarios.DataModuleCreate(Sender: TObject);
begin
  FEntidadeUsuario := TModelEntidadeUsuario.Create;
end;

procedure TDmUsuarios.DataModuleDestroy(Sender: TObject);
begin
  FEntidadeUsuario.free;
end;

procedure TDmUsuarios.EfetuarLogin(Login, Senha: String);
Var
  SQLConsulta : TFDQuery;
begin
  SQLConsulta := TFDQuery.Create(nil);
    try
      SQLConsulta.Connection := DmConexao.SQLConexao;
      SQLConsulta.SQL.Clear;
      SQLConsulta.SQL.Add('SELECT * FROM USUARIOS WHERE LOGIN = :LOGIN AND :SENHA ');
      SQLConsulta.ParamByName('LOGIN').AsString := Login;
      SQLConsulta.ParamByName('SENHA').AsString := Senha;
      SQLConsulta.Open;

        if SQLConsulta.IsEmpty then
          raise Exception.Create('Usu�rio e/ou Senha inv�lidos');
            if SQLConsulta.FieldbyName('STATUS').AsString <> 'A' then
              raise Exception.Create('Usu�rio Bloqueado, entre em contato com o adminstrador');

              FEntidadeUsuario.ID := SQLConsulta.FieldbyName('ID').AsString;
              FEntidadeUsuario.Nome := SQLConsulta.FieldByName('NOME').AsString;
              FEntidadeUsuario.Login:= SQLConsulta.FieldByName('LOGIN').AsString;
    finally
      SQLConsulta.Close;
      SQLConsulta.Free;
    end;
end;

function TDmUsuarios.GetUsuarioLogado: TModelEntidadeUsuario;
begin
  Result := FEntidadeUsuario;
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
