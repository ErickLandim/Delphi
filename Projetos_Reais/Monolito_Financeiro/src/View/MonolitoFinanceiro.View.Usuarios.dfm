inherited FrmUsuarios: TFrmUsuarios
  Caption = 'Cadastro de Usuarios'
  TextHeight = 15
  inherited PnlPrincipal: TCardPanel
    inherited CardCadastro: TCard
      ExplicitLeft = 0
      object LblNome: TLabel [0]
        Left = 24
        Top = 40
        Width = 33
        Height = 15
        Caption = 'Nome'
      end
      object LblLogin: TLabel [1]
        Left = 24
        Top = 69
        Width = 30
        Height = 15
        Caption = 'Login'
      end
      object LblSenha: TLabel [2]
        Left = 24
        Top = 98
        Width = 32
        Height = 15
        Caption = 'Senha'
      end
      object LblStatus: TLabel [3]
        Left = 22
        Top = 152
        Width = 32
        Height = 15
        Caption = 'Status'
      end
      inherited Panel1: TPanel
        inherited BtnSalvar: TButton
          OnClick = BtnSalvarClick
        end
      end
      object ToggleStatus: TToggleSwitch
        Left = 72
        Top = 152
        Width = 113
        Height = 20
        StateCaptions.CaptionOn = 'Ativo'
        StateCaptions.CaptionOff = 'Bloqueado'
        TabOrder = 1
      end
      object EdtNome: TEdit
        Left = 72
        Top = 37
        Width = 233
        Height = 23
        Cursor = crIBeam
        TabOrder = 2
      end
      object EdtSenha: TEdit
        Left = 72
        Top = 95
        Width = 233
        Height = 23
        Cursor = crIBeam
        TabOrder = 3
      end
      object EdtLogin: TEdit
        Left = 72
        Top = 66
        Width = 233
        Height = 23
        Cursor = crIBeam
        TabOrder = 4
      end
    end
    inherited CardPesquisa: TCard
      inherited PnlPesquisa: TPanel
        inherited BtnPesquisar: TButton
          Cursor = crHandPoint
          OnClick = BtnPesquisarClick
        end
      end
      inherited PnlPesquisaBotoes: TPanel
        inherited BtnAlterar: TButton
          Cursor = crHandPoint
        end
      end
      inherited PnlGrid: TPanel
        inherited DBGrid1: TDBGrid
          DataSource = DataSource1
          Columns = <
            item
              Expanded = False
              FieldName = 'Nome'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Login'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Status'
              Visible = True
            end>
        end
      end
    end
  end
  inherited ImageList1: TImageList
    Left = 441
    Top = 282
  end
  inherited DataSource1: TDataSource
    DataSet = DmUsuarios.CdsUsuarios
    Left = 537
    Top = 284
  end
end
