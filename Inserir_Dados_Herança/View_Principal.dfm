object Form1: TForm1
  Left = 470
  Top = 166
  Caption = 'Form1'
  ClientHeight = 678
  ClientWidth = 1028
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesigned
  TextHeight = 15
  object Label1: TLabel
    Left = 28
    Top = 40
    Width = 36
    Height = 15
    Caption = 'Nome:'
  end
  object Label2: TLabel
    Left = 28
    Top = 66
    Width = 108
    Height = 15
    Caption = 'Data de nascimento:'
  end
  object Label3: TLabel
    Left = 28
    Top = 95
    Width = 32
    Height = 15
    Caption = 'Email:'
  end
  object Memo1: TMemo
    Left = 290
    Top = 8
    Width = 303
    Height = 273
    Lines.Strings = (
      'Ol'#225' Usuario! Essas s'#227'o as informa'#231#245'es que voc'#234' '
      'adicionou, deseja confirmar?'
      '')
    TabOrder = 0
  end
  object Edit1: TEdit
    Left = 70
    Top = 37
    Width = 121
    Height = 23
    TabOrder = 1
  end
  object Edit2: TEdit
    Left = 139
    Top = 63
    Width = 121
    Height = 23
    TabOrder = 2
  end
  object Edit3: TEdit
    Left = 70
    Top = 92
    Width = 121
    Height = 23
    TabOrder = 3
  end
  object Memo2: TMemo
    Left = 712
    Top = 8
    Width = 308
    Height = 273
    Lines.Strings = (
      'Ol'#225' Usuario! Essas s'#227'o as informa'#231#245'es que voc'#234' '
      'adicionou, deseja confirmar?'
      '')
    TabOrder = 4
  end
  object Campo3: TMemo
    Left = 290
    Top = 400
    Width = 303
    Height = 249
    Lines.Strings = (
      'Campo3')
    TabOrder = 5
  end
  object Next: TButton
    Left = 608
    Top = 440
    Width = 75
    Height = 25
    Caption = 'Next'
    TabOrder = 6
    OnClick = NextClick
  end
  object Button1: TButton
    Left = 168
    Top = 256
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 7
    OnClick = Button1Click
  end
end
