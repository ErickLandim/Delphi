unit ListaTarefas.View.Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Buttons, Vcl.StdCtrls;

type
  TFrm_Principal = class(TForm)
    Pnl_Principal: TPanel;
    Pnl_TopoTitulo: TPanel;
    Pnl_BaixoBandeja: TPanel;
    Pnl_Pesquisa: TPanel;
    Pnl_CentralLista: TPanel;
    ListBox1: TListBox;
    Edt_Pesquisa: TEdit;
    SBtn_Pesquisar: TSpeedButton;
    SBtn_Cadastrar: TSpeedButton;
    SBtn_Editar: TSpeedButton;
    SBtn_Cancelar: TSpeedButton;

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Principal: TFrm_Principal;

implementation

{$R *.dfm}



end.