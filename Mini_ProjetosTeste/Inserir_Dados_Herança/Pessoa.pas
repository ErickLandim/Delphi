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
  FDados : String;
  public

    property Nome : string read FNome write FNome;
    Property Email : string read FEmail write FEmail;
    Property DataDeNascimento : string read FDataDeNascimento write FDataDeNascimento;
    property Dados: String read FDados write FDados;
    function ReceberDados : String; Virtual;
    function idade : integer;
  end;
implementation

{ TPessoa }

function TPessoa.idade: integer;
begin
    Result := Trunc((now - StrToDate(DataDeNascimento)) / 365.25);
end;



function TPessoa.ReceberDados: String;
begin
    Dados := 'Nome: ' + Nome +
    ' - Data de nascimento: ' + DataDeNascimento +
    ' - Idade: ' + idade.ToString +
    ' - Email: ' + Email;
end;

end.
