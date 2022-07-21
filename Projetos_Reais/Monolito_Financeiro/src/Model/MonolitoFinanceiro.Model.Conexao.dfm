object DmConexao: TDmConexao
  OnCreate = DataModuleCreate
  Height = 480
  Width = 632
  object FDQuerySelect: TFDQuery
    Connection = SQLConexao
    Left = 56
    Top = 192
  end
  object SQLConexao: TFDConnection
    Left = 72
    Top = 80
  end
end
