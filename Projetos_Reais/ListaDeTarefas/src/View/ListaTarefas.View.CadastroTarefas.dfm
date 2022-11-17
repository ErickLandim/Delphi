object FrmCadastroTarefas: TFrmCadastroTarefas
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Cadastro Tarefas'
  ClientHeight = 372
  ClientWidth = 407
  Color = clBtnHighlight
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Sitka Text'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 16
  object Pnl_Central: TPanel
    Left = 0
    Top = 0
    Width = 407
    Height = 372
    Align = alClient
    BevelOuter = bvNone
    Padding.Left = 10
    Padding.Top = 5
    Padding.Right = 10
    Padding.Bottom = 5
    TabOrder = 0
    object Pnl_BandejaDown: TPanel
      Left = 10
      Top = 321
      Width = 387
      Height = 46
      Align = alBottom
      BevelOuter = bvNone
      Padding.Left = 3
      Padding.Top = 3
      Padding.Right = 3
      Padding.Bottom = 3
      TabOrder = 0
      object PnlBtnSalvar: TPanel
        Left = 3
        Top = 3
        Width = 70
        Height = 40
        Align = alLeft
        Color = 16514043
        ParentBackground = False
        TabOrder = 0
        object SBtn_Salvar: TSpeedButton
          Left = 1
          Top = 1
          Width = 68
          Height = 38
          Align = alClient
          Caption = 'Salvar'
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 5263440
          Font.Height = -13
          Font.Name = 'Sitka Text'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = SBtn_SalvarClick
          ExplicitLeft = 0
          ExplicitTop = 0
        end
      end
      object PnlBtnCancelar: TPanel
        Left = 314
        Top = 3
        Width = 70
        Height = 40
        Align = alRight
        Color = 16514043
        ParentBackground = False
        TabOrder = 1
        object SBtn_Cancelar: TSpeedButton
          Left = 1
          Top = 1
          Width = 68
          Height = 38
          Align = alClient
          Caption = 'Cancelar'
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 5263440
          Font.Height = -13
          Font.Name = 'Sitka Text'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = SBtn_CancelarClick
          ExplicitLeft = 16
          ExplicitTop = 16
          ExplicitWidth = 23
          ExplicitHeight = 22
        end
      end
    end
    object Pnl_Titulo: TPanel
      Left = 10
      Top = 5
      Width = 387
      Height = 46
      Align = alTop
      BevelOuter = bvNone
      Color = clWhite
      Padding.Left = 3
      Padding.Top = 3
      Padding.Right = 3
      Padding.Bottom = 3
      ParentBackground = False
      TabOrder = 1
      object LblTitulo: TLabel
        Left = 3
        Top = 3
        Width = 381
        Height = 21
        Align = alTop
        Caption = 'Titulo:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 5263440
        Font.Height = -15
        Font.Name = 'Sitka Text'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitWidth = 51
      end
      object Edt_Titulo: TEdit
        Left = 3
        Top = 24
        Width = 376
        Height = 18
        Align = alLeft
        BorderStyle = bsNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 5263440
        Font.Height = -13
        Font.Name = 'Sitka Text'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
      object Panel1: TPanel
        Left = 3
        Top = 42
        Width = 381
        Height = 1
        Align = alBottom
        Caption = 'Panel1'
        Color = clBlack
        ParentBackground = False
        TabOrder = 1
      end
    end
    object Pnl_Descricao: TPanel
      Left = 10
      Top = 51
      Width = 387
      Height = 270
      Align = alClient
      BevelOuter = bvNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      Padding.Left = 3
      Padding.Top = 3
      Padding.Right = 3
      Padding.Bottom = 3
      ParentFont = False
      TabOrder = 2
      object LblDescricao: TLabel
        Left = 3
        Top = 3
        Width = 381
        Height = 21
        Align = alTop
        Caption = 'Descri'#231#227'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 5263440
        Font.Height = -15
        Font.Name = 'Sitka Text'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitWidth = 77
      end
      object Mm_Descricao: TMemo
        Left = 3
        Top = 24
        Width = 381
        Height = 243
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 5263440
        Font.Height = -13
        Font.Name = 'Sitka Text'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
    end
  end
end
