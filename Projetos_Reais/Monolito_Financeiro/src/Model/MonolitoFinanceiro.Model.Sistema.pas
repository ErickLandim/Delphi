unit MonolitoFinanceiro.Model.Sistema;

interface

uses
  System.SysUtils, System.Classes, Vcl.Forms;

type
  TDmSistema = class(TDataModule)
  private
    { Private declarations }

    const ARQUIVOCONFIGURACAO = 'MonolitoFinanceiro.cfg';
    Function GetConfiguracao(Secao, Parametro, ValorPadrao : String) : String;
    Procedure SetConfiguracao(Secao, Parametro, Valor : String);
  public
    { Public declarations }
    function DataUltimoAcesso : String; Overload;
    Procedure DataUltimoAcesso(aValue : TDateTime); overload;
    function UsuarioUltimoAcesso : string; Overload;
    Procedure UsuarioUltimoAcesso(aValue : String); Overload;
  end;

var
  DmSistema: TDmSistema;

implementation

uses
  System.IniFiles;
{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TDataModule1 }

function TDmSistema.DataUltimoAcesso: String;
begin
     Result := GetConfiguracao('ACESSO', 'Data', '');
end;

procedure TDmSistema.DataUltimoAcesso(aValue: TDateTime);
begin
   SetConfiguracao('ACESSO', 'Data', DateTimeToStr(aValue));
end;

function TDmSistema.GetConfiguracao(Secao, Parametro,
  ValorPadrao: String): String;
var
  LArquivoConfig : TIniFile;
  begin
  LArquivoConfig := TIniFile.Create(ExtractFilePath(Application.ExeName) + ARQUIVOCONFIGURACAO);
    try
      Result := LArquivoConfig.ReadString(Secao, Parametro, ValorPadrao);
    finally
      LArquivoConfig.free;
    end;
end;

procedure TDmSistema.SetConfiguracao(Secao, Parametro, Valor: String);
var
  LArquivoConfig : TIniFile;
begin
  LArquivoConfig := TIniFile.Create(ExtractFilePath(Application.ExeName) + ARQUIVOCONFIGURACAO);
    Try
      LArquivoConfig.WriteString(Secao, Parametro, Valor);
    Finally
      LArquivoConfig.Free;
    End;
end;

function TDmSistema.UsuarioUltimoAcesso: string;
begin
   Result := GetConfiguracao('ACESSO', 'Usuario', '');
end;

procedure TDmSistema.UsuarioUltimoAcesso(aValue: String);
begin
   SetConfiguracao('ACESSO', 'Usuario', aValue);
end;

end.
