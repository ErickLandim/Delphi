unit ELSMaskEdit;

interface

uses
  System.SysUtils, System.Classes, Vcl.Controls, Vcl.StdCtrls, Vcl.Mask,Vcl.Graphics;

type
  TELSMaskEdit = class(TMaskEdit)
  private
    FMudarColor: Tcolor;
    procedure SetMudarColor(const Value: Tcolor);
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

end.
