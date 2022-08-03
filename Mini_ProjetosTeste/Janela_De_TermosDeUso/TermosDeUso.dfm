object Form1: TForm1
  Left = 654
  Top = 270
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsDialog
  Caption = 'Termos de uso:'
  ClientHeight = 441
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = True
  Position = poDesigned
  PixelsPerInch = 96
  TextHeight = 15
  object Button1: TButton
    Left = 540
    Top = 416
    Width = 84
    Height = 22
    Caption = 'Continue'
    TabOrder = 0
    OnClick = Button1Click
  end
  object CheckBox1: TCheckBox
    Left = 24
    Top = 416
    Width = 97
    Height = 17
    Caption = 'Concordo'
    TabOrder = 1
  end
  object CheckBox2: TCheckBox
    Left = 112
    Top = 416
    Width = 97
    Height = 17
    Caption = 'N'#227'o Concordo'
    TabOrder = 2
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 624
    Height = 417
    Align = alTop
    Caption = 'QuadroDasDiretrizes'
    TabOrder = 3
    DesignSize = (
      624
      417)
    object Label1: TLabel
      Left = 24
      Top = 402
      Width = 57
      Height = 15
      Anchors = [akBottom]
      Caption = 'Clique em:'
      ExplicitTop = 390
    end
    object Diretrizesblablabla: TMemo
      Left = 32
      Top = 16
      Width = 521
      Height = 355
      Lines.Strings = (
        'Diretrizesblablabla')
      TabOrder = 0
    end
  end
end
