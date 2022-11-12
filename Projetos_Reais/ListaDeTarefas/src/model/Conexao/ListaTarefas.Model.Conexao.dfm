object DMConexao: TDMConexao
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 322
  Width = 497
  object FDConnection1: TFDConnection
    Params.Strings = (
      
        'Database=C:\Users\Administrator\Documents\Delphi\Projetos_Reais\' +
        'ListaDeTarefas\bd\ListaTarefasdb.db'
      'DriverID=SQLite')
    LoginPrompt = False
    Left = 72
    Top = 88
  end
  object FDQComando: TFDQuery
    Connection = FDConnection1
    Left = 192
    Top = 88
  end
end
