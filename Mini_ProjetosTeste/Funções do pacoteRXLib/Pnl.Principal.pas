unit Pnl.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, RxToolEdit,
  Vcl.Buttons, RxCtrls, RxAnimate, Vcl.Imaging.GIFImg, Vcl.ExtCtrls, RxClock,
  RxCurrEdit, RxSwitch, Vcl.Grids, RxGrids, RxDice, RxSpin, RxCalc, RxHook,
  RxAppEvent, RxSpeedBar, RxViewer, RxShell;

type
  TForm1 = class(TForm)
    DateEdit1: TDateEdit;
    ComboEdit1: TComboEdit;
    FilenameEdit1: TFilenameEdit;
    DirectoryEdit1: TDirectoryEdit;
    RxCalcEdit1: TRxCalcEdit;
    CurrencyEdit1: TCurrencyEdit;
    TextListBox1: TTextListBox;
    RxCheckListBox1: TRxCheckListBox;
    RxLabel1: TRxLabel;
    RxClock1: TRxClock;
    RxSwitch1: TRxSwitch;
    RxProgress1: TRxProgress;
    RxDrawGrid1: TRxDrawGrid;
    RxSpeedButton1: TRxSpeedButton;
    RxSpinButton1: TRxSpinButton;
    RxDice1: TRxDice;
    RxPanel1: TRxPanel;
    RxColorButton1: TRxColorButton;
    RxViewer1: TRxViewer;
    SpeedBar1: TSpeedBar;
    SpeedBar2: TSpeedBar;
    AppEvents1: TAppEvents;
    RxWindowHook1: TRxWindowHook;
    RxCalculator1: TRxCalculator;
    RxTrayIconEx1: TRxTrayIconEx;






  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}



end.
