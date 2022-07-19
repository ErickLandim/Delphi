unit Pessoa;

interface

uses
   System.SysUtils;

  type
    TPessoa = class
  private
  FNome: string;
  FEmail: string;
  FDataDeNascimento: string;
  public
    function idade : integer;
    property Nome : string read FNome write FNome;
    Property Email : string read FEmail write FEmail;
    Property DataDeNascimento : string read FDataDeNascimento write FDataDeNascimento;
  end;
implementation

{ TPessoa }

function TPessoa.idade: integer;
begin
    Result := Trunc((now - StrToDate(DataDeNascimento)) / 365.25);
end;

end.
