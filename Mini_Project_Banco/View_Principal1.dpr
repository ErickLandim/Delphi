program View_Principal1;

uses
  Vcl.Forms,
  View_Principal in 'View_Principal.pas' {Form1},
  Pessoa in 'Pessoa.pas' {Form2},
  unit2 in 'unit2.pas' {Form3},
  contabancaria in 'contabancaria.pas' {Form4};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm3, Form3);
  Application.Run;
end.
