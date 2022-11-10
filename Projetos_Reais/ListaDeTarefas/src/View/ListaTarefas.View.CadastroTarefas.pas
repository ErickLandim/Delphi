unit ListaTarefas.View.CadastroTarefas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, System.Generics.Collections, ListaTarefas.Model.Tarefas;

type
  TFrmCadastroTarefas = class(TForm)
    Pnl_Central: TPanel;
    Pnl_BandejaDown: TPanel;
    SBtn_Salvar: TSpeedButton;
    Edt_Titulo: TEdit;
    Pnl_Titulo: TPanel;
    Pnl_Descricao: TPanel;
    Mm_Descricao: TMemo;
    PnlBtnSalvar: TPanel;
    PnlBtnCancelar: TPanel;
    SBtn_Cancelar: TSpeedButton;
    LblDescricao: TLabel;
    LblTitulo: TLabel;
    Panel1: TPanel;
    procedure SBtn_SalvarClick(Sender: TObject);
    procedure SBtn_CancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    FTarefas: TObjectList<TTarefas>;
    Constructor Create(AOwner: TComponent; aTarefas: TObjectList<TTarefas>);
  end;

var
  FrmCadastroTarefas: TFrmCadastroTarefas;

implementation

{$R *.dfm}

{ TFrmCadastroTarefas }

constructor TFrmCadastroTarefas.Create(AOwner: TComponent; aTarefas: TObjectList<TTarefas>);
begin
  Inherited Create(AOwner);
  FTarefas := aTarefas;
end;

procedure TFrmCadastroTarefas.SBtn_CancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmCadastroTarefas.SBtn_SalvarClick(Sender: TObject);
var
  lTarefas : TTarefas;
begin
  lTarefas := TTarefas.Create;
  lTarefas.Codigo := FTarefas.Count+1;
  lTarefas.IdUsuario := 1;
  lTarefas.Titulo := Edt_Titulo.Text;
  lTarefas.Descricao := Mm_Descricao.Text;
  lTarefas.DataCriacao := Now;
  FTarefas.Add(lTarefas);
  Edt_Titulo.clear;
  Mm_Descricao.Clear;
end;

end.
