object Frm_Login: TFrm_Login
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'LOGIN'
  ClientHeight = 372
  ClientWidth = 389
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Sitka Text'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 16
  object PnlCentral: TPanel
    Left = 0
    Top = 0
    Width = 389
    Height = 372
    Align = alClient
    BevelOuter = bvNone
    Color = clBtnHighlight
    Padding.Left = 5
    Padding.Top = 5
    Padding.Right = 5
    Padding.Bottom = 5
    ParentBackground = False
    TabOrder = 0
    object PnlTitulo: TPanel
      Left = 5
      Top = 5
      Width = 379
      Height = 73
      Align = alTop
      BevelOuter = bvNone
      Caption = 'LOGIN'
      Color = clBtnHighlight
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGrayText
      Font.Height = -27
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 0
      ExplicitTop = -1
    end
    object PnlOrgEdits: TPanel
      Left = 5
      Top = 78
      Width = 379
      Height = 289
      Align = alClient
      BevelOuter = bvNone
      Color = clBtnHighlight
      Padding.Left = 5
      Padding.Right = 5
      Padding.Bottom = 5
      ParentBackground = False
      TabOrder = 1
      ExplicitTop = 83
      object PnlSenha: TPanel
        Left = 5
        Top = 73
        Width = 369
        Height = 72
        Align = alTop
        BevelOuter = bvNone
        Padding.Left = 5
        Padding.Top = 15
        Padding.Right = 5
        Padding.Bottom = 5
        TabOrder = 0
        ExplicitTop = 57
        object LblSenha: TLabel
          Left = 5
          Top = 15
          Width = 359
          Height = 21
          Align = alTop
          Caption = 'SENHA DO USU'#193'RIO:'
          Color = 16776176
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clAppWorkSpace
          Font.Height = -15
          Font.Name = 'Sitka Text'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          ExplicitWidth = 158
        end
        object Edt_Senha: TEdit
          Left = 5
          Top = 42
          Width = 359
          Height = 24
          Align = alBottom
          BevelInner = bvNone
          BevelOuter = bvNone
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 5263440
          Font.Height = -13
          Font.Name = 'Sitka Text'
          Font.Style = []
          ParentFont = False
          PasswordChar = '*'
          TabOrder = 0
          Text = 'EDIT1'
        end
        object PnlLinhaSenha: TPanel
          Left = 5
          Top = 66
          Width = 359
          Height = 1
          Align = alBottom
          Caption = 'PnlLinhaSenha'
          Color = clGrayText
          ParentBackground = False
          TabOrder = 1
          ExplicitLeft = 0
          ExplicitTop = 64
          ExplicitWidth = 369
        end
      end
      object PnlLoginNome: TPanel
        Left = 5
        Top = 0
        Width = 369
        Height = 73
        Align = alTop
        BevelOuter = bvNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Sitka Text'
        Font.Style = [fsBold]
        Padding.Left = 5
        Padding.Top = 15
        Padding.Right = 5
        Padding.Bottom = 5
        ParentFont = False
        TabOrder = 1
        object LblNome: TLabel
          Left = 5
          Top = 15
          Width = 359
          Height = 21
          Align = alTop
          Caption = 'NOME DE USU'#193'RIO:'
          Color = 16776176
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clAppWorkSpace
          Font.Height = -15
          Font.Name = 'Sitka Text'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          ExplicitWidth = 151
        end
        object Edt_Nome: TEdit
          Left = 5
          Top = 38
          Width = 359
          Height = 29
          Align = alBottom
          BevelInner = bvNone
          BevelOuter = bvNone
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 5263440
          Font.Height = -16
          Font.Name = 'Sitka Text'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          ExplicitLeft = 0
          ExplicitTop = 27
          ExplicitWidth = 369
        end
        object PnlLinhaNome: TPanel
          Left = 5
          Top = 67
          Width = 359
          Height = 1
          Align = alBottom
          Caption = 'Panel2'
          Color = clGrayText
          ParentBackground = False
          TabOrder = 1
          ExplicitLeft = 0
          ExplicitTop = 56
          ExplicitWidth = 369
        end
      end
      object PnlBandejaBotoes: TPanel
        Left = 5
        Top = 232
        Width = 369
        Height = 52
        Align = alBottom
        BevelOuter = bvNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 5263440
        Font.Height = -11
        Font.Name = 'Sitka Text'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        ExplicitLeft = 10
        ExplicitTop = 248
        object PnlBtnEntrar: TPanel
          Left = 0
          Top = 0
          Width = 88
          Height = 52
          Align = alLeft
          Color = 16514043
          ParentBackground = False
          TabOrder = 0
          ExplicitLeft = 1
          ExplicitTop = 1
          ExplicitHeight = 50
          object SBtn_Entrar: TSpeedButton
            Left = 1
            Top = 1
            Width = 86
            Height = 50
            Align = alClient
            Caption = 'ENTRAR'
            Flat = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 5263440
            Font.Height = -11
            Font.Name = 'Sitka Text'
            Font.Style = [fsBold]
            ParentFont = False
            ExplicitWidth = 64
            ExplicitHeight = 39
          end
        end
        object PnlCadastrar: TPanel
          Left = 281
          Top = 0
          Width = 88
          Height = 52
          Align = alRight
          Color = 16514043
          ParentBackground = False
          TabOrder = 1
          ExplicitLeft = 280
          ExplicitTop = 1
          ExplicitHeight = 50
          object SBtn_CadastrarUsuario: TSpeedButton
            Left = 1
            Top = 1
            Width = 86
            Height = 50
            Align = alClient
            Caption = 'CADASTRAR'
            Flat = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 5263440
            Font.Height = -11
            Font.Name = 'Sitka Text'
            Font.Style = [fsBold]
            ParentFont = False
            ExplicitLeft = 0
            ExplicitWidth = 65
            ExplicitHeight = 40
          end
        end
      end
    end
  end
end
