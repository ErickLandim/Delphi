object Frm_Principal: TFrm_Principal
  Left = 0
  Top = 0
  Caption = 'Lista de tarefas'
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
  object Pnl_Principal: TPanel
    Left = 0
    Top = 0
    Width = 389
    Height = 372
    Align = alClient
    BevelOuter = bvNone
    Color = clWhite
    Padding.Left = 3
    Padding.Top = 3
    Padding.Right = 3
    Padding.Bottom = 3
    ParentBackground = False
    TabOrder = 0
    object Pnl_TopoTitulo: TPanel
      Left = 3
      Top = 3
      Width = 383
      Height = 49
      Align = alTop
      BevelOuter = bvNone
      Caption = 'Lista de tarefas'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clHighlight
      Font.Height = -20
      Font.Name = 'Segoe Print'
      Font.Style = [fsBold]
      Padding.Left = 3
      Padding.Right = 3
      Padding.Bottom = 3
      ParentBackground = False
      ParentFont = False
      TabOrder = 0
    end
    object Pnl_BaixoBandeja: TPanel
      Left = 3
      Top = 328
      Width = 383
      Height = 41
      Align = alBottom
      BevelOuter = bvNone
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Padding.Left = 3
      Padding.Top = 3
      Padding.Right = 3
      Padding.Bottom = 3
      ParentBackground = False
      ParentFont = False
      TabOrder = 1
      ExplicitTop = 334
      object SBtn_Cadastrar: TSpeedButton
        Left = 3
        Top = 3
        Width = 62
        Height = 35
        Align = alLeft
        Caption = 'Novo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Sitka Text'
        Font.Style = []
        ParentFont = False
        ExplicitLeft = 2
        ExplicitTop = 6
        ExplicitHeight = 38
      end
      object SBtn_Editar: TSpeedButton
        Left = 65
        Top = 3
        Width = 63
        Height = 35
        Align = alLeft
        Caption = 'Editar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Sitka Text'
        Font.Style = []
        ParentFont = False
        ExplicitTop = 0
        ExplicitHeight = 38
      end
      object SBtn_Cancelar: TSpeedButton
        Left = 317
        Top = 3
        Width = 63
        Height = 35
        Align = alRight
        Caption = 'Cancelar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Sitka Text'
        Font.Style = []
        ParentFont = False
        ExplicitLeft = 318
        ExplicitTop = 6
        ExplicitHeight = 38
      end
    end
    object Pnl_Pesquisa: TPanel
      Left = 3
      Top = 52
      Width = 383
      Height = 33
      Align = alTop
      BevelOuter = bvNone
      Color = clWhite
      Padding.Left = 2
      Padding.Top = 2
      Padding.Right = 2
      Padding.Bottom = 2
      ParentBackground = False
      TabOrder = 2
      object SBtn_Pesquisar: TSpeedButton
        Left = 288
        Top = 2
        Width = 93
        Height = 29
        Align = alRight
        Caption = 'Pesquisar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Sitka Text'
        Font.Style = []
        ParentFont = False
        ExplicitLeft = 287
        ExplicitTop = -2
      end
      object Edt_Pesquisa: TEdit
        Left = 2
        Top = 2
        Width = 207
        Height = 29
        Align = alLeft
        BevelInner = bvLowered
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Sitka Text'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        Text = 'Pesquisa'
        ExplicitHeight = 27
      end
    end
    object Pnl_CentralLista: TPanel
      Left = 3
      Top = 85
      Width = 383
      Height = 243
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 3
      object ListBox1: TListBox
        Left = 0
        Top = 0
        Width = 383
        Height = 243
        Align = alClient
        ItemHeight = 13
        TabOrder = 0
      end
    end
  end
end