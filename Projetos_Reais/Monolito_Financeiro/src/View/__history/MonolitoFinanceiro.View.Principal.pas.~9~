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
    MnuUsuarios: TMenuItem;
    procedure MnuUsuariosClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

uses
  MonolitoFinanceiro.View.Usuarios, MonolitoFinanceiro.View.Splash;

{$R *.dfm}


procedure TFrmPrincipal.FormCreate(Sender: TObject);
begin
   FrmSplash := TFrmSplash.Create(nil);
   try
   FrmSplash.ShowModal;
   finally
   FreeAndNil(FrmSplash);
   end;
end;

procedure TFrmPrincipal.MnuUsuariosClick(Sender: TObject);
begin
   FrmUsuarios.show;
end;

end.
