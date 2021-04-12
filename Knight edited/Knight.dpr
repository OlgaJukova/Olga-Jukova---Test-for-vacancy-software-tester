program Knight;

uses
  Forms,
  UKnight in 'UKnight.pas' {Frm_Knight},
  UOptions in 'UOptions.pas' {Frm_Options},
  UAbout in 'UAbout.pas' {Frm_About},
  Unit1 in 'Unit1.pas' {AboutTheKnight};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TFrm_Knight, Frm_Knight);
  Application.CreateForm(TFrm_Options, Frm_Options);
  Application.CreateForm(TFrm_About, Frm_About);
  Application.CreateForm(TAboutTheKnight, AboutTheKnight);
  Application.Run;
end.
