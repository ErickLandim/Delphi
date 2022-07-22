unit MonolitoFinanceiro.Model.Usuarios;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Datasnap.Provider,
  Datasnap.DBClient, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  MonolitoFinanceiro.Model.Conexao;

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
  end;

var
  DmUsuarios: TDmUsuarios;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
