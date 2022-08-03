unit MonolitoFinanceiro.View.Usuarios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, MonolitoFinanceiro.View.CadastroPadrao,
  Data.DB, System.ImageList, Vcl.ImgList, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls,
  Vcl.ExtCtrls, Vcl.WinXPanels, MonolitoFinanceiro.Model.Usuarios, Vcl.WinXCtrls,
  Vcl.Imaging.GIFImg;

type
  TFrmUsuarios = class(TFrmCadastroPadrao)
    ToggleStatus: TToggleSwitch;
    EdtNome: TEdit;
    LblNome: TLabel;
    EdtSenha: TEdit;
    EdtLogin: TEdit;
    LblLogin: TLabel;
    LblSenha: TLabel;
    LblStatus: TLabel;
    Image1: TImage;
    procedure BtnPesquisarClick(Sender: TObject);
    procedure BtnAlterarClick(Sender: TObject);
    procedure BtnSalvarClick(Sender: TObject);
    procedure BtnIncluirClick(Sender: TObject);
    Procedure LimparCampos;
    procedure BtnCancelarClick(Sender: TObject);
    procedure BtnExcluirClick(Sender: TObject);
    procedure Image1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmUsuarios: TFrmUsuarios;

implementation

uses
  MonolitoFinanceiro.Utilitarios;

{$R *.dfm}

procedure TFrmUsuarios.BtnAlterarClick(Sender: TObject);
begin
  inherited;
  DmUsuarios.CdsUsuarios.Edit;

  EdtNome.Text := DmUsuarios.CdsUsuariosNome.AsString;
  EdtLogin.Text := DmUsuarios.CdsUsuariosLogin.AsString;
  EdtSenha.Text := DmUsuarios.CdsUsuariosSenha.AsString;

  ToggleStatus.State := Tsson;
  if DmUsuarios.CdsUsuariosStatus.AsString = 'B' then
    ToggleStatus.State := tssOff;
end;

procedure TFrmUsuarios.BtnCancelarClick(Sender: TObject);
begin
  inherited;
  DmUsuarios.CdsUsuarios.Cancel;
end;

procedure TFrmUsuarios.BtnExcluirClick(Sender: TObject);
begin
  inherited;
  
  if Application.MessageBox('Deseja mesmo excluir o registro?', 'Pergunta', MB_YESNO + MB_ICONQUESTION) <> mrYes then
  Exit;

  Try
    DmUsuarios.CdsUsuarios.Delete;
    DmUsuarios.CdsUsuarios.ApplyUpdates(0);
    Application.MessageBox('Registro Excluido com sucesso!', 'Aten��o', MB_OK + MB_ICONINFORMATION)
  
  Except on E : Exception do
  Application.MessageBox(PWideChar(E.Message), 'Erro ao excluir!', MB_OK + MB_ICONERROR); 

  End;
  
end;

procedure TFrmUsuarios.BtnIncluirClick(Sender: TObject);
begin
  inherited;
  LimparCampos;
  DmUsuarios.CdsUsuarios.Insert;
end;

procedure TFrmUsuarios.BtnPesquisarClick(Sender: TObject);
begin
  inherited;
  DmUsuarios.CdsUsuarios.close;
  DmUsuarios.CdsUsuarios.CommandText := 'SELECT * FROM Usuarios';
  DmUsuarios.Cdsusuarios.open;

end;

procedure TFrmUsuarios.BtnSalvarClick(Sender: TObject);
Var
  LStatus : String;
  Mensagem : String;
begin
  if Trim(EdtNome.Text) = '' then
  Begin
    EdtNome.SetFocus;
    application.MessageBox('O campo nome n�o pode estar vazio.', 'Aten��o', Mb_OK + MB_ICONWARNING);
    Abort;
  End;
          if Trim(EdtLogin.Text) = '' then
          Begin
            EdtLogin.SetFocus;
            application.MessageBox('O campo Login n�o pode estar vazio.', 'Aten��o', Mb_OK + MB_ICONWARNING);
            Abort;
          End;
                  if Trim(EdtSenha.Text) = '' then
                  Begin
                    EdtSenha.SetFocus;
                    application.MessageBox('O campo Senha n�o pode estar vazio.', 'Aten��o', Mb_OK + MB_ICONWARNING);
                    Abort;
                  End;

  if DmUsuarios.TemLoginCadastrado(Trim(EdtLogin.Text), DmUsuarios.CdsUsuarios.FieldByName('ID').AsString) then
  Begin
    EdtLogin.SetFocus;
    application.MessageBox(PwideChar(format('O Login j� existe', [EdtLogin.text])), 'Aten��o', Mb_OK + MB_ICONWARNING);
    Abort;
  End;
                  
  LStatus := 'A';

  if ToggleStatus.State = tssoff then
  LStatus := 'B';

  Mensagem := 'Registro alterado com sucesso';
  
  if DmUsuarios.CdsUsuarios.State in [dsInsert] then
  Begin
    Mensagem := 'Registro Incluido com sucesso';
    
    DmUsuarios.CdsUsuariosId.AsString := TUtilitario.GetID;
    DmUsuarios.CdsUsuariosData_Cadastro.AsDateTime := Now;
  end;
  
  DmUsuarios.CdsUsuariosNome.AsString := Trim(EdtNome.Text);
  DmUsuarios.CdsUsuariosLogin.AsString := Trim(EdtLogin.Text);
  DmUsuarios.CdsUsuariosSenha.AsString := Trim(EdtSenha.Text);
  DmUsuarios.CdsUsuariosStatus.AsString := LStatus;

  DmUsuarios.CdsUsuarios.Post;
  DmUsuarios.CdsUsuarios.ApplyUpdates (0);
  application.MessageBox(PWideChar(Mensagem),  'Aten��o', Mb_OK + MB_ICONINFORMATION);

  PnlPrincipal.ActiveCard := CardPesquisa;
  inherited;

end;

procedure TFrmUsuarios.Image1Click(Sender: TObject);
begin
  inherited;
    with (Image1.Picture.Graphic as TGifImage) do
  begin
    AnimationSpeed := 100;  // percent of normal speed, range 0 through 1000
    Animate := True;
  end;
  DmUsuarios.CdsUsuarios.close;
  DmUsuarios.CdsUsuarios.CommandText := 'SELECT * FROM Usuarios';
  DmUsuarios.Cdsusuarios.open;

end;

procedure TFrmUsuarios.LimparCampos;
Var
  Contador : integer;
begin
  for Contador := 0 to Pred(ComponentCount) do
  begin
    if Components[Contador] is TCustomEdit then
      TCustomEdit(Components[Contador]).Clear
    Else if Components[Contador] is TToggleSwitch then
      TToggleSwitch(Components[Contador]).State := TssOn;
  end;

end;

end.
