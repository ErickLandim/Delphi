unit TermosDeUso;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Label1: TLabel;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    Diretrizesblablabla: TMemo;
    Panel1: TPanel;
    procedure Button1Click(Sender: TObject);

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
  Retorno: integer;
begin
  if CheckBox1.Checked and CheckBox2.Checked then
          MessageDlg('ERRORR TRAGIC', TMsgDlgType.mtError, [mbOk], 0)
  Else if CheckBox1.Checked then
    Showmessage('Carregando pr�xima etapa...')
  else if CheckBox2.Checked then       
    Retorno := MessageDlg('Voc� marcou que n�o concorda com os termos de uso. Deseja encerrar o sistema?',TMsgDlgType.mtConfirmation, [mbYes, mbNo], 0)
  Else
  MessageDlg('ERRORR', TMsgDlgType.mtError, [mbOk], 0);
   
   case Retorno  of
      6: Close;

      7: 
        begin
          MessageDlg('Certo, voltando a tela anterior. Marque corretamente dessa vez',TMsgDlgType.mtInformation, [mbOk], 0);
          Exit;
        end;
   end;
     { if Retorno = 6 then
        Close
      Else if Retorno = 7 then
        MessageDlg('Certo, voltando a tela anterior. Marque corretamente dessa vez',TMsgDlgType.mtInformation, [mbOk], 0);
        Exit;
      //Exit = Faz a tela voltar a parte principal
      }
   {Marcou as duas checkbox e apertou continue = ERRORR TRAGIC 
    Marcou s� a "concordo" = Carregando pr�xima etapa... e encerra sozinho
    Marcou s� a "N�o concordo" = Voc� marcou que n�o concorda com os termos de uso. Deseja encerrar o sistema?
    (Se a resposta for sim = o sistema fecha; Se apertar n�o, o sistema volta para a tela)
    Se voc� anotar algo na parte de cima das diretrizes e apertar continue = ERRORR}       
        
end;

end.
