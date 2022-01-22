unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, jpeg, ExtCtrls, pngimage, Buttons;

type
  TfrmBoard = class(TForm)
    imgBoard: TImage;
    lblPlayer1: TLabel;
    imgIcon: TImage;
    lblPlayer2: TLabel;
    imgIcon2: TImage;
    imgP1: TImage;
    imgP2: TImage;
    btnRoll1: TButton;
    btnRoll2: TButton;
    memScores: TMemo;
    imgDice: TImage;
    bmbRestart: TBitBtn;
    procedure FormActivate(Sender: TObject);
    procedure btnRoll1Click(Sender: TObject);
    procedure btnRoll2Click(Sender: TObject);
    procedure bmbRestartClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    iScore1,iScore2,iRoll1,iRoll2:Integer;
    sP1,sP2:String;
  end;

var
  frmBoard: TfrmBoard;

implementation

{$R *.dfm}







procedure TfrmBoard.FormActivate(Sender: TObject);
begin
  sP1:=InputBox('Player 1','Insert Player 1 name','');
  sP2:=Inputbox('Player 2','Insert PLayer 2 name','');
  lblPlayer1.Caption:=sP1;
  lblPlayer2.Caption:=sp2;
  iScore1:=0;
  iSCore2:=0;
  btnRoll1.Enabled:=True;
  btnRoll2.Enabled:=False;
  bmbRestart.Visible:=False;
  iRoll1:=0;
  iRoll2:=0;
  memScores.Clear;
  btnRoll1.Caption:='Roll '+sP1;
  btnRoll2.Caption:='Roll '+sP2;
end;



procedure TfrmBoard.bmbRestartClick(Sender: TObject);
begin
  sP1:=InputBox('Player 1','Insert Player 1 name','');
  sP2:=Inputbox('Player 2','Insert PLayer 2 name','');
  lblPlayer1.Caption:=sP1;
  lblPlayer2.Caption:=sp2;
  iScore1:=0;
  iSCore2:=0;
  btnRoll1.Enabled:=True;
  btnRoll2.Enabled:=False;
  bmbRestart.Visible:=False;
  iRoll1:=0;
  iRoll2:=0;
  memScores.Clear;
  imgP1.Left:=24;
  imgP1.Top:=488;
  imgP2.Left:=60;
  imgP2.Top:=488;
  btnRoll1.Caption:='Roll '+sP1;
  btnRoll2.Caption:='Roll '+sP2;

end;

procedure TfrmBoard.btnRoll1Click(Sender: TObject);          //Player 1
begin
  iRoll1:=random(6)+1;
  case iRoll1 of
  1:begin
    imgDice.Picture.LoadFromFile('1.png');
    imgDice.Proportional:=True;
  end;
  2:begin
    imgDice.Picture.LoadFromFile('2.png');
    imgDice.Proportional:=True;
  end;
  3:begin
    imgDice.Picture.LoadFromFile('3.png');
    imgDice.Proportional:=True;
  end;
  4:begin
    imgDice.Picture.LoadFromFile('4.png');
    imgDice.Proportional:=True;
  end;
  5:begin
    imgDice.Picture.LoadFromFile('5.png');
    imgDice.Proportional:=True;
  end;
  6:begin
    imgDice.Picture.LoadFromFile('6.png');
    imgDice.Proportional:=True;
  end;
  end;
    iScore1:=iScore1+iRoll1;

