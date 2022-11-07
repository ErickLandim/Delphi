unit ListaTarefas.View.CadastroUsuario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Buttons, Vcl.StdCtrls;

type
  TFrm_CadastroUsuario = class(TForm)
    Pnl_Central: TPanel;
    Pnl_BandejaDown: TPanel;
    SBtn_Salvar: TSpeedButton;
    Edt_Nome: TEdit;
    Edt_Senha: TEdit;
    Edt_Email: TEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_CadastroUsuario: TFrm_CadastroUsuario;

implementation

{$R *.dfm}

end.
