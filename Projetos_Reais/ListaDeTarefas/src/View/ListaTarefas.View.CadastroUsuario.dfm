object FrmCadastroUsuario: TFrmCadastroUsuario
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Cadastro Usuario'
  ClientHeight = 372
  ClientWidth = 407
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Sitka Text'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 16
  object Pnl_Central: TPanel
    Left = 0
    Top = 0
    Width = 407
    Height = 372
    Align = alClient
    BevelOuter = bvNone
    Color = clBtnHighlight
    Padding.Left = 10
    Padding.Top = 30
    Padding.Right = 10
    Padding.Bottom = 3
    ParentBackground = False
    TabOrder = 0
    object Pnl_BandejaDown: TPanel
      Left = 10
      Top = 320
      Width = 387
      Height = 49
      Align = alBottom
      BevelOuter = bvNone
      Padding.Left = 3
      Padding.Top = 3
      Padding.Right = 3
      Padding.Bottom = 3
      TabOrder = 0
      object PnlSalvar: TPanel
        Left = 3
        Top = 3
        Width = 64
        Height = 43
        Align = alLeft
        Color = 16514043
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 5263440
        Font.Height = -11
        Font.Name = 'Sitka Text'
        Font.Style = []
        ParentBackground = False
        ParentFont = False
        TabOrder = 0
        object SBtn_Salvar: TSpeedButton
          Left = 1
          Top = 1
          Width = 62
          Height = 41
          Align = alClient
          Caption = 'Salvar'
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Sitka Text'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = SBtn_SalvarClick
          ExplicitLeft = 0
          ExplicitWidth = 63
          ExplicitHeight = 33
        end
      end
    end
    object PnlNome: TPanel
      Left = 10
      Top = 30
      Width = 387
      Height = 41
      Margins.Top = 10
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 1
      object LblNome: TLabel
        Left = 0
        Top = 0
        Width = 387
        Height = 19
        Align = alTop
        Caption = 'NOME:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 5263440
        Font.Height = -13
        Font.Name = 'Sitka Text'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitWidth = 45
      end
      object Edt_Nome: TEdit
        Left = 0
        Top = 19
        Width = 387
        Height = 27
        Align = alTop
        BorderStyle = bsNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Sitka Text'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
      object PnlLinhaNome: TPanel
        Left = 0
        Top = 40
        Width = 387
        Height = 1
        Align = alBottom
        Color = clBackground
        ParentBackground = False
        TabOrder = 1
      end
    end
    object PnlSenha: TPanel
      Left = 10
      Top = 71
      Width = 387
      Height = 54
      Align = alTop
      BevelOuter = bvNone
      Padding.Top = 10
      TabOrder = 2
      object LblSenha: TLabel
        Left = 0
        Top = 10
        Width = 387
        Height = 19
        Margins.Top = 10
        Align = alTop
        Caption = 'SENHA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 5263440
        Font.Height = -13
        Font.Name = 'Sitka Text'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitWidth = 46
      end
      object Edt_Senha: TEdit
        Left = 0
        Top = 29
        Width = 387
        Height = 27
        Align = alTop
        BorderStyle = bsNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Sitka Text'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
      object PnlLinhaSenha: TPanel
        Left = 0
        Top = 53
        Width = 387
        Height = 1
        Align = alBottom
        Color = clBackground
        ParentBackground = False
        TabOrder = 1
      end
    end
    object PnlEmail: TPanel
      Left = 10
      Top = 125
      Width = 387
      Height = 52
      Align = alTop
      BevelOuter = bvNone
      Padding.Top = 10
      TabOrder = 3
      object LblEmail: TLabel
        Left = 0
        Top = 10
        Width = 387
        Height = 19
        Align = alTop
        Caption = 'EMAIL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 5263440
        Font.Height = -13
        Font.Name = 'Sitka Text'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitWidth = 43
      end
      object Edt_Email: TEdit
        Left = 0
        Top = 29
        Width = 387
        Height = 24
        Align = alTop
        BevelInner = bvNone
        BorderStyle = bsNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Sitka Text'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
      object PnlLinhaEmail: TPanel
        Left = 0
        Top = 51
        Width = 387
        Height = 1
        Align = alBottom
        Color = clBackground
        ParentBackground = False
        TabOrder = 1
      end
    end
  end
end
