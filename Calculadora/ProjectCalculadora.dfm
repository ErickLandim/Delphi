object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 441
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Label1: TLabel
    Left = 176
    Top = 37
    Width = 8
    Height = 15
    Caption = '='
  end
  object EdtValue1: TEdit
    Left = 8
    Top = 34
    Width = 73
    Height = 31
    TabOrder = 0
  end
  object EdtValue2: TEdit
    Left = 87
    Top = 34
    Width = 72
    Height = 31
    TabOrder = 1
  end
  object EdtResult: TEdit
    Left = 200
    Top = 34
    Width = 73
    Height = 31
    TabOrder = 2
  end
  object Button1: TButton
    Left = 8
    Top = 96
    Width = 57
    Height = 33
    Caption = '+'
    TabOrder = 3
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 71
    Top = 96
    Width = 58
    Height = 33
    Caption = '-'
    TabOrder = 4
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 135
    Top = 96
    Width = 57
    Height = 33
    Caption = '*'
    TabOrder = 5
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 198
    Top = 96
    Width = 59
    Height = 33
    Caption = '/'
    TabOrder = 6
    OnClick = Button4Click
  end
end
