object DmUsuarios: TDmUsuarios
  Height = 480
  Width = 640
  object SQLUsuarios: TFDQuery
    Connection = DmConexao.SQLConexao
    Left = 56
    Top = 104
  end
  object CdsUsuarios: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'CdpUsuarios'
    Left = 232
    Top = 104
    object CdsUsuariosId: TStringField
      FieldName = 'Id'
      Size = 36
    end
    object CdsUsuariosNome: TStringField
      FieldName = 'Nome'
      Size = 50
    end
    object CdsUsuariosLogin: TStringField
      FieldName = 'Login'
    end
    object CdsUsuariosSenha: TStringField
      FieldName = 'Senha'
    end
    object CdsUsuariosStatus: TStringField
      FieldName = 'Status'
      Size = 1
    end
    object CdsUsuariosData_Cadastro: TDateField
      FieldName = 'Data_Cadastro'
    end
  end
  object CdpUsuarios: TDataSetProvider
    DataSet = SQLUsuarios
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 136
    Top = 104
  end
end
