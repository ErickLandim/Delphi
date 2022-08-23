unit MonolitoFinanceiro.View.CadastroPadrao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, System.ImageList, Vcl.ImgList,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, Vcl.WinXPanels,
  Vcl.Buttons;

type
  TFrmCadastroPadrao = class(TForm)
    PnlPrincipal: TCardPanel;
    CardCadastro: TCard;
    CardPesquisa: TCard;
    PnlPesquisa: TPanel;
    PnlPesquisaBotoes: TPanel;
    PnlGrid: TPanel;
    DBGrid1: TDBGrid;
    EdtPesquisarNome: TEdit;
    LblPesquisarNome: TLabel;
    ImageList1: TImageList;
    PnlCadastroBotoes: TPanel;
    DataSource1: TDataSource;
    LblPesquisarEmail: TLabel;
    EdtPesquisarEmail: TEdit;
    SBtn_Imprimir: TSpeedButton;
    PnlBtn_imprimir: TPanel;
    PnlBtn_Excluir: TPanel;
    SBtn_Excluir: TSpeedButton;
    PnlBtn_Alterar: TPanel;
    SBtn_Alterar: TSpeedButton;
    PnlBtn_Incluir: TPanel;
    SBtn_Incluir: TSpeedButton;
    PnlBtn_Fechar: TPanel;
    SBtn_Fechar: TSpeedButton;
    PnlBtn_Pesquisar: TPanel;
    SBtn_Pesquisar: TSpeedButton;
    PnlBtn_Cancelar: TPanel;
    SBtn_Cancelar: TSpeedButton;
    PnlBtn_Salvar: TPanel;
    SBtn_Salvar: TSpeedButton;
    procedure BtnIncluirClick(Sender: TObject);
    procedure BtnAlterarClick(Sender: TObject);
    procedure BtnFecharClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SBtn_IncluirClick(Sender: TObject);
    procedure SBtn_AlterarClick(Sender: TObject);
    procedure SBtn_ExcluirClick(Sender: TObject);
    procedure SBtn_FecharClick(Sender: TObject);
    procedure SBtn_CancelarClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadastroPadrao: TFrmCadastroPadrao;

implementation

{$R *.dfm}

procedure TFrmCadastroPadrao.BtnAlterarClick(Sender: TObject);
begin
   PnlPrincipal.ActiveCard := CardCadastro
end;

procedure TFrmCadastroPadrao.BtnCancelarClick(Sender: TObject);
begin
   PnlPrincipal.ActiveCard := CardPesquisa;
end;

procedure TFrmCadastroPadrao.BtnFecharClick(Sender: TObject);
begin
   Close;
end;

procedure TFrmCadastroPadrao.BtnIncluirClick(Sender: TObject);
begin
   PnlPrincipal.ActiveCard := CardCadastro;
end;

procedure TFrmCadastroPadrao.FormShow(Sender: TObject);
begin
   PnlPrincipal.ActiveCard := CardPesquisa;
end;

procedure TFrmCadastroPadrao.SBtn_AlterarClick(Sender: TObject);
begin
 PnlPrincipal.ActiveCard := CardCadastro;
end;


procedure TFrmCadastroPadrao.SBtn_CancelarClick(Sender: TObject);
begin
  PnlPrincipal.ActiveCard := CardPesquisa;
end;

procedure TFrmCadastroPadrao.SBtn_ExcluirClick(Sender: TObject);
begin
//
end;

procedure TFrmCadastroPadrao.SBtn_FecharClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmCadastroPadrao.SBtn_IncluirClick(Sender: TObject);
begin
  PnlPrincipal.ActiveCard := CardCadastro;
end;

end.
