unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TAboutTheKnight = class(TForm)
    mmo1: TMemo;
    btn1: TButton;
    pb1: TPaintBox;
    tmr1: TTimer;
    tmr2: TTimer;
    mmo2: TMemo;
    btn2: TButton;
    pb2: TPaintBox;
    tmr3: TTimer;
    tmr4: TTimer;
    procedure btn1Click(Sender: TObject);
    procedure tmr1Timer(Sender: TObject);
    procedure tmr2Timer(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tmr3Timer(Sender: TObject);
    procedure tmr4Timer(Sender: TObject);
    procedure FormCreate(Sender: TObject);

  private

    { Private declarations }
  public
    procedure DrawField(NumberLines:Integer;pb:TPaintBox);
    procedure SetKnight(x,y:integer; pb:TPaintBox);
    procedure Step1(x,y:integer; tmr:Ttimer );
    procedure Step2(x,y:integer; tmr:Ttimer );
    procedure ClearField(pb:TPaintBox);
    procedure Example1( tmr:Ttimer );
    procedure Example2( tmr:Ttimer );
    { Public d:  read F write Set;eclarations }
  end;

var
  AboutTheKnight: TAboutTheKnight;

  step:Integer;    // counter for timers



implementation

uses UKnight;

{$R *.dfm}


procedure TAboutTheKnight.btn1Click(Sender: TObject);
begin
  AboutTheKnight.Width:=380;

  if AboutTheKnight.btn1.Caption='Show_knight_movement'
  then
  begin
   step:=1;
   tmr1.Enabled:=True;
   AboutTheKnight.btn1.Caption:='Other_knight_movement' ;
   end
     else
     begin
    if AboutTheKnight.btn1.Caption='Other_knight_movement'
  then
  begin
   step:=1;
   tmr2.Enabled:=True;
   AboutTheKnight.btn1.Caption:='Show_knight_movement';
    end;
  end;


end;

procedure TAboutTheKnight.DrawField(NumberLines: Integer; pb: TPaintBox);
// Draw an empty field with the number of lines NumberLines
var
  LineLength,    // Length of the lines
  i,               // Counter  for cycle
  ColumnNumber,     // Counter for drawing lines
  CellWidth:Integer;    // Widht of the cells
begin
  pb.Canvas.MoveTo(0,0);
  CellWidth:=40;
  LineLength:=CellWidth*NumberLines;
  ColumnNumber:=0;
  for i:= 1 to NumberLines+1 do
  begin
  pb.Canvas.LineTo(LineLength,ColumnNumber*CellWidth);
  inc(ColumnNumber);
  pb.Canvas.MoveTo(0,ColumnNumber*CellWidth);
  end;
   pb.Canvas.MoveTo(0,0);
   ColumnNumber:=0;
   for i:= 1 to NumberLines+1 do
  begin
  pb.Canvas.LineTo(ColumnNumber*CellWidth, LineLength);
  inc(ColumnNumber);
  pb.Canvas.MoveTo(ColumnNumber*CellWidth,0);
  end;

end;



procedure TAboutTheKnight.SetKnight(x,y:integer; pb:TPaintBox);
{ Loads an image from the file and stretches it to fit the size }
var KBitmap: TBitmap;
    KnightWidth,CellWidth:Integer;

begin
 // DrawField (3,pb);
     KnightWidth:=38;
     CellWidth:=40;

  KBitmap := TBitmap.Create;
  KBitmap.LoadFromFile('Knight2.bmp');
   KBitmap.Canvas.StretchDraw(Rect(0,0, KnightWidth,KnightWidth),KBitmap);
   pb.Canvas.StretchDraw(Rect((y-1)*CellWidth+1,(x-1)*CellWidth+1,y*CellWidth ,x*CellWidth),KBitmap) ;
  KBitmap.Free;
end;

procedure TAboutTheKnight.ClearField(pb:TPaintBox);
begin
 pb.Canvas.Brush.Color:=clBtnFace;
 pb.Canvas.FillRect(Rect(0,0,145,216));
end;


procedure TAboutTheKnight.Step1(x, y: integer; tmr:Ttimer );
begin
 case step of
 1:begin
   btn1.Enabled:=False;
   btn2.Enabled:=False;
   ClearField(pb1);
   DrawField(3,pb1);
   SetKnight(x,y,pb1);
   inc(step);
   end;
   2:begin
   ClearField(pb1);
   DrawField(3,pb1);
   SetKnight(x,y+1,pb1);
   inc(step);
   end;
    3:begin
   ClearField(pb1);
   DrawField(3,pb1);
   SetKnight(x,y+2,pb1);
   inc(step);
   end;
    4:begin
   ClearField(pb1);
   DrawField(3,pb1);
   SetKnight(x+1,y+2,pb1);
   Step:=1;
   tmr.Enabled:=False;
   btn1.Enabled:=True;
   btn2.Enabled:=True;
   end;
end;

end;

procedure TAboutTheKnight.Step2(x, y: integer; tmr:Ttimer );
begin
 case step of
 1:begin
   btn1.Enabled:=False;
   btn2.Enabled:=False;
   ClearField(pb1);
   DrawField(3,pb1);
   SetKnight(x,y,pb1);
   inc(step);
   end;
   2:begin
   ClearField(pb1);
   DrawField(3,pb1);
   SetKnight(x+1,y,pb1);
   inc(step);
   end;
    3:begin
   ClearField(pb1);
   DrawField(3,pb1);
   SetKnight(x+2,y,pb1);
   inc(step);
   end;
    4:begin
   ClearField(pb1);
   DrawField(3,pb1);
   SetKnight(x+2,y+1,pb1);
   Step:=1;
   tmr.Enabled:=False;
   btn1.Enabled:=True;
   btn2.Enabled:=True;
   end;
end;

end;

procedure TAboutTheKnight.tmr1Timer(Sender: TObject);
begin
   Step1(1,1,tmr1);
  end;




procedure TAboutTheKnight.tmr2Timer(Sender: TObject);
begin
 Step2(1,1,tmr2);
end;

procedure TAboutTheKnight.btn2Click(Sender: TObject);
begin
   AboutTheKnight.Width:=380;

  if AboutTheKnight.btn2.Caption='Example_of_work'
  then
  begin
   step:=1;
   tmr3.Enabled:=True;
   AboutTheKnight.btn2.Caption:='Enother_branch' ;
   end
   else
   begin
        if AboutTheKnight.btn2.Caption='Enother_branch'
        then
         begin
          step:=1;
          tmr4.Enabled:=True;
          AboutTheKnight.btn2.Caption:='Example_of_work' ;
          end
   end;

   end;

procedure TAboutTheKnight.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 AboutTheKnight.Width:=212;
end;



procedure TAboutTheKnight.Example1( tmr:Ttimer );
begin
 case step of
 1:begin
   btn1.Enabled:=False;
   btn2.Enabled:=False;
   ClearField(pb2);
   DrawField(3,pb2);
   SetKnight(1,1,pb2);
   inc(step);
   end;
   2:begin
   SetKnight(3,2,pb2);
   inc(step);
   end;
    3:begin
   SetKnight(1,3,pb2);
   inc(step);
   end;
      4:begin
   SetKnight(2,1,pb2);
   inc(step);
   end;
      5:begin
   SetKnight(3,3,pb2);
   inc(step);
   end;
      6:begin
   SetKnight(1,2,pb2);
   inc(step);
   end;
      7:begin
   SetKnight(3,1,pb2);
   inc(step);
   end;
    8:begin
   SetKnight(2,3,pb2);
   Step:=1;
   tmr.Enabled:=False;
   btn1.Enabled:=True;
   btn2.Enabled:=True;
   end;
end;

end;

procedure TAboutTheKnight.Example2( tmr:Ttimer );
begin
 case step of
 1:begin
   btn1.Enabled:=False;
   btn2.Enabled:=False;
   ClearField(pb2);
   DrawField(3,pb2);
   SetKnight(1,1,pb2);
   inc(step);
   end;
   2:begin
   SetKnight(2,3,pb2);
   inc(step);
   end;
    3:begin
   SetKnight(3,1,pb2);
   inc(step);
   end;
      4:begin
   SetKnight(1,2,pb2);
   inc(step);
   end;
      5:begin
   SetKnight(3,3,pb2);
   inc(step);
   end;
      6:begin
   SetKnight(2,1,pb2);
   inc(step);
   end;
      7:begin
   SetKnight(1,3,pb2);
   inc(step);
   end;
    8:begin
   SetKnight(3,2,pb2);
   Step:=1;
   tmr.Enabled:=False;
   btn1.Enabled:=True;
   btn2.Enabled:=True;
   end;
end;

end;


procedure TAboutTheKnight.tmr3Timer(Sender: TObject);
begin
Example1(tmr3);
end;

procedure TAboutTheKnight.tmr4Timer(Sender: TObject);
begin
Example2(tmr4);
end;

procedure TAboutTheKnight.FormCreate(Sender: TObject);
begin
step:=1;
end;

end.
