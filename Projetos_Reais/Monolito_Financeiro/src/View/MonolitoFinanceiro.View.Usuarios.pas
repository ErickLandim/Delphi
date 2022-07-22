unit MonolitoFinanceiro.View.Usuarios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, MonolitoFinanceiro.View.CadastroPadrao,
  Data.DB, System.ImageList, Vcl.ImgList, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls,
  Vcl.ExtCtrls, Vcl.WinXPanels, MonolitoFinanceiro.Model.Usuarios, Vcl.WinXCtrls;

type
  TFrmUsuarios = class(TFrmCadastroPadrao)
    ToggleStatus: TToggleSwitch;
    EdtNome: TEdit;
    LblNome: TLabel;
    EdtSenha: TEdit;
    EdtLogin: TEdit;
    LblLogin: TLabel;
    LblSenha: TLabel;
    LblStatus: TLabel;
    procedure BtnPesquisarClick(Sender: TObject);
    procedure BtnAlterarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmUsuarios: TFrmUsuarios;

implementation

{$R *.dfm}

procedure TFrmUsuarios.BtnAlterarClick(Sender: TObject);
begin
  inherited;
  EdtNome.Text := DmUsuarios.CdsUsuariosNome.AsString;
  EdtLogin.Text := DmUsuarios.CdsUsuariosLogin.AsString;
  EdtSenha.Text := DmUsuarios.CdsUsuariosSenha.AsString;

  ToggleStatus.State := Tsson;
  if DmUsuarios.CdsUsuariosStatus.AsString = 'B' then
    ToggleStatus.State := tssOff;
end;

procedure TFrmUsuarios.BtnPesquisarClick(Sender: TObject);
begin
  inherited;
  DmUsuarios.CdsUsuarios.close;
  DmUsuarios.CdsUsuarios.CommandText := 'SELECT * FROM Usuarios';
  DmUsuarios.Cdsusuarios.open;

  { DmConexao.FDQuerySelect.Close;
  DmConexao.FDQuerySelect.SQL.Clear;
  DmConexao.FDQuerySelect.SQL.Add('SELECT * FROM Usuarios');
  DmConexao.FDQuerySelect.Open;}

end;

end.
