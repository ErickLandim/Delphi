object DmConexao: TDmConexao
  OnCreate = DataModuleCreate
  Height = 480
  Width = 632
  object SQLConexao: TFDConnection
    LoginPrompt = False
    Left = 72
    Top = 80
  end
end
