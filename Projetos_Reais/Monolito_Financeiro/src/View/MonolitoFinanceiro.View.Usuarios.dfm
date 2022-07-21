inherited FrmUsuarios: TFrmUsuarios
  Caption = 'Cadastro de Usuarios'
  TextHeight = 15
  inherited PnlPrincipal: TCardPanel
    inherited CardPesquisa: TCard
      inherited PnlPesquisa: TPanel
        inherited BtnPesquisar: TButton
          OnClick = BtnPesquisarClick
        end
      end
      inherited PnlGrid: TPanel
        inherited DBGrid1: TDBGrid
          DataSource = DataSource1
        end
      end
    end
  end
  inherited DataSource1: TDataSource
    DataSet = DmConexao.FDQuerySelect
    Left = 537
    Top = 284
  end
end
