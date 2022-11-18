object FrmLogin: TFrmLogin
  Left = 686
  Top = 231
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'LOGIN'
  ClientHeight = 372
  ClientWidth = 407
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Sitka Text'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 16
  object PnlCentral: TPanel
    Left = 0
    Top = 0
    Width = 407
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
      Width = 397
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
    end
    object PnlOrgEdits: TPanel
      Left = 5
      Top = 78
      Width = 397
      Height = 289
      Align = alClient
      BevelOuter = bvNone
      Caption = '123'
      Color = clBtnHighlight
      Padding.Left = 5
      Padding.Right = 5
      Padding.Bottom = 5
      ParentBackground = False
      TabOrder = 1
      object PnlSenha: TPanel
        Left = 5
        Top = 73
        Width = 387
        Height = 72
        Align = alTop
        BevelOuter = bvNone
        Padding.Left = 5
        Padding.Top = 15
        Padding.Right = 5
        Padding.Bottom = 5
        TabOrder = 0
        object LblSenha: TLabel
          Left = 5
          Top = 15
          Width = 377
          Height = 21
          Align = alTop
          Caption = 'SENHA:'
          Color = 16776176
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clAppWorkSpace
          Font.Height = -15
          Font.Name = 'Sitka Text'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          ExplicitWidth = 59
        end
        object Edt_Senha: TEdit
          Left = 5
          Top = 42
          Width = 377
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
          Text = '123'
        end
        object PnlLinhaSenha: TPanel
          Left = 5
          Top = 66
          Width = 377
          Height = 1
          Align = alBottom
          Caption = 'PnlLinhaSenha'
          Color = clGrayText
          ParentBackground = False
          TabOrder = 1
        end
      end
      object PnlLoginNome: TPanel
        Left = 5
        Top = 0
        Width = 387
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
        object LblEmail: TLabel
          Left = 5
          Top = 15
          Width = 377
          Height = 21
          Align = alTop
          Caption = 'E-MAIL DE USU'#193'RIO:'
          Color = 16776176
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clAppWorkSpace
          Font.Height = -15
          Font.Name = 'Sitka Text'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          ExplicitWidth = 159
        end
        object Edt_Email: TEdit
          Left = 5
          Top = 38
          Width = 377
          Height = 29
          Align = alBottom
          BevelInner = bvNone
          BevelOuter = bvNone
          BorderStyle = bsNone
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 5263440
          Font.Height = -16
          Font.Name = 'Sitka Text'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          Text = 'ericklandimaop@gmail.com'
        end
        object PnlLinhaEmail: TPanel
          Left = 5
          Top = 67
          Width = 377
          Height = 1
          Align = alBottom
          Caption = 'Panel2'
          Color = clGrayText
          ParentBackground = False
          TabOrder = 1
        end
      end
      object PnlBandejaBotoes: TPanel
        Left = 5
        Top = 232
        Width = 387
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
        object PnlBtnEntrar: TPanel
          Left = 0
          Top = 0
          Width = 88
          Height = 52
          Align = alLeft
          Color = 16514043
          ParentBackground = False
          TabOrder = 0
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
            OnClick = SBtn_EntrarClick
            ExplicitLeft = 0
          end
        end
        object PnlCadastrar: TPanel
          Left = 299
          Top = 0
          Width = 88
          Height = 52
          Align = alRight
          Color = 16514043
          ParentBackground = False
          TabOrder = 1
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
            OnClick = SBtn_CadastrarUsuarioClick
            ExplicitLeft = 0
            ExplicitWidth = 65
            ExplicitHeight = 40
          end
        end
      end
    end
  end
end
