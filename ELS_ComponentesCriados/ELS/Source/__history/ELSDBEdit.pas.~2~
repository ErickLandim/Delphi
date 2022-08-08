unit ELSDBEdit;

interface

uses
  System.SysUtils, System.Classes, Vcl.Controls, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, Vcl.Graphics;

type
  TELSDBEdit = class(TDBEdit)
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
  RegisterComponents('ELS', [TELSDBEdit]);
end;

{ TELSDBEdit }

constructor TELSDBEdit.Create(Aowner: TComponent);
begin
  inherited;
  FMudarColor := ClWindow;
end;

procedure TELSDBEdit.DoEnter;
begin
  inherited;
  Color := FMudarColor;
end;

procedure TELSDBEdit.DoExit;
begin
  inherited;
   Color := ClWindow;
end;

procedure TELSDBEdit.SetMudarColor(const Value: Tcolor);
begin
  FMudarColor := Value;
end;

end.
