unit ListaTarefas.View.Login;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons;

type
  TFrmLogin = class(TForm)
    PnlCentral: TPanel;
    PnlTitulo: TPanel;
    PnlOrgEdits: TPanel;
    PnlSenha: TPanel;
    Edt_Senha: TEdit;
    LblSenha: TLabel;
    PnlLinhaSenha: TPanel;
    PnlLoginNome: TPanel;
    LblEmail: TLabel;
    Edt_Email: TEdit;
    PnlLinhaEmail: TPanel;
    PnlBandejaBotoes: TPanel;
    SBtn_Entrar: TSpeedButton;
    PnlBtnEntrar: TPanel;
    PnlCadastrar: TPanel;
    SBtn_CadastrarUsuario: TSpeedButton;
    procedure SBtn_CadastrarUsuarioClick(Sender: TObject);
    procedure SBtn_EntrarClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmLogin: TFrmLogin;

implementation

uses
  ListaTarefas.View.CadastroUsuario;

{$R *.dfm}


procedure TFrmLogin.SBtn_CadastrarUsuarioClick(Sender: TObject);
var
  lCadastroUsuario : TFrmCadastroUsuario;
begin
  lCadastroUsuario := TFrmCadastroUsuario.Create(nil);
    try
      lCadastroUsuario.ShowModal;
      //if lCadastroUsuario.ModalResult = mrok then
      //begin
      //  Edt_Email.Text := lCadastroUsuario.FUsuario.Email;
      //  Edt_Senha.Text := lCadastroUsuario.FUsuario.Senha;
      //end;
    finally
      FreeAndNil(lCadastroUsuario);
    end;
end;

procedure TFrmLogin.SBtn_EntrarClick(Sender: TObject);
begin
  Close;
end;

end.