begin
    if iScore1=1 then
     begin
      imgP1.Left:=24;
      imgP1.Top:=488;
      memScores.Lines.Add(sP1+' rolled a '+IntToStr(iRoll1)+' and is on '+IntToStr(iScore1));
     end;

    if iScore1=2 then
     begin
      imgP1.Left:=75;
      imgP1.Top:=488;
      memScores.Lines.Add(sP1+' rolled a '+IntToStr(iRoll1)+' and is on '+IntToStr(iScore1));
     end;

    if iScore1=3 then
     begin
      imgP1.Left:=128;
      imgP1.Top:=488;
      memScores.Lines.Add(sP1+' rolled a '+IntToStr(iRoll1)+' and is on '+IntToStr(iScore1));
     end;

    if iScore1=4 then
     begin
      iScore1:=25;
     end;

    if iscore1=5 then
     begin
       imgP1.Left:=235;
       imgP1.Top:=488;
       memScores.Lines.Add(sP1+' rolled a '+IntToStr(iRoll1)+' and is on '+IntToStr(iScore1));
     end;

    if iscore1=6 then
     begin
       imgP1.Left:=289;
       imgP1.Top:=488;
       memScores.Lines.Add(sP1+' rolled a '+IntToStr(iRoll1)+' and is on '+IntToStr(iScore1));
     end;

    if iscore1=7 then
     begin
       imgP1.Left:=340;
       imgP1.Top:=488;
       memScores.Lines.Add(sP1+' rolled a '+IntToStr(iRoll1)+' and is on '+IntToStr(iScore1));
     end;

    if iscore1=8 then
     begin
       imgP1.Left:=395;
       imgP1.Top:=488;
       memScores.Lines.Add(sP1+' rolled a '+IntToStr(iRoll1)+' and is on '+IntToStr(iScore1));
     end;

    if iscore1=9 then
     begin
       imgP1.Left:=447;
       imgP1.Top:=488;
       memScores.Lines.Add(sP1+' rolled a '+IntToStr(iRoll1)+' and is on '+IntToStr(iScore1));
     end;

    if iscore1=10 then
     begin
       imgP1.Left:=498;
       imgP1.Top:=488;
       memScores.Lines.Add(sP1+' rolled a '+IntToStr(iRoll1)+' and is on '+IntToStr(iScore1));
     end;

    if iscore1=11 then
     begin
       imgP1.Left:=498;
       imgP1.Top:=440;
       memScores.Lines.Add(sP1+' rolled a '+IntToStr(iRoll1)+' and is on '+IntToStr(iScore1));
     end;

    if iscore1=12 then
     begin
       imgP1.Left:=447;
       imgP1.Top:=440;
       memScores.Lines.Add(sP1+' rolled a '+IntToStr(iRoll1)+' and is on '+IntToStr(iScore1));
     end;

    if iscore1=13 then
     begin
       iScore1:=46;
     end;

    if iscore1=14 then
     begin
       imgP1.Left:=340;
       imgP1.Top:=440;
       memScores.Lines.Add(sP1+' rolled a '+IntToStr(iRoll1)+' and is on '+IntToStr(iScore1));
     end;

    if iscore1=15 then
     begin
       imgP1.Left:=289;
       imgP1.Top:=440;
       memScores.Lines.Add(sP1+' rolled a '+IntToStr(iRoll1)+' and is on '+IntToStr(iScore1));
     end;

    if iscore1=16 then
     begin
       imgP1.Left:=235;
       imgP1.Top:=440;
       memScores.Lines.Add(sP1+' rolled a '+IntToStr(iRoll1)+' and is on '+IntToStr(iScore1));
     end;

    if iscore1=17 then
     begin
       imgP1.Left:=184;
       imgP1.Top:=440;
       memScores.Lines.Add(sP1+' rolled a '+IntToStr(iRoll1)+' and is on '+IntToStr(iScore1));
     end;

    if iscore1=18 then
     begin
       imgP1.Left:=128;
       imgP1.Top:=440;
       memScores.Lines.Add(sP1+' rolled a '+IntToStr(iRoll1)+' and is on '+IntToStr(iScore1));
     end;

    if iscore1=19 then
     begin
       imgP1.Left:=75;
       imgP1.Top:=440;
       memScores.Lines.Add(sP1+' rolled a '+IntToStr(iRoll1)+' and is on '+IntToStr(iScore1));
     end;

    if iscore1=20 then
     begin
       imgP1.Left:=24;
       imgP1.Top:=440;
       memScores.Lines.Add(sP1+' rolled a '+IntToStr(iRoll1)+' and is on '+IntToStr(iScore1));
     end;

    if iscore1=21 then
     begin
       imgP1.Left:=24;
       imgP1.Top:=384;
       memScores.Lines.Add(sP1+' rolled a '+IntToStr(iRoll1)+' and is on '+IntToStr(iScore1));
     end;

    if iscore1=22 then
     begin
       imgP1.Left:=75;
       imgP1.Top:=384;
       memScores.Lines.Add(sP1+' rolled a '+IntToStr(iRoll1)+' and is on '+IntToStr(iScore1));
     end;

    if iscore1=23 then
     begin
       imgP1.Left:=128;
       imgP1.Top:=384;
       memScores.Lines.Add(sP1+' rolled a '+IntToStr(iRoll1)+' and is on '+IntToStr(iScore1));
     end;

    if iscore1=24 then
     begin
       imgP1.Left:=184;
       imgP1.Top:=384;
       memScores.Lines.Add(sP1+' rolled a '+IntToStr(iRoll1)+' and is on '+IntToStr(iScore1));
     end;

    if iscore1=25 then
     begin
       imgP1.Left:=235;
       imgP1.Top:=384;
       memScores.Lines.Add(sP1+' rolled a '+IntToStr(iRoll1)+' and is on '+IntToStr(iScore1));
     end;

    if iscore1=26 then
     begin
       imgP1.Left:=289;
       imgP1.Top:=384;
       memScores.Lines.Add(sP1+' rolled a '+IntToStr(iRoll1)+' and is on '+IntToStr(iScore1));
     end;

    if iscore1=27 then
     begin
       iScore1:=5;
     end;

    if iscore1=28 then
     begin
       imgP1.Left:=395;
       imgP1.Top:=384;
       memScores.Lines.Add(sP1+' rolled a '+IntToStr(iRoll1)+' and is on '+IntToStr(iScore1));
     end;

    if iscore1=29 then
     begin
       imgP1.Left:=447;
       imgP1.Top:=384;
       memScores.Lines.Add(sP1+' rolled a '+IntToStr(iRoll1)+' and is on '+IntToStr(iScore1));
     end;

    if iscore1=30 then
     begin
       imgP1.Left:=498;
       imgP1.Top:=384;
       memScores.Lines.Add(sP1+' rolled a '+IntToStr(iRoll1)+' and is on '+IntToStr(iScore1));
     end;

    if iscore1=31 then
     begin
       imgP1.Left:=498;
       imgP1.Top:=336;
       memScores.Lines.Add(sP1+' rolled a '+IntToStr(iRoll1)+' and is on '+IntToStr(iScore1));
     end;

    if iscore1=32 then
     begin
       imgP1.Left:=447;
       imgP1.Top:=336;
       memScores.Lines.Add(sP1+' rolled a '+IntToStr(iRoll1)+' and is on '+IntToStr(iScore1));
     end;

    if iscore1=33 then
     begin
       iScore1:=49;
     end;

    if iscore1=34 then
     begin
       imgP1.Left:=340;
       imgP1.Top:=336;
       memScores.Lines.Add(sP1+' rolled a '+IntToStr(iRoll1)+' and is on '+IntToStr(iScore1));
     end;

    if iscore1=35 then
     begin
       imgP1.Left:=289;
       imgP1.Top:=336;
       memScores.Lines.Add(sP1+' rolled a '+IntToStr(iRoll1)+' and is on '+IntToStr(iScore1));
     end;

    if iscore1=36 then
     begin
       imgP1.Left:=235;
       imgP1.Top:=336;
       memScores.Lines.Add(sP1+' rolled a '+IntToStr(iRoll1)+' and is on '+IntToStr(iScore1));
     end;

    if iscore1=37 then
     begin
       imgP1.Left:=184;
       imgP1.Top:=336;
       memScores.Lines.Add(sP1+' rolled a '+IntToStr(iRoll1)+' and is on '+IntToStr(iScore1));
     end;

    if iscore1=38 then
     begin
       imgP1.Left:=128;
       imgP1.Top:=336;
       memScores.Lines.Add(sP1+' rolled a '+IntToStr(iRoll1)+' and is on '+IntToStr(iScore1));
     end;

    if iscore1=39 then
     begin
       imgP1.Left:=75;
       imgP1.Top:=336;
       memScores.Lines.Add(sP1+' rolled a '+IntToStr(iRoll1)+' and is on '+IntToStr(iScore1));
     end;

    if iscore1=40 then
     begin
       iScore1:=3;
     end;

    if iscore1=41 then
     begin
       imgP1.Left:=24;
       imgP1.Top:=283;
       memScores.Lines.Add(sP1+' rolled a '+IntToStr(iRoll1)+' and is on '+IntToStr(iScore1));
     end;

    if iscore1=42 then
     begin
       imgP1.Left:=75;
       imgP1.Top:=283;
       memScores.Lines.Add(sP1+' rolled a '+IntToStr(iRoll1)+' and is on '+IntToStr(iScore1));
     end;

    if iscore1=43 then
     begin
       iScore1:=18;
     end;

    if iscore1=44 then
     begin
       imgP1.Left:=184;
       imgP1.Top:=283;
       memScores.Lines.Add(sP1+' rolled a '+IntToStr(iRoll1)+' and is on '+IntToStr(iScore1));
     end;

    if iscore1=45 then
     begin
       imgP1.Left:=235;
       imgP1.Top:=283;
       memScores.Lines.Add(sP1+' rolled a '+IntToStr(iRoll1)+' and is on '+IntToStr(iScore1));
     end;

    if iscore1=46 then
     begin
       imgP1.Left:=289;
       imgP1.Top:=283;
       memScores.Lines.Add(sP1+' rolled a '+IntToStr(iRoll1)+' and is on '+IntToStr(iScore1));
     end;

    if iscore1=47 then
     begin
       imgP1.Left:=340;
       imgP1.Top:=283;
       memScores.Lines.Add(sP1+' rolled a '+IntToStr(iRoll1)+' and is on '+IntToStr(iScore1));
     end;

    if iscore1=48 then
     begin
       imgP1.Left:=395;
       imgP1.Top:=283;
       memScores.Lines.Add(sP1+' rolled a '+IntToStr(iRoll1)+' and is on '+IntToStr(iScore1));
     end;

    if iscore1=49 then
     begin
       imgP1.Left:=447;
       imgP1.Top:=283;
       memScores.Lines.Add(sP1+' rolled a '+IntToStr(iRoll1)+' and is on '+IntToStr(iScore1));
     end;

    if iscore1=50 then
     begin
       iScore1:=69;
     end;

    if iscore1=51 then
     begin
       imgP1.Left:=498;
       imgP1.Top:=230;
       memScores.Lines.Add(sP1+' rolled a '+IntToStr(iRoll1)+' and is on '+IntToStr(iScore1));
     end;

    if iscore1=52 then
     begin
       imgP1.Left:=447;
       imgP1.Top:=230;
       memScores.Lines.Add(sP1+' rolled a '+IntToStr(iRoll1)+' and is on '+IntToStr(iScore1));
     end;

    if iscore1=53 then
     begin
       imgP1.Left:=395;
       imgP1.Top:=230;
       memScores.Lines.Add(sP1+' rolled a '+IntToStr(iRoll1)+' and is on '+IntToStr(iScore1));
     end;

    if iscore1=54 then
     begin
       iScore1:=31;
     end;

    if iscore1=55 then
     begin
       imgP1.Left:=289;
       imgP1.Top:=230;
       memScores.Lines.Add(sP1+' rolled a '+IntToStr(iRoll1)+' and is on '+IntToStr(iScore1));
     end;

    if iscore1=56 then
     begin
       imgP1.Left:=235;
       imgP1.Top:=230;
       memScores.Lines.Add(sP1+' rolled a '+IntToStr(iRoll1)+' and is on '+IntToStr(iScore1));
     end;

    if iscore1=57 then
     begin
       imgP1.Left:=184;
       imgP1.Top:=230;
       memScores.Lines.Add(sP1+' rolled a '+IntToStr(iRoll1)+' and is on '+IntToStr(iScore1));
     end;

    if iscore1=58 then
     begin
       imgP1.Left:=128;
       imgP1.Top:=230;
       memScores.Lines.Add(sP1+' rolled a '+IntToStr(iRoll1)+' and is on '+IntToStr(iScore1));
     end;

    if iscore1=59 then
     begin
       imgP1.Left:=75;
       imgP1.Top:=230;
       memScores.Lines.Add(sP1+' rolled a '+IntToStr(iRoll1)+' and is on '+IntToStr(iScore1));
     end;

    if iscore1=60 then
     begin
       imgP1.Left:=24;
       imgP1.Top:=230;
       memScores.Lines.Add(sP1+' rolled a '+IntToStr(iRoll1)+' and is on '+IntToStr(iScore1));
     end;

    if iscore1=61 then
     begin
       imgP1.Left:=24;
       imgP1.Top:=177;
       memScores.Lines.Add(sP1+' rolled a '+IntToStr(iRoll1)+' and is on '+IntToStr(iScore1));
     end;

    if iscore1=62 then
     begin
       imgP1.Left:=75;
       imgP1.Top:=177;
       memScores.Lines.Add(sP1+' rolled a '+IntToStr(iRoll1)+' and is on '+IntToStr(iScore1));
     end;

    if iscore1=63 then
     begin
       imgP1.Left:=128;
       imgP1.Top:=177;
       memScores.Lines.Add(sP1+' rolled a '+IntToStr(iRoll1)+' and is on '+IntToStr(iScore1));
     end;

    if iscore1=64 then
     begin
       imgP1.Left:=184;
       imgP1.Top:=177;
       memScores.Lines.Add(sP1+' rolled a '+IntToStr(iRoll1)+' and is on '+IntToStr(iScore1));
     end;

    if iscore1=65 then
     begin
       imgP1.Left:=235;
       imgP1.Top:=177;
       memScores.Lines.Add(sP1+' rolled a '+IntToStr(iRoll1)+' and is on '+IntToStr(iScore1));
     end;

    if iscore1=66 then
     begin
       iScore1:=45;
     end;

    if iscore1=67 then
     begin
       imgP1.Left:=340;
       imgP1.Top:=177;
       memScores.Lines.Add(sP1+' rolled a '+IntToStr(iRoll1)+' and is on '+IntToStr(iScore1));
     end;

    if iscore1=68 then
     begin
       imgP1.Left:=395;
       imgP1.Top:=177;
       memScores.Lines.Add(sP1+' rolled a '+IntToStr(iRoll1)+' and is on '+IntToStr(iScore1));
     end;

    if iscore1=69 then
     begin
       imgP1.Left:=447;
       imgP1.Top:=177;
       memScores.Lines.Add(sP1+' rolled a '+IntToStr(iRoll1)+' and is on '+IntToStr(iScore1));
     end;

    if iscore1=70 then
     begin
       imgP1.Left:=498;
       imgP1.Top:=177;
       memScores.Lines.Add(sP1+' rolled a '+IntToStr(iRoll1)+' and is on '+IntToStr(iScore1));
     end;

    if iscore1=71 then
     begin
       imgP1.Left:=498;
       imgP1.Top:=121;
       memScores.Lines.Add(sP1+' rolled a '+IntToStr(iRoll1)+' and is on '+IntToStr(iScore1));
     end;

    if iscore1=72 then
     begin
       imgP1.Left:=447;
       imgP1.Top:=121;
       memScores.Lines.Add(sP1+' rolled a '+IntToStr(iRoll1)+' and is on '+IntToStr(iScore1));
     end;

    if iscore1=73 then
     begin
       imgP1.Left:=395;
       imgP1.Top:=121;
       memScores.Lines.Add(sP1+' rolled a '+IntToStr(iRoll1)+' and is on '+IntToStr(iScore1));
     end;

    if iscore1=74 then
     begin
       iScore1:=92;
     end;

    if iscore1=75 then
     begin
       imgP1.Left:=289;
       imgP1.Top:=121;
       memScores.Lines.Add(sP1+' rolled a '+IntToStr(iRoll1)+' and is on '+IntToStr(iScore1));
     end;

    if iscore1=76 then
     begin
       iScore1:=58;
     end;

    if iscore1=77 then
     begin
       imgP1.Left:=184;
       imgP1.Top:=121;
       memScores.Lines.Add(sP1+' rolled a '+IntToStr(iRoll1)+' and is on '+IntToStr(iScore1));
     end;

    if iscore1=78 then
     begin
       imgP1.Left:=128;
       imgP1.Top:=121;
       memScores.Lines.Add(sP1+' rolled a '+IntToStr(iRoll1)+' and is on '+IntToStr(iScore1));
     end;

    if iscore1=79 then
     begin
       imgP1.Left:=75;
       imgP1.Top:=121;
       memScores.Lines.Add(sP1+' rolled a '+IntToStr(iRoll1)+' and is on '+IntToStr(iScore1));
     end;

    if iscore1=80 then
     begin
       imgP1.Left:=24;
       imgP1.Top:=121;
       memScores.Lines.Add(sP1+' rolled a '+IntToStr(iRoll1)+' and is on '+IntToStr(iScore1));
     end;

    if iscore1=81 then
     begin
       imgP1.Left:=24;
       imgP1.Top:=71;
       memScores.Lines.Add(sP1+' rolled a '+IntToStr(iRoll1)+' and is on '+IntToStr(iScore1));
     end;

    if iscore1=82 then
     begin
       imgP1.Left:=75;
       imgP1.Top:=71;
       memScores.Lines.Add(sP1+' rolled a '+IntToStr(iRoll1)+' and is on '+IntToStr(iScore1));
     end;

    if iscore1=83 then
     begin
       imgP1.Left:=128;
       imgP1.Top:=71;
       memScores.Lines.Add(sP1+' rolled a '+IntToStr(iRoll1)+' and is on '+IntToStr(iScore1));
     end;

    if iscore1=84 then
     begin
       imgP1.Left:=184;
       imgP1.Top:=71;
       memScores.Lines.Add(sP1+' rolled a '+IntToStr(iRoll1)+' and is on '+IntToStr(iScore1));
     end;

    if iscore1=85 then
     begin
       imgP1.Left:=235;
       imgP1.Top:=71;
       memScores.Lines.Add(sP1+' rolled a '+IntToStr(iRoll1)+' and is on '+IntToStr(iScore1));
     end;

    if iscore1=86 then
     begin
       imgP1.Left:=289;
       imgP1.Top:=71;
       memScores.Lines.Add(sP1+' rolled a '+IntToStr(iRoll1)+' and is on '+IntToStr(iScore1));
     end;

    if iscore1=87 then
     begin
       imgP1.Left:=340;
       imgP1.Top:=71;
       memScores.Lines.Add(sP1+' rolled a '+IntToStr(iRoll1)+' and is on '+IntToStr(iScore1));
     end;

    if iscore1=88 then
     begin
       imgP1.Left:=395;
       imgP1.Top:=71;
       memScores.Lines.Add(sP1+' rolled a '+IntToStr(iRoll1)+' and is on '+IntToStr(iScore1));
     end;

    if iscore1=89 then
     begin
       iScore1:=53;
     end;

    if iscore1=90 then
     begin
       imgP1.Left:=498;
       imgP1.Top:=71;
       memScores.Lines.Add(sP1+' rolled a '+IntToStr(iRoll1)+' and is on '+IntToStr(iScore1));
     end;

    if iscore1=91 then
     begin
       imgP1.Left:=498;
       imgP1.Top:=20;
       memScores.Lines.Add(sP1+' rolled a '+IntToStr(iRoll1)+' and is on '+IntToStr(iScore1));
     end;

    if iscore1=92 then
     begin
       imgP1.Left:=447;
       imgP1.Top:=20;
       memScores.Lines.Add(sP1+' rolled a '+IntToStr(iRoll1)+' and is on '+IntToStr(iScore1));
     end;

    if iscore1=93 then
     begin
       imgP1.Left:=395;
       imgP1.Top:=20;
       memScores.Lines.Add(sP1+' rolled a '+IntToStr(iRoll1)+' and is on '+IntToStr(iScore1));
     end;

    if iscore1=94 then
     begin
       imgP1.Left:=340;
       imgP1.Top:=20;
       memScores.Lines.Add(sP1+' rolled a '+IntToStr(iRoll1)+' and is on '+IntToStr(iScore1));
     end;

    if iscore1=95 then
     begin
       imgP1.Left:=289;
       imgP1.Top:=20;
       memScores.Lines.Add(sP1+' rolled a '+IntToStr(iRoll1)+' and is on '+IntToStr(iScore1));
     end;

    if iscore1=96 then
     begin
       imgP1.Left:=235;
       imgP1.Top:=20;
       memScores.Lines.Add(sP1+' rolled a '+IntToStr(iRoll1)+' and is on '+IntToStr(iScore1));
     end;

    if iscore1=97 then
     begin
       imgP1.Left:=184;
       imgP1.Top:=20;
       memScores.Lines.Add(sP1+' rolled a '+IntToStr(iRoll1)+' and is on '+IntToStr(iScore1));
     end;

    if iscore1=98 then
     begin
       imgP1.Left:=128;
       imgP1.Top:=20;
       memScores.Lines.Add(sP1+' rolled a '+IntToStr(iRoll1)+' and is on '+IntToStr(iScore1));
     end;

    if iscore1=99 then
     begin
       iScore1:=53;
     end;

    if iSCore1>=100 then
      begin
      imgP1.Left:=24;
      imgP1.Top:=20;
      memScores.Lines.Add(sP1+' rolled a '+IntToStr(iRoll1)+' and is on 100');
      ShowMessage(sP1+'! You have beaten the level!');
      btnRoll1.Enabled:=False;
      bmbRestart.Visible:=True;
      end;

    btnRoll2.Enabled:=True;
    btnRoll1.Enabled:=False;
    end;
    end;





