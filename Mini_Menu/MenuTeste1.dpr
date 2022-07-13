program MenuTeste1;

uses
  Vcl.Forms,
  MenuTeste in 'MenuTeste.pas' {Form1},
  TermosDeUso in 'TermosDeUso\TermosDeUso.pas' {Form2},
  TermosDeUsoo in 'TermosDeUsoo.pas' {Form3};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm3, Form3);
  Application.Run;
end.
