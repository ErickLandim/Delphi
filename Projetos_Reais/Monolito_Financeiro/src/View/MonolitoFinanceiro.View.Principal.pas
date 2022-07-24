unit MonolitoFinanceiro.View.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.ComCtrls;

type
  TFrmPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    mnuCadastro: TMenuItem;
    mnuRelatorios: TMenuItem;
    mnuAjuda: TMenuItem;
    MnuUsuarios: TMenuItem;
    StatusBar1: TStatusBar;
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
  MonolitoFinanceiro.View.Usuarios, MonolitoFinanceiro.View.Splash,
  MonolitoFinanceiro.View.Login, MonolitoFinanceiro.Model.Usuarios;

{$R *.dfm}


procedure TFrmPrincipal.FormCreate(Sender: TObject);
begin
   FrmSplash := TFrmSplash.Create(nil);
   try
   FrmSplash.ShowModal;
   finally
   FreeAndNil(FrmSplash);
   end;
     FrmLogin := TFrmLogin.Create(nil);
    Try
      FrmLogin.ShowModal;
      if FrmLogin.ModalResult <> MrOK then
       Application.Terminate;
     Finally
       FreeAndNil(FrmLogin);
     End;
    // StatusBar1.Penels.Items[1].Text := 'Usuário: ' +
end;

procedure TFrmPrincipal.MnuUsuariosClick(Sender: TObject);
begin
   FrmUsuarios.show;
end;

end.
