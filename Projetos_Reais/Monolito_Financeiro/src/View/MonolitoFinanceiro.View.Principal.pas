unit MonolitoFinanceiro.View.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.ComCtrls, Vcl.ExtCtrls,
  Vcl.Buttons, Vcl.StdCtrls;

type
  TFrmPrincipal = class(TForm)
    StatusBar1: TStatusBar;
    Timer1: TTimer;
    PnlMenuPrincipal: TPanel;
    PnlMenuEsquerda: TPanel;
    SptBtnSair: TSpeedButton;
    SptBtnRelatorios: TSpeedButton;
    SptBtnCadastro: TSpeedButton;
    SptBtnMenu: TSpeedButton;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Pnl_SubMenu_Cadastro: TPanel;
    SbtBtn_CadastroUsuarios: TSpeedButton;
    Panel5: TPanel;
    Label1: TLabel;

    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure SptBtnMenuClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SptBtnCadastroClick(Sender: TObject);
    procedure Pnl_SubMenu_CadastroMouseEnter(Sender: TObject);
    procedure SbtBtn_CadastroUsuariosClick(Sender: TObject);
    procedure SptBtnSairClick(Sender: TObject);
    procedure Pnl_SubMenu_CadastroMouseLeave(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;
  bExpandido : boolean;

implementation

uses
  MonolitoFinanceiro.View.Usuarios, MonolitoFinanceiro.View.Splash,
  MonolitoFinanceiro.View.Login, MonolitoFinanceiro.Model.Usuarios,
  System.SysUtils;

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
     StatusBar1.Panels.Items[1].Text := 'Usu�rio: ' + DmUsuarios.GetUsuarioLogado.Nome;
end;

procedure TFrmPrincipal.FormShow(Sender: TObject);
begin
  PnlMenuEsquerda.Width := 50;
end;

procedure TFrmPrincipal.Pnl_SubMenu_CadastroMouseEnter(Sender: TObject);
begin
  Pnl_SubMenu_Cadastro.Visible := False;
end;

procedure TFrmPrincipal.Pnl_SubMenu_CadastroMouseLeave(Sender: TObject);
begin
  Pnl_SubMenu_Cadastro.Visible := False;
end;

procedure TFrmPrincipal.SbtBtn_CadastroUsuariosClick(Sender: TObject);
begin
  FrmUsuarios := TFrmUsuarios.Create(Self);

  FrmUsuarios.Parent := PnlMenuPrincipal;
  FrmUsuarios.Align := AlClient;
  FrmUsuarios.BorderStyle := bsNone;

  FrmUsuarios.Show;

  Pnl_SubMenu_Cadastro.Visible := False;
end;

procedure TFrmPrincipal.SptBtnCadastroClick(Sender: TObject);
begin
  Pnl_SubMenu_Cadastro.Visible := Not Pnl_SubMenu_Cadastro.Visible;
end;

procedure TFrmPrincipal.SptBtnMenuClick(Sender: TObject);
begin
 if bExpandido then
   PnlMenuEsquerda.Width := 50
  else
   PnlMenuEsquerda.Width := 130;

   bExpandido := Not bExpandido;

   Pnl_SubMenu_Cadastro.Visible := False;

end;

procedure TFrmPrincipal.SptBtnSairClick(Sender: TObject);
begin
    Application.Terminate;
end;

procedure TFrmPrincipal.Timer1Timer(Sender: TObject);
begin
  StatusBar1.Panels.Items[0].Text := DateTimeToStr(Now);
end;

end.
