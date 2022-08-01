unit MonolitoFinanceiro.View.Login;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Imaging.pngimage,
  Vcl.StdCtrls, MonolitoFinanceiro.Model.Usuarios, Vcl.Buttons;

type
  TFrmLogin = class(TForm)
    PnlLoginEsquerda: TPanel;
    ImgLogo: TImage;
    PnlPrincipal: TPanel;
    Panel1: TPanel;
    Panel2: TPanel;
    LblNomeAplicacao: TLabel;
    PnlLoginInformacoes: TPanel;
    LblLogin: TLabel;
    LblSenha: TLabel;
    EdtLogin: TEdit;
    EdtSenha: TEdit;
    BtnEntrar: TButton;
    LblLoginSemSenha: TLabel;
    LblLoginSemLogin: TLabel;
    PnlLoginInserindo: TPanel;
    Panel4: TPanel;
    PnlSenhaInserindo: TPanel;
    Panel3: TPanel;
    Label1: TLabel;
    SpeedButton1: TSpeedButton;
    procedure BtnEntrarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmLogin: TFrmLogin;

implementation

uses
  MonolitoFinanceiro.Model.Sistema;

{$R *.dfm}

procedure TFrmLogin.BtnEntrarClick(Sender: TObject);
begin
  if Trim(EdtLogin.Text) = '' then
  Begin
    EdtLogin.SetFocus;
    Application.MessageBox('Informe seu nome de usuario', 'Atenção', Mb_Ok + Mb_ICONWARNING);
    Abort;
  End;
     if Trim(EdtSenha.Text) = '' then
     begin
        EdtSenha.SetFocus;
        Application.MessageBox('Informe sua senha de usuario', 'Atenção', Mb_Ok + Mb_ICONWARNING);
        Abort;
     end;
       try
         DmUsuarios.EfetuarLogin(Trim(EdtLogin.Text), Trim(EdtSenha.Text));
         DmSistema.DataUltimoAcesso(Now);
         DmSistema.UsuarioUltimoAcesso(DmUsuarios.GetUsuarioLogado.Login);
         ModalResult := MrOk;
       Except on Erro : Exception do
        begin
          Application.MessageBox(PWideChar(Erro.Message), 'Atenção', MB_Ok + MB_ICONWARNING);
          EdtLogin.SetFocus;
        end;
       end;

end;

procedure TFrmLogin.FormShow(Sender: TObject);
begin
    EdtLogin.Text := DmSistema.UsuarioUltimoAcesso;
end;

procedure TFrmLogin.SpeedButton1Click(Sender: TObject);
begin
    Application.Terminate;
end;

end.
