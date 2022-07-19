unit TesteFerramentas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.ComCtrls;

type
  TForm1 = class(TForm)
    ProgressBar1: TProgressBar;
    Button1: TButton;
    Memo1: TMemo;
    Timer1: TTimer;
    Label1: TLabel;

    procedure Button1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
 barra : integer;
 L : integer;
begin
 L := 1;
  for barra := 0 to 10000 do
  begin
    ProgressBar1.Position := barra;
    Application.ProcessMessages;
      while L <= 10 do
        begin
          Memo1.Lines.Add('Adicionando linha: ' + IntToStr(L));
          inc(L);
        end;

  end;

end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
  Label1.Caption := DateTimeToStr(Now);
end;

end.
