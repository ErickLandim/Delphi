unit MonolitoFinanceiro.View.CadastroPadrao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, System.ImageList, Vcl.ImgList,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, Vcl.WinXPanels;

type
  TFrmCadastroPadrao = class(TForm)
    PnlPrincipal: TCardPanel;
    CardCadastro: TCard;
    CardPesquisa: TCard;
    PnlPesquisa: TPanel;
    PnlPesquisaBotoes: TPanel;
    PnlGrid: TPanel;
    DBGrid1: TDBGrid;
    EdtPesquisar: TEdit;
    Pesquisar: TLabel;
    BtnPesquisar: TButton;
    ImageList1: TImageList;
    BtnFechar: TButton;
    BtnIncluir: TButton;
    BtnExcluir: TButton;
    BtnImprimir: TButton;
    BtnAlterar: TButton;
    Panel1: TPanel;
    BtnCancelar: TButton;
    BtnSalvar: TButton;
    DataSource1: TDataSource;
    procedure BtnIncluirClick(Sender: TObject);
    procedure BtnAlterarClick(Sender: TObject);
    procedure BtnFecharClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
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

end.
