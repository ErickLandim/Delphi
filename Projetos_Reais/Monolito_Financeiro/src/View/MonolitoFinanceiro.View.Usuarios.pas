unit MonolitoFinanceiro.View.Usuarios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, MonolitoFinanceiro.View.CadastroPadrao,
  Data.DB, System.ImageList, Vcl.ImgList, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls,
  Vcl.ExtCtrls, Vcl.WinXPanels, MonolitoFinanceiro.Model.Conexao;

type
  TFrmUsuarios = class(TFrmCadastroPadrao)
    procedure BtnPesquisarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmUsuarios: TFrmUsuarios;

implementation

{$R *.dfm}

procedure TFrmUsuarios.BtnPesquisarClick(Sender: TObject);
begin
  inherited;
  DmConexao.FDQuerySelect.Close;
  DmConexao.FDQuerySelect.SQL.Clear;
  DmConexao.FDQuerySelect.SQL.Add('SELECT * FROM Usuarios');
  DmConexao.FDQuerySelect.Open;

end;

end.