procedure TfrmBoard.btnRoll2Click(Sender: TObject);                            //Player 2
begin
  iRoll2:=0;
  iRoll2:=Random(6)+1;
  case iRoll2 of
  1:begin
    imgDice.Picture.LoadFromFile('1.png');
    imgDice.Proportional:=True;
  end;
  2:begin
    imgDice.Picture.LoadFromFile('2.png');
    imgDice.Proportional:=True;
  end;
  3:begin
    imgDice.Picture.LoadFromFile('3.png');
    imgDice.Proportional:=True;
  end;
  4:begin
    imgDice.Picture.LoadFromFile('4.png');
    imgDice.Proportional:=True;
  end;
  5:begin
    imgDice.Picture.LoadFromFile('5.png');
    imgDice.Proportional:=True;
  end;
  6:begin
    imgDice.Picture.LoadFromFile('6.png');
    imgDice.Proportional:=True;
  end;
  end;
  iScore2:=iScore2+iRoll2;

    if iSCore2=1 then
      begin
      imgP2.Left:=60;
      imgP2.Top:=488;
      memScores.Lines.Add(sP2+' rolled a '+IntToStr(iRoll2)+' and is on '+IntToStr(iScore2));
      end;

    if iSCore2=2 then
      begin
      imgP2.Left:=114;
      imgP2.Top:=488;
      memScores.Lines.Add(sP2+' rolled a '+IntToStr(iRoll2)+' and is on '+IntToStr(iScore2));
      end;

    if iSCore2=3 then
      begin
      imgP2.Left:=165;
      imgP2.Top:=488;
      memScores.Lines.Add(sP2+' rolled a '+IntToStr(iRoll2)+' and is on '+IntToStr(iScore2));
      end;
    if iSCore2=4 then
      iSCore2:=25;


    if iSCore2=5 then
      begin
      imgP2.Left:=271;
      imgP2.Top:=488;
      memScores.Lines.Add(sP2+' rolled a '+IntToStr(iRoll2)+' and is on '+IntToStr(iScore2));
      end;

    if iSCore2=6 then
      begin
      imgP2.Left:=325;
      imgP2.Top:=488;
      memScores.Lines.Add(sP2+' rolled a '+IntToStr(iRoll2)+' and is on '+IntToStr(iScore2));
      end;

    if iSCore2=7 then
      begin
      imgP2.Left:=378;
      imgP2.Top:=488;
      memScores.Lines.Add(sP2+' rolled a '+IntToStr(iRoll2)+' and is on '+IntToStr(iScore2));
      end;

    if iSCore2=8 then
      begin
      imgP2.Left:=430;
      imgP2.Top:=488;
      memScores.Lines.Add(sP2+' rolled a '+IntToStr(iRoll2)+' and is on '+IntToStr(iScore2));
      end;

    if iSCore2=9 then
      begin
      imgP2.Left:=482;
      imgP2.Top:=488;
      memScores.Lines.Add(sP2+' rolled a '+IntToStr(iRoll2)+' and is on '+IntToStr(iScore2));
      end;
    if iSCore2=10 then
      begin
      imgP2.Left:=535;
      imgP2.Top:=488;
      memScores.Lines.Add(sP2+' rolled a '+IntToStr(iRoll2)+' and is on '+IntToStr(iScore2));
      end;

    if iSCore2=11 then
      begin
      imgP2.Left:=535;
      imgP2.Top:=440;
      memScores.Lines.Add(sP2+' rolled a '+IntToStr(iRoll2)+' and is on '+IntToStr(iScore2));
      end;

    if iSCore2=12 then
      begin
      imgP2.Left:=482;
      imgP2.Top:=440;
      memScores.Lines.Add(sP2+' rolled a '+IntToStr(iRoll2)+' and is on '+IntToStr(iScore2));
      end;

    if iSCore2=13 then
      begin
      iSCore2:=46; //Ladder

      end;

    if iSCore2=14 then
      begin
      imgP2.Left:=378;
      imgP2.Top:=440;
      memScores.Lines.Add(sP2+' rolled a '+IntToStr(iRoll2)+' and is on '+IntToStr(iScore2));
      end;

    if iSCore2=15 then
      begin
      imgP2.Left:=325;
      imgP2.Top:=440;
      memScores.Lines.Add(sP2+' rolled a '+IntToStr(iRoll2)+' and is on '+IntToStr(iScore2));
      end;

    if iSCore2=16 then
      begin
      imgP2.Left:=271;
      imgP2.Top:=440;
      memScores.Lines.Add(sP2+' rolled a '+IntToStr(iRoll2)+' and is on '+IntToStr(iScore2));
      end;

    if iSCore2=17 then
      begin
      imgP2.Left:=219;
      imgP2.Top:=440;
      memScores.Lines.Add(sP2+' rolled a '+IntToStr(iRoll2)+' and is on '+IntToStr(iScore2));
      end;

    if iSCore2=18 then
      begin
      imgP2.Left:=165;
      imgP2.Top:=440;
      memScores.Lines.Add(sP2+' rolled a '+IntToStr(iRoll2)+' and is on '+IntToStr(iScore2));
      end;

    if iSCore2=19 then
      begin
      imgP2.Left:=114;
      imgP2.Top:=440;
      memScores.Lines.Add(sP2+' rolled a '+IntToStr(iRoll2)+' and is on '+IntToStr(iScore2));
      end;

    if iSCore2=20 then
      begin
      imgP2.Left:=60;
      imgP2.Top:=440;
      memScores.Lines.Add(sP2+' rolled a '+IntToStr(iRoll2)+' and is on '+IntToStr(iScore2));
      end;

    if iSCore2=21 then
      begin
      imgP2.Left:=60;
      imgP2.Top:=384;
      memScores.Lines.Add(sP2+' rolled a '+IntToStr(iRoll2)+' and is on '+IntToStr(iScore2));
      end;

     if iSCore2=22 then
      begin
      imgP2.Left:=114;
      imgP2.Top:=384;
      memScores.Lines.Add(sP2+' rolled a '+IntToStr(iRoll2)+' and is on '+IntToStr(iScore2));
      end;

    if iSCore2=23 then
      begin
      imgP2.Left:=165;
      imgP2.Top:=384;
      memScores.Lines.Add(sP2+' rolled a '+IntToStr(iRoll2)+' and is on '+IntToStr(iScore2));
      end;

    if iSCore2=24 then
      begin
      imgP2.Left:=219;
      imgP2.Top:=384;
      memScores.Lines.Add(sP2+' rolled a '+IntToStr(iRoll2)+' and is on '+IntToStr(iScore2));
      end;

    if iSCore2=25 then
      begin
      imgP2.Left:=271;
      imgP2.Top:=384;
      memScores.Lines.Add(sP2+' rolled a '+IntToStr(iRoll2)+' and is on '+IntToStr(iScore2));
      end;

    if iSCore2=26 then
      begin
      imgP2.Left:=325;
      imgP2.Top:=384;
      memScores.Lines.Add(sP2+' rolled a '+IntToStr(iRoll2)+' and is on '+IntToStr(iScore2));
      end;

    if iSCore2=27 then
      begin
       iSCore2:=5;         //Snake
      end;

    if iSCore2=28 then
      begin
      imgP2.Left:=430;
      imgP2.Top:=384;
      memScores.Lines.Add(sP2+' rolled a '+IntToStr(iRoll2)+' and is on '+IntToStr(iScore2));
      end;

    if iSCore2=29 then
      begin
      imgP2.Left:=482;
      imgP2.Top:=384;
      memScores.Lines.Add(sP2+' rolled a '+IntToStr(iRoll2)+' and is on '+IntToStr(iScore2));
      end;

    if iSCore2=30 then
      begin
      imgP2.Left:=535;
      imgP2.Top:=384;
      memScores.Lines.Add(sP2+' rolled a '+IntToStr(iRoll2)+' and is on '+IntToStr(iScore2));
      end;

    if iSCore2=31 then
      begin
      imgP2.Left:=535;
      imgP2.Top:=336;
      memScores.Lines.Add(sP2+' rolled a '+IntToStr(iRoll2)+' and is on '+IntToStr(iScore2));
      end;

    if iSCore2=32 then
      begin
      imgP2.Left:=482;
      imgP2.Top:=336;
      memScores.Lines.Add(sP2+' rolled a '+IntToStr(iRoll2)+' and is on '+IntToStr(iScore2));
      end;

    if iSCore2=33 then
      begin
      iSCore2:=49;   //Ladder
      end;


    if iSCore2=34 then
      begin
      imgP2.Left:=378;
      imgP2.Top:=336;
      memScores.Lines.Add(sP2+' rolled a '+IntToStr(iRoll2)+' and is on '+IntToStr(iScore2));
      end;

    if iSCore2=35 then
      begin
      imgP2.Left:=325;
      imgP2.Top:=336;
      memScores.Lines.Add(sP2+' rolled a '+IntToStr(iRoll2)+' and is on '+IntToStr(iScore2));
      end;

    if iSCore2=36 then
      begin
      imgP2.Left:=271;
      imgP2.Top:=336;
      memScores.Lines.Add(sP2+' rolled a '+IntToStr(iRoll2)+' and is on '+IntToStr(iScore2));
      end;

    if iSCore2=37 then
      begin
      imgP2.Left:=219;
      imgP2.Top:=336;
      memScores.Lines.Add(sP2+' rolled a '+IntToStr(iRoll2)+' and is on '+IntToStr(iScore2));
      end;

    if iSCore2=38 then
      begin
      imgP2.Left:=165;
      imgP2.Top:=336;
      memScores.Lines.Add(sP2+' rolled a '+IntToStr(iRoll2)+' and is on '+IntToStr(iScore2));
      end;

    if iSCore2=39 then
      begin
      imgP2.Left:=114;
      imgP2.Top:=336;
      memScores.Lines.Add(sP2+' rolled a '+IntToStr(iRoll2)+' and is on '+IntToStr(iScore2));
      end;
    if iSCore2=40 then
      begin
      iSCore2:=3;         //Snake
      end;

    if iSCore2=41 then
      begin
      imgP2.Left:=60;
      imgP2.Top:=283;
      memScores.Lines.Add(sP2+' rolled a '+IntToStr(iRoll2)+' and is on '+IntToStr(iScore2));
      end;

    if iSCore2=42 then
      begin
      iSCore2:=63;       //Ladder
      end;

    if iSCore2=43 then
      begin
      iSCore2:=18;       //Snake
      end;

    if iSCore2=44 then
      begin
      imgP2.Left:=219;
      imgP2.Top:=283;
      memScores.Lines.Add(sP2+' rolled a '+IntToStr(iRoll2)+' and is on '+IntToStr(iScore2));
      end;

    if iSCore2=45 then
      begin
      imgP2.Left:=271;
      imgP2.Top:=283;
      memScores.Lines.Add(sP2+' rolled a '+IntToStr(iRoll2)+' and is on '+IntToStr(iScore2));
      end;

    if iSCore2=46 then
      begin
      imgP2.Left:=325;
      imgP2.Top:=283;
      memScores.Lines.Add(sP2+' rolled a '+IntToStr(iRoll2)+' and is on '+IntToStr(iScore2));
      end;

    if iSCore2=47 then
      begin
      imgP2.Left:=378;
      imgP2.Top:=283;
      memScores.Lines.Add(sP2+' rolled a '+IntToStr(iRoll2)+' and is on '+IntToStr(iScore2));
      end;
    if iSCore2=48 then
      begin
      imgP2.Left:=430;
      imgP2.Top:=283;
      memScores.Lines.Add(sP2+' rolled a '+IntToStr(iRoll2)+' and is on '+IntToStr(iScore2));
      end;

    if iSCore2=49 then
      begin
      imgP2.Left:=482;
      imgP2.Top:=283;
      memScores.Lines.Add(sP2+' rolled a '+IntToStr(iRoll2)+' and is on '+IntToStr(iScore2));
      end;

    if iSCore2=50 then
      begin
      iSCore2:=69;      //Ladder
      end;

    if iSCore2=51 then
      begin
      imgP2.Left:=535;
      imgP2.Top:=230;
      memScores.Lines.Add(sP2+' rolled a '+IntToStr(iRoll2)+' and is on '+IntToStr(iScore2));
      end;

    if iSCore2=52 then
      begin
      imgP2.Left:=482;
      imgP2.Top:=230;
      memScores.Lines.Add(sP2+' rolled a '+IntToStr(iRoll2)+' and is on '+IntToStr(iScore2));
      end;

    if iSCore2=53 then
      begin
      imgP2.Left:=430;
      imgP2.Top:=230;
      memScores.Lines.Add(sP2+' rolled a '+IntToStr(iRoll2)+' and is on '+IntToStr(iScore2));
      end;

    if iSCore2=54 then
    begin
      iSCore2:=31;       //Snake
    end;

    if iSCore2=55 then
      begin
      imgP2.Left:=325;
      imgP2.Top:=230;
      memScores.Lines.Add(sP2+' rolled a '+IntToStr(iRoll2)+' and is on '+IntToStr(iScore2));
      end;

    if iSCore2=56 then
      begin
      imgP2.Left:=271;
      imgP2.Top:=230;
      memScores.Lines.Add(sP2+' rolled a '+IntToStr(iRoll2)+' and is on '+IntToStr(iScore2));
      end;

    if iSCore2=57 then
      begin
      imgP2.Left:=219;
      imgP2.Top:=230;
      memScores.Lines.Add(sP2+' rolled a '+IntToStr(iRoll2)+' and is on '+IntToStr(iScore2));
      end;

    if iSCore2=58 then
      begin
      imgP2.Left:=165;
      imgP2.Top:=230;
      memScores.Lines.Add(sP2+' rolled a '+IntToStr(iRoll2)+' and is on '+IntToStr(iScore2));
      end;

    if iSCore2=59 then
      begin
      imgP2.Left:=114;
      imgP2.Top:=230;
      memScores.Lines.Add(sP2+' rolled a '+IntToStr(iRoll2)+' and is on '+IntToStr(iScore2));
      end;

    if iSCore2=60 then
      begin
      imgP2.Left:=60;
      imgP2.Top:=230;
      memScores.Lines.Add(sP2+' rolled a '+IntToStr(iRoll2)+' and is on '+IntToStr(iScore2));
      end;

    if iSCore2=61 then
      begin
      imgP2.Left:=60;
      imgP2.Top:=177;
      memScores.Lines.Add(sP2+' rolled a '+IntToStr(iRoll2)+' and is on '+IntToStr(iScore2));
      end;

    if iSCore2=62 then
      begin
      iSCore2:=81;       //Ladder
      end;

    if iSCore2=63 then
      begin
      imgP2.Left:=165;
      imgP2.Top:=177;
      memScores.Lines.Add(sP2+' rolled a '+IntToStr(iRoll2)+' and is on '+IntToStr(iScore2));
      end;

    if iSCore2=64 then
      begin
      imgP2.Left:=219;
      imgP2.Top:=177;
      memScores.Lines.Add(sP2+' rolled a '+IntToStr(iRoll2)+' and is on '+IntToStr(iScore2));
      end;

    if iSCore2=65 then
      begin
      imgP2.Left:=271;
      imgP2.Top:=177;
      memScores.Lines.Add(sP2+' rolled a '+IntToStr(iRoll2)+' and is on '+IntToStr(iScore2));
      end;

    if iSCore2=66 then
      begin
      iSCore2:=45;        //Snake
      end;

    if iSCore2=67 then
      begin
      imgP2.Left:=378;
      imgP2.Top:=177;
      memScores.Lines.Add(sP2+' rolled a '+IntToStr(iRoll2)+' and is on '+IntToStr(iScore2));
      end;

    if iSCore2=68 then
      begin
      imgP2.Left:=430;
      imgP2.Top:=177;
      memScores.Lines.Add(sP2+' rolled a '+IntToStr(iRoll2)+' and is on '+IntToStr(iScore2));
      end;

    if iSCore2=69 then
      begin
      imgP2.Left:=482;
      imgP2.Top:=177;
      memScores.Lines.Add(sP2+' rolled a '+IntToStr(iRoll2)+' and is on '+IntToStr(iScore2));
      end;

    if iSCore2=70 then
      begin
      imgP2.Left:=535;
      imgP2.Top:=177;
      memScores.Lines.Add(sP2+' rolled a '+IntToStr(iRoll2)+' and is on '+IntToStr(iScore2));
      end;

    if iSCore2=71 then
      begin
      imgP2.Left:=535;
      imgP2.Top:=121;
      memScores.Lines.Add(sP2+' rolled a '+IntToStr(iRoll2)+' and is on '+IntToStr(iScore2));
      end;

    if iSCore2=72 then
      begin
      imgP2.Left:=482;
      imgP2.Top:=121;
      memScores.Lines.Add(sP2+' rolled a '+IntToStr(iRoll2)+' and is on '+IntToStr(iScore2));
      end;

    if iSCore2=73 then
      begin
      imgP2.Left:=430;
      imgP2.Top:=121;
      memScores.Lines.Add(sP2+' rolled a '+IntToStr(iRoll2)+' and is on '+IntToStr(iScore2));
      end;

    if iSCore2=74 then
      begin
      iSCore2:=92;       //Ladder
      end;

    if iSCore2=75 then
      begin
      imgP2.Left:=325;
      imgP2.Top:=121;
      memScores.Lines.Add(sP2+' rolled a '+IntToStr(iRoll2)+' and is on '+IntToStr(iScore2));
      end;

    if iSCore2=76 then
      begin
      iSCore2:=58;       //Ladder
      end;

    if iSCore2=77 then
      begin
      imgP2.Left:=219;
      imgP2.Top:=121;
      memScores.Lines.Add(sP2+' rolled a '+IntToStr(iRoll2)+' and is on '+IntToStr(iScore2));
      end;

    if iSCore2=78 then
      begin
      imgP2.Left:=165;
      imgP2.Top:=121;
      memScores.Lines.Add(sP2+' rolled a '+IntToStr(iRoll2)+' and is on '+IntToStr(iScore2));
      end;

    if iSCore2=79 then
      begin
      imgP2.Left:=114;
      imgP2.Top:=121;
      memScores.Lines.Add(sP2+' rolled a '+IntToStr(iRoll2)+' and is on '+IntToStr(iScore2));
      end;

    if iSCore2=80 then
      begin
      imgP2.Left:=60;
      imgP2.Top:=121;
      memScores.Lines.Add(sP2+' rolled a '+IntToStr(iRoll2)+' and is on '+IntToStr(iScore2));
      end;

    if iSCore2=81 then
      begin
      imgP2.Left:=60;
      imgP2.Top:=71;
      memScores.Lines.Add(sP2+' rolled a '+IntToStr(iRoll2)+' and is on '+IntToStr(iScore2));
      end;

    if iSCore2=82 then
      begin
      imgP2.Left:=114;
      imgP2.Top:=71;
      memScores.Lines.Add(sP2+' rolled a '+IntToStr(iRoll2)+' and is on '+IntToStr(iScore2));
      end;

    if iSCore2=83 then
      begin
      imgP2.Left:=165;
      imgP2.Top:=71;
      memScores.Lines.Add(sP2+' rolled a '+IntToStr(iRoll2)+' and is on '+IntToStr(iScore2));
      end;

    if iSCore2=84 then
      begin
      imgP2.Left:=219;
      imgP2.Top:=71;
      memScores.Lines.Add(sP2+' rolled a '+IntToStr(iRoll2)+' and is on '+IntToStr(iScore2));
      end;

    if iSCore2=85 then
      begin
      imgP2.Left:=271;
      imgP2.Top:=71;
      memScores.Lines.Add(sP2+' rolled a '+IntToStr(iRoll2)+' and is on '+IntToStr(iScore2));
      end;

    if iSCore2=86 then
      begin
      imgP2.Left:=325;
      imgP2.Top:=71;
      memScores.Lines.Add(sP2+' rolled a '+IntToStr(iRoll2)+' and is on '+IntToStr(iScore2));
      end;

    if iSCore2=87 then
      begin
      imgP2.Left:=378;
      imgP2.Top:=71;
      memScores.Lines.Add(sP2+' rolled a '+IntToStr(iRoll2)+' and is on '+IntToStr(iScore2));
      end;

    if iSCore2=88 then
      begin
      imgP2.Left:=430;
      imgP2.Top:=71;
      memScores.Lines.Add(sP2+' rolled a '+IntToStr(iRoll2)+' and is on '+IntToStr(iScore2));
      end;

    if iSCore2=89 then
      begin
      iSCore2:=53;        //Snake
      end;

    if iSCore2=90 then
      begin
      imgP2.Left:=535;
      imgP2.Top:=71;
      memScores.Lines.Add(sP2+' rolled a '+IntToStr(iRoll2)+' and is on '+IntToStr(iScore2));
      end;

    if iSCore2=91 then
      begin
      imgP2.Left:=535;
      imgP2.Top:=20;
      memScores.Lines.Add(sP2+' rolled a '+IntToStr(iRoll2)+' and is on '+IntToStr(iScore2));
      end;

    if iSCore2=92 then
      begin
      imgP2.Left:=482;
      imgP2.Top:=20;
      memScores.Lines.Add(sP2+' rolled a '+IntToStr(iRoll2)+' and is on '+IntToStr(iScore2));
      end;

    if iSCore2=93 then
      begin
      imgP2.Left:=430;
      imgP2.Top:=20;
      memScores.Lines.Add(sP2+' rolled a '+IntToStr(iRoll2)+' and is on '+IntToStr(iScore2));
      end;

    if iSCore2=94 then
      begin
      imgP2.Left:=378;
      imgP2.Top:=20;
      memScores.Lines.Add(sP2+' rolled a '+IntToStr(iRoll2)+' and is on '+IntToStr(iScore2));
      end;

    if iSCore2=95 then
      begin
      imgP2.Left:=325;
      imgP2.Top:=20;
      memScores.Lines.Add(sP2+' rolled a '+IntToStr(iRoll2)+' and is on '+IntToStr(iScore2));
      end;

    if iSCore2=96 then
      begin
      imgP2.Left:=271;
      imgP2.Top:=20;
      memScores.Lines.Add(sP2+' rolled a '+IntToStr(iRoll2)+' and is on '+IntToStr(iScore2));
      end;

    if iSCore2=97 then
      begin
      imgP2.Left:=219;
      imgP2.Top:=20;
      memScores.Lines.Add(sP2+' rolled a '+IntToStr(iRoll2)+' and is on '+IntToStr(iScore2));
      end;

    if iSCore2=98 then
      begin
      imgP2.Left:=165;
      imgP2.Top:=20;
      memScores.Lines.Add(sP2+' rolled a '+IntToStr(iRoll2)+' and is on '+IntToStr(iScore2));
      end;

    if iSCore2=99 then
      begin
      iSCore2:=41;       //Snake
      end;


  if iSCore2>=100 then
      begin
      imgP2.Left:=60;
      imgP2.Top:=20;
      memScores.Lines.Add(sP2+' rolled a '+IntToStr(iRoll2)+' and is on '+IntToStr(iScore2));
      ShowMessage(sP2+'! You have beaten the level!');
      btnRoll2.Enabled:=False;
      bmbRestart.Visible:=True;
    end;

      btnRoll1.Enabled:=True;
      btnRoll2.Enabled:=False;

end;



end.
