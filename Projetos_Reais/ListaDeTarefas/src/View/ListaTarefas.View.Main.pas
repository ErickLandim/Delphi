unit ListaTarefas.View.Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Buttons, Vcl.StdCtrls,
  Vcl.ComCtrls, System.Generics.Collections, ListaTarefas.Model.Tarefas,
  ListaTarefas.dao.Usuario, ListaTarefas.Model.Usuarios;

type
  TFrm_Principal = class(TForm)
    Pnl_Principal: TPanel;
    Pnl_TopoTitulo: TPanel;
    Pnl_BaixoBandeja: TPanel;
    Pnl_Pesquisa: TPanel;
    Pnl_CentralLista: TPanel;
    Edt_Pesquisa: TEdit;
    SBtn_Pesquisar: TSpeedButton;
    SBtn_Cadastrar: TSpeedButton;
    SBtn_Editar: TSpeedButton;
    SBtn_Cancelar: TSpeedButton;
    PnlBtnNovoCadastrar: TPanel;
    PnlBtnEditar: TPanel;
    PnlBtnCancelar: TPanel;
    PnlBtnPesquisar: TPanel;
    ListView1: TListView;
    procedure FormCreate(Sender: TObject);
    procedure SBtn_CadastrarClick(Sender: TObject);

  private
    FDAOusuario: TDAOUsuario;
    FUsuario: TUsuario;
    function ValidaUsuario(aEmail, aSenha: String): Boolean;
    Procedure PreencheListView(aTarefas: TObjectList<TTarefas>);

  public
    { Public declarations }
  end;

var
  Frm_Principal: TFrm_Principal;

implementation

uses
  ListaTarefas.View.Login,
  ListaTarefas.View.CadastroTarefas;

{$R *.dfm}

procedure TFrm_Principal.FormCreate(Sender: TObject);
Var
  lLogin: TFrmLogin;
begin
  lLogin := TFrmLogin.Create(nil);
  Try
    lLogin.ShowModal;
    if Not ValidaUsuario(lLogin.Edt_Email.Text, lLogin.Edt_Senha.Text) then
    Begin
      Showmessage('Usuário ou Senha incorretos');
      Application.Terminate;
    End;

  Finally
    lLogin.Free;
  End;
end;

procedure TFrm_Principal.PreencheListView(aTarefas: TObjectList<TTarefas>);
var
  lItem: TListItem;
  lTarefas: TTarefas;
begin
  if not Assigned(aTarefas) then
    Exit;
  ListView1.Clear;
  for lTarefas in aTarefas do
  begin
    lItem := ListView1.Items.add;
    lItem.Caption := lTarefas.Codigo.ToString;
    lItem.SubItems.add(lTarefas.Titulo);
    lItem.SubItems.add(FormatDateTime('dd/mm/yyyy hh:mm',
      lTarefas.DataCriacao));
    lItem.Data := lTarefas;
  end;
end;

procedure TFrm_Principal.SBtn_CadastrarClick(Sender: TObject);
var
  lCadastroTarefas: TFrmCadastroTarefas;
  lTarefas: TObjectList<TTarefas>;
begin
  lTarefas := TObjectList<TTarefas>.Create;
  lCadastroTarefas := TFrmCadastroTarefas.Create(Self, lTarefas);

  try
    lCadastroTarefas.ShowModal;
    PreencheListView(lTarefas);
  finally
    FreeAndNil(lCadastroTarefas);
    lTarefas.Free;
  end;
end;

function TFrm_Principal.ValidaUsuario(aEmail, aSenha: String): Boolean;
begin
  FDAOusuario := TDAOUsuario.Create;
  try
    FUsuario := FDAOusuario.LoginUsuario(aEmail, aSenha);
    if not Assigned(FUsuario) then
      Result := False;

    Result := not FUsuario.Id.ToString.IsEmpty;
  finally
    FDAOusuario.Free;
    FUsuario.Free;
  end;

end;

end.
