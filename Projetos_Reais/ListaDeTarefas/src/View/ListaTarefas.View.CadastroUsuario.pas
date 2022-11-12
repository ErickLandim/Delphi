unit ListaTarefas.View.CadastroUsuario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Buttons, Vcl.StdCtrls,
  ListaTarefas.Model.Usuarios, ListaTarefas.dao.Usuario;

type
  TFrmCadastroUsuario = class(TForm)
    Pnl_Central: TPanel;
    Pnl_BandejaDown: TPanel;
    SBtn_Salvar: TSpeedButton;
    Edt_Nome: TEdit;
    Edt_Senha: TEdit;
    Edt_Email: TEdit;
    PnlSalvar: TPanel;
    PnlNome: TPanel;
    PnlSenha: TPanel;
    PnlEmail: TPanel;
    LblNome: TLabel;
    LblEmail: TLabel;
    LblSenha: TLabel;
    PnlLinhaNome: TPanel;
    PnlLinhaSenha: TPanel;
    PnlLinhaEmail: TPanel;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure SBtn_SalvarClick(Sender: TObject);
  private
    { Private declarations }
    FDAO: TDAOUsuario;
    Procedure Salvar;
  public

  end;

var
  FrmCadastroUsuario: TFrmCadastroUsuario;

implementation

{$R *.dfm}

procedure TFrmCadastroUsuario.FormCreate(Sender: TObject);
begin
  FDAO := TDAOUsuario.Create;
end;

procedure TFrmCadastroUsuario.FormDestroy(Sender: TObject);
begin
  FDAO.Free;
end;

procedure TFrmCadastroUsuario.Salvar;
var
  lUsuario: TUsuario;
begin
  lUsuario := TUsuario.Create;
  try
    lUsuario.Nome := Edt_Nome.Text;
    lUsuario.Senha := Edt_Senha.Text;
    lUsuario.Email := Edt_Email.Text;
    FDAO.Inserir(lUsuario);
    Edt_Nome.Clear;
    Edt_Senha.Clear;
    Edt_Email.Clear;
  finally
    lUsuario.Free;
  end;
end;

procedure TFrmCadastroUsuario.SBtn_SalvarClick(Sender: TObject);
begin
  // FUsuario.Id := 1;
  // FUsuario.Nome := Edt_Nome.Text;
  // FUsuario.Senha := Edt_Senha.Text;
  // FUsuario.Email := Edt_Email.Text;
  Salvar;
  ModalResult := mrok;
end;

end.
