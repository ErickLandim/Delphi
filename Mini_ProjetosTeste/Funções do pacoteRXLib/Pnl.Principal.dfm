object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 784
  ClientWidth = 1111
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object RxSpeedButton1: TRxSpeedButton
    Left = 904
    Top = 368
    Width = 25
    Height = 25
  end
  object RxSpinButton1: TRxSpinButton
    Left = 48
    Top = 294
    Width = 20
    Height = 20
  end
  object DateEdit1: TDateEdit
    Left = 48
    Top = 32
    Width = 121
    Height = 23
    NumGlyphs = 2
    TabOrder = 0
  end
  object ComboEdit1: TComboEdit
    Left = 48
    Top = 80
    Width = 121
    Height = 23
    NumGlyphs = 1
    TabOrder = 1
    Text = 'ComboEdit1'
  end
  object FilenameEdit1: TFilenameEdit
    Left = 48
    Top = 248
    Width = 121
    Height = 23
    NumGlyphs = 1
    TabOrder = 2
    Text = 'FilenameEdit1'
  end
  object DirectoryEdit1: TDirectoryEdit
    Left = 48
    Top = 144
    Width = 121
    Height = 23
    NumGlyphs = 1
    TabOrder = 3
    Text = 'DirectoryEdit1'
  end
  object RxCalcEdit1: TRxCalcEdit
    Left = 48
    Top = 192
    Width = 121
    Height = 23
    NumGlyphs = 2
    TabOrder = 4
  end
  object CurrencyEdit1: TCurrencyEdit
    Left = 183
    Top = 192
    Width = 121
    Height = 23
    TabOrder = 5
  end
  object TextListBox1: TTextListBox
    Left = 48
    Top = 448
    Width = 121
    Height = 97
    ItemHeight = 15
    TabOrder = 6
  end
  object RxCheckListBox1: TRxCheckListBox
    Left = 48
    Top = 320
    Width = 121
    Height = 97
    ItemHeight = 15
    TabOrder = 7
    InternalVersion = 202
  end
  object RxClock1: TRxClock
    Left = 904
    Top = 735
    Width = 185
    Height = 41
  end
  object RxSwitch1: TRxSwitch
    Left = 560
    Top = 256
    Width = 50
    Height = 60
    Caption = 'RxSwitch1'
    TabOrder = 9
  end
  object RxProgress1: TRxProgress
    Left = 216
    Top = 614
    Width = 150
    Height = 19
    Min = 0
    Max = 1000
    Position = 0
    ProgressColor = clHighlight
    Text = ''
    Ctl3D = True
    ShowPosition = True
    ShowPercent = True
  end
  object RxDrawGrid1: TRxDrawGrid
    Left = 288
    Top = 656
    Width = 393
    Height = 112
    TabOrder = 11
  end
  object RxDice1: TRxDice
    Left = 300
    Top = 80
    Width = 66
    Height = 66
    Color = clHighlight
    ParentColor = False
    ParentShowHint = False
    Rotate = True
    ShowFocus = True
    ShowHint = False
    TabOrder = 12
    Value = 2
  end
  object RxPanel1: TRxPanel
    Left = 48
    Top = 656
    Width = 210
    Height = 105
    BevelOuter = bvNone
    Color = clBlue
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clHotLight
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 13
    TileImage = False
    object RxLabel1: TRxLabel
      Left = 72
      Top = 26
      Width = 49
      Height = 15
      Caption = 'RxLabel1'
    end
  end
  object RxColorButton1: TRxColorButton
    Left = 48
    Top = 568
    Width = 121
    Height = 65
    Caption = 'RxColorButton1'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 14
    BackColor = clRed
    ForeColor = clWhite
    HoverColor = clBlue
  end
  object RxViewer1: TRxViewer
    Left = 698
    Top = 556
    Width = 200
    Height = 220
    BevelOuter = bvNone
    Caption = 'RxViewer1'
    TabOrder = 15
    Controller.VisibleButtons = [btPlay, btPause, btStop, btNext, btPrev, btStep, btBack, btRecord, btEject]
    Controller.EnabledButtons = [btPlay, btPause, btStop, btNext, btPrev, btStep, btBack, btRecord, btEject]
    Controller.ColoredButtons = [btPlay, btPause, btStop, btNext, btPrev, btStep, btBack, btRecord, btEject]
    Viewport.Stretch = False
  end
  object SpeedBar1: TSpeedBar
    Left = 0
    Top = 0
    Width = 1111
    Height = 29
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    BtnOffsetHorz = 3
    BtnOffsetVert = 3
    BtnWidth = 24
    BtnHeight = 23
    TabOrder = 16
    ExplicitLeft = 808
    ExplicitTop = 536
    ExplicitWidth = 185
    InternalVer = 1
  end
  object SpeedBar2: TSpeedBar
    Left = 0
    Top = 29
    Width = 1111
    Height = 29
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    BtnOffsetHorz = 3
    BtnOffsetVert = 3
    BtnWidth = 24
    BtnHeight = 23
    TabOrder = 17
    ExplicitLeft = 272
    ExplicitTop = 416
    ExplicitWidth = 185
    InternalVer = 1
  end
  object AppEvents1: TAppEvents
    Left = 632
    Top = 440
  end
  object RxWindowHook1: TRxWindowHook
    Left = 568
    Top = 488
  end
  object RxCalculator1: TRxCalculator
    Left = 752
    Top = 232
  end
  object RxTrayIconEx1: TRxTrayIconEx
    Left = 312
    Top = 320
  end
end
