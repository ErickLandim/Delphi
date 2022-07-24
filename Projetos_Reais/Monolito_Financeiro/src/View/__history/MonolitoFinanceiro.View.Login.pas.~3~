unit MonolitoFinanceiro.View.Login;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Imaging.pngimage,
  Vcl.StdCtrls;

type
  TFrmLogin = class(TForm)
    PnlLoginEsquerda: TPanel;
    ImgLogo: TImage;
    PnlPrincipal: TPanel;
    Panel1: TPanel;
    Panel2: TPanel;
    LblNomeAplicacao: TLabel;
    PnlLoginInformacoes: TPanel;
    LblNome: TLabel;
    LblSenha: TLabel;
    EdtNome: TEdit;
    EdtSenha: TEdit;
    BtnEntrar: TButton;
    procedure BtnEntrarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmLogin: TFrmLogin;

implementation

{$R *.dfm}

procedure TFrmLogin.BtnEntrarClick(Sender: TObject);
begin
  if Trim(EdtNome.Text) = '' then
    EdtNome.SetFocus;
    Application.MessageBox('Informe seu nome de usuario', 'Atenção', Mb_Ok + Mb_ICONWARNING);
    Abort;

     if Trim(EdtSenha.Text) = '' then
        EdtSenha.SetFocus;
        Application.MessageBox('Informe sua senha de usuario', 'Atenção', Mb_Ok + Mb_ICONWARNING);
        Abort;


end;

end.
