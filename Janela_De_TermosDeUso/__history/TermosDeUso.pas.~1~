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

begin
  if CheckBox1.Checked and CheckBox2.Checked then
    ShowMessage('Carregando...')
  Else
  MessageDlg('Marque todas as checkBoxs para continuar!', TMsgDlgType.mtWarning, [TMsgDlgBtn.mbOK], 0);
  //SetDesignVisible(False);
end;

end.
