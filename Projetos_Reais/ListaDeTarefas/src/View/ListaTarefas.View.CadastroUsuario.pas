unit ListaTarefas.View.CadastroUsuario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Buttons, Vcl.StdCtrls,
  ListaTarefas.Model.Usuarios;

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
  public
    FUsuario : TUsuario;
  end;

var
  FrmCadastroUsuario: TFrmCadastroUsuario;

implementation

{$R *.dfm}

procedure TFrmCadastroUsuario.FormCreate(Sender: TObject);
begin
  FUsuario := TUsuario.Create;
end;

procedure TFrmCadastroUsuario.FormDestroy(Sender: TObject);
begin
  FUsuario.Free;
end;

procedure TFrmCadastroUsuario.SBtn_SalvarClick(Sender: TObject);
begin
  FUsuario.Id := 1;
  FUsuario.Nome := Edt_Nome.Text;
  FUsuario.Senha := Edt_Senha.Text;
  FUsuario.Email := Edt_Email.Text;
  ModalResult := mrok;
end;

end.
