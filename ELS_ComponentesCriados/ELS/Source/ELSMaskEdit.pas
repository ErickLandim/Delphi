unit ELSMaskEdit;

interface

uses
  System.SysUtils, System.Classes, Vcl.Controls, Vcl.StdCtrls, Vcl.Mask,Vcl.Graphics;

type
  TTipoMascara = (tmData,tmCPF, tmCNPJ, tmCEP, tmTelefone, tmCelular);
  TELSMaskEdit = class(TMaskEdit)
  private
    FMudarColor: Tcolor;
    FTipoMascara: TTipoMascara;
    procedure SetMudarColor(const Value: Tcolor);
    procedure SetTipoMascara(const Value: TTipoMascara);
    { Private declarations }
  protected
    { Protected declarations }
    Procedure DoEnter; Override;
    Procedure DoExit; Override;
  public
    { Public declarations }
    Constructor Create(Aowner : TComponent); Override;
  published
    { Published declarations }
    property TipoMascara : TTipoMascara read FTipoMascara write SetTipoMascara;
    Property MudarColor : Tcolor read FMudarColor write SetMudarColor;
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('ELS', [TELSMaskEdit]);
end;

{ TELSMaskEdit }

constructor TELSMaskEdit.Create(Aowner: TComponent);
begin
  inherited Create(Aowner);
  FMudarColor := $00D6F4FE;
end;

procedure TELSMaskEdit.DoEnter;
begin
  inherited;
  Color := FMudarColor;
end;

procedure TELSMaskEdit.DoExit;
begin
  inherited;
   Color := ClWindow;

end;

procedure TELSMaskEdit.SetMudarColor(const Value: Tcolor);
begin
  FMudarColor := Value;
end;

procedure TELSMaskEdit.SetTipoMascara(const Value: TTipoMascara);
begin
  FTipoMascara := Value;

  case Value of
    tmData:
        EditMask := '99/99/9999-99;0;_';

    tmCPF:
        EditMask := '999.999.999-99;0;_';

    tmCNPJ:
        EditMask := '99.999.999.9999-99;0;_';

    tmCEP:
        EditMask := '99.999-999;0;_';

    tmTelefone:
        EditMask := '(99) 9999-9999;0;_';

    tmCelular:
        EditMask := '(99) 9 9999-9999;0;_';

  end;
end;

end.
