object Frm_CadastroTarefas: TFrm_CadastroTarefas
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Cadastro Tarefas'
  ClientHeight = 372
  ClientWidth = 389
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Pnl_Central: TPanel
    Left = 0
    Top = 0
    Width = 389
    Height = 372
    Align = alClient
    BevelOuter = bvNone
    Padding.Left = 3
    Padding.Top = 3
    Padding.Right = 3
    Padding.Bottom = 3
    TabOrder = 0
    object Pnl_BandejaDown: TPanel
      Left = 3
      Top = 328
      Width = 383
      Height = 41
      Align = alBottom
      BevelOuter = bvNone
      Padding.Left = 3
      Padding.Top = 3
      Padding.Right = 3
      Padding.Bottom = 3
      TabOrder = 0
      object SBtn_Salvar: TSpeedButton
        Left = 3
        Top = 3
        Width = 63
        Height = 35
        Align = alLeft
        Caption = 'Salvar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Sitka Text'
        Font.Style = []
        ParentFont = False
        ExplicitLeft = 24
        ExplicitTop = 16
        ExplicitHeight = 22
      end
    end
    object Pnl_Titulo: TPanel
      Left = 3
      Top = 3
      Width = 383
      Height = 41
      Align = alTop
      BevelOuter = bvNone
      Caption = 'Pnl_Titulo'
      Padding.Left = 3
      Padding.Top = 3
      Padding.Right = 3
      Padding.Bottom = 3
      TabOrder = 1
      object Edt_Titulo: TEdit
        Left = 3
        Top = 3
        Width = 376
        Height = 35
        Align = alLeft
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Sitka Text'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        Text = 'Edt_Titulo'
        ExplicitHeight = 27
      end
    end
    object Pnl_Descricao: TPanel
      Left = 3
      Top = 44
      Width = 383
      Height = 284
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
      object Memo1: TMemo
        Left = 3
        Top = 3
        Width = 377
        Height = 278
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Sitka Text'
        Font.Style = []
        Lines.Strings = (
          'Memo1')
        ParentFont = False
        TabOrder = 0
      end
    end
  end
end
