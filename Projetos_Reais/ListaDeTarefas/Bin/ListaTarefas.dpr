program ListaTarefas;

uses
  Vcl.Forms,
  ListaTarefas.View.Main in '..\src\View\ListaTarefas.View.Main.pas' {Frm_Principal},
  ListaTarefas.Model.Usuarios in '..\src\model\ListaTarefas.Model.Usuarios.pas',
  ListaTarefas.Model.Tarefas in '..\src\model\ListaTarefas.Model.Tarefas.pas',
  ListaTarefas.View.CadastroUsuario in '..\src\View\ListaTarefas.View.CadastroUsuario.pas' {Frm_CadastroUsuario},
  ListaTarefas.View.CadastroTarefas in '..\src\View\ListaTarefas.View.CadastroTarefas.pas' {Frm_CadastroTarefas},
  ListaTarefas.View.Login in '..\src\View\ListaTarefas.View.Login.pas' {Frm_Login};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrm_Principal, Frm_Principal);
  Application.CreateForm(TFrm_CadastroUsuario, Frm_CadastroUsuario);
  Application.CreateForm(TFrm_CadastroTarefas, Frm_CadastroTarefas);
  Application.CreateForm(TFrm_Login, Frm_Login);
  Application.Run;
end.
