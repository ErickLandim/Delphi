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
    Procedure AtualizarStatus(Mensagem : string; Imagem : TImage);
  public
    { Public declarations }
  end;

var
  FrmSplash: TFrmSplash;

implementation

{$R *.dfm}



Procedure TFrmSplash.AtualizarStatus(Mensagem : string; Imagem : TImage);
begin
  LblStatus.Caption := Mensagem;
  Imagem.Visible := True;
end;

procedure TFrmSplash.Timer1Timer(Sender: TObject);
Begin
  if PrgsBarStatusCarregamento.Position <= 100 then
  begin
    PrgsBarStatusCarregamento.StepIt;
      case PrgsBarStatusCarregamento.Position of
        10 : AtualizarStatus('Carregando dependências...', ImgDll);
        25 : AtualizarStatus('Conectando ao banco de dados...', ImgBancoDeDados);
        45 : AtualizarStatus('Carregando as configurações...', ImgConfiguracoes);
        75 : AtualizarStatus('Iniciando sistema...', ImgIniciando);
      end;
  end;
    if PrgsBarStatusCarregamento.Position = 100 then
      Close;
end;

end.
