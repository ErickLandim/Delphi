unit MonolitoFinanceiro.Utilitarios;

interface
    Type
      TUtilitario = Class
        Class function GetID : String;
      End;
implementation

    Uses
      System.SysUtils;
{ TUtilitario }


class function TUtilitario.GetID : String;
begin
  Result := TGUID.NewGuid.ToString;
  Result := StringReplace(Result, '{', '',  [rfReplaceAll]);
  Result := StringReplace(Result, '}', '',  [rfReplaceAll]);
  end;

end.
