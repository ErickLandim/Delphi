unit MonolitoFinanceiro.View.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus;

type
  TFrmPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    mnuCadastro: TMenuItem;
    mnuRelatorios: TMenuItem;
    mnuAjuda: TMenuItem;
    MnuCadastroPadrao: TMenuItem;
    procedure MnuCadastroPadraoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

uses
  MonolitoFinanceiro.View.CadastroPadrao;

{$R *.dfm}

procedure TFrmPrincipal.MnuCadastroPadraoClick(Sender: TObject);
begin
   FrmCadastroPadrao.show;
end;

end.
