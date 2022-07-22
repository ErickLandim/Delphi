program MonolitoFinanceiro;

uses
  Vcl.Forms,
  MonolitoFinanceiro.View.Principal in 'src\View\MonolitoFinanceiro.View.Principal.pas' {FrmPrincipal},
  MonolitoFinanceiro.View.CadastroPadrao in 'src\View\MonolitoFinanceiro.View.CadastroPadrao.pas' {FrmCadastroPadrao},
  MonolitoFinanceiro.View.Splash in 'src\View\MonolitoFinanceiro.View.Splash.pas' {FrmSplash},
  MonolitoFinanceiro.Model.Conexao in 'src\Model\MonolitoFinanceiro.Model.Conexao.pas' {DmConexao: TDataModule},
  MonolitoFinanceiro.View.Usuarios in 'src\View\MonolitoFinanceiro.View.Usuarios.pas' {FrmUsuarios},
  MonolitoFinanceiro.Model.Usuarios in 'src\Model\MonolitoFinanceiro.Model.Usuarios.pas' {DmUsuarios: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDmConexao, DmConexao);
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.CreateForm(TFrmCadastroPadrao, FrmCadastroPadrao);
  Application.CreateForm(TFrmUsuarios, FrmUsuarios);
  Application.CreateForm(TDmUsuarios, DmUsuarios);
  Application.Run;
end.
