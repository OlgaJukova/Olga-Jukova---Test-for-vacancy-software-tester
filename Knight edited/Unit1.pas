unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TAboutTheKnight = class(TForm)
    mmo1: TMemo;
    btn1: TButton;
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AboutTheKnight: TAboutTheKnight;

implementation

uses UKnight;

{$R *.dfm}


procedure TAboutTheKnight.btn1Click(Sender: TObject);
begin
  
Frm_Knight.Btn_GoClick(nil) ;
Frm_Knight.Btn_PlayClick(nil);
end;

end.
