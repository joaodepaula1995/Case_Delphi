program Case_Delphi;

uses
  Vcl.Forms,
  unitLogin in 'unitLogin.pas' {FRM_LOGIN};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFRM_LOGIN, FRM_LOGIN);
  Application.Run;
end.
