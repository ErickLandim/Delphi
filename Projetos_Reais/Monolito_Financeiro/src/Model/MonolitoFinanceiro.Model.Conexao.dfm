object DmConexao: TDmConexao
  OnCreate = DataModuleCreate
  Height = 480
  Width = 632
  object SQLConexao: TFDConnection
    Params.Strings = (
      
        'Database=C:\Users\Administrator\Documents\Delphi\Projetos_Reais\' +
        'Monolito_Financeiro\db\SistemaFinanceiro.db'
      'LockingMode=Normal'
      'DriverID=SQLite')
    LoginPrompt = False
    Left = 56
    Top = 80
  end
  object FDQuery1: TFDQuery
    Connection = SQLConexao
    SQL.Strings = (
      'SELECT * FROM usuarios')
    Left = 56
    Top = 192
  end
end
