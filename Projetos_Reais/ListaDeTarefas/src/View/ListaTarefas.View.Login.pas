unit ListaTarefas.View.Login;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons;

type
  TFrm_Login = class(TForm)
    PnlCentral: TPanel;
    PnlTitulo: TPanel;
    PnlOrgEdits: TPanel;
    PnlSenha: TPanel;
    Edt_Senha: TEdit;
    LblSenha: TLabel;
    PnlLinhaSenha: TPanel;
    PnlLoginNome: TPanel;
    LblNome: TLabel;
    Edt_Nome: TEdit;
    PnlLinhaNome: TPanel;
    PnlBandejaBotoes: TPanel;
    SBtn_Entrar: TSpeedButton;
    PnlBtnEntrar: TPanel;
    PnlCadastrar: TPanel;
    SBtn_CadastrarUsuario: TSpeedButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Login: TFrm_Login;

implementation

{$R *.dfm}

end.
