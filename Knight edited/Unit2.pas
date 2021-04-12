unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Unit1;

type
  TAboutTheProgram = class(TForm)
    mmo1: TMemo;
    btn1: TButton;
    pb1: TPaintBox;
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AboutTheProgram: TAboutTheProgram;



implementation

{$R *.dfm}

procedure TAboutTheProgram.btn1Click(Sender: TObject);
begin
AboutTheKnight.DrawField (5,pb1);
end;

end.
