program MonolitoFinanceiro;

uses
  Vcl.Forms,
  MonolitoFinanceiro.View.Principal in 'src\View\MonolitoFinanceiro.View.Principal.pas' {FrmPrincipal},
  MonolitoFinanceiro.View.CadastroPadrao in 'src\View\MonolitoFinanceiro.View.CadastroPadrao.pas' {FrmCadastroPadrao};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.CreateForm(TFrmCadastroPadrao, FrmCadastroPadrao);
  Application.Run;
end.
