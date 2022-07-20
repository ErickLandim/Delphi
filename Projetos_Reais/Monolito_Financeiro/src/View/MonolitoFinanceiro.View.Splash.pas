unit MonolitoFinanceiro.View.Splash;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.Imaging.pngimage;

type
  TFrmSplash = class(TForm)
    PnlPrincipal: TPanel;
    ImgLogo: TImage;
    LblStatus: TLabel;
    PrgsBarStatusCarregamento: TProgressBar;
    LblNomeAplicacao: TLabel;
    Timer1: TTimer;
    Panel1: TPanel;
    ImgBancoDeDados: TImage;
    ImgDll: TImage;
    ImgConfiguracoes: TImage;
    ImgIniciando: TImage;
    procedure Timer1Timer(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmSplash: TFrmSplash;

implementation

{$R *.dfm}



procedure TFrmSplash.Timer1Timer(Sender: TObject);
begin
  PrgsBarStatusCarregamento.StepIt;
  case PrgsBarStatusCarregamento.Position of
  10 : LblStatus.Caption := 'Carregando dependências...';
  25 : LblStatus.Caption := 'Conectando ao banco de dados...';
  45 : LblStatus.Caption := 'Carregando as configurações...';
  75 : LblStatus.Caption := 'Iniciando sistema...';
  end;
  if PrgsBarStatusCarregamento.Position = 100 then
    Close;
end;

end.
