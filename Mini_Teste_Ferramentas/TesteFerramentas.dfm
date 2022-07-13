object Form1: TForm1
  Left = 592
  Top = 312
  Caption = 'Form1'
  ClientHeight = 349
  ClientWidth = 599
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesigned
  TextHeight = 15
  object Label1: TLabel
    Left = 48
    Top = 16
    Width = 161
    Height = 15
    Caption = 'Label1'
  end
  object ProgressBar1: TProgressBar
    Left = 16
    Top = 71
    Width = 577
    Height = 25
    Max = 10000
    TabOrder = 0
  end
  object Button1: TButton
    Left = 518
    Top = 40
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Memo1: TMemo
    Left = 16
    Top = 102
    Width = 185
    Height = 240
    Lines.Strings = (
      'Memo1')
    TabOrder = 2
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 16
    Top = 8
  end
end
