unit ListaTarefas.View.CadastroTarefas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls;

type
  TFrm_CadastroTarefas = class(TForm)
    Pnl_Central: TPanel;
    Pnl_BandejaDown: TPanel;
    SBtn_Salvar: TSpeedButton;
    Edt_Titulo: TEdit;
    Pnl_Titulo: TPanel;
    Pnl_Descricao: TPanel;
    Memo1: TMemo;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_CadastroTarefas: TFrm_CadastroTarefas;

implementation

{$R *.dfm}

end.
