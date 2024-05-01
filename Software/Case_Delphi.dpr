program Case_Delphi;

uses
  Vcl.Forms,
  unit_Login in 'unit_Login.pas' {FRM_LOGIN},
  unit_Fecha_Sistema in 'unit_Fecha_Sistema.pas' {FRM_FECHA_SISTEMA},
  unit_Mensagem in 'unit_Mensagem.pas' {FRM_MENSAGEM},
  unitDM_Login in 'unitDM_Login.pas' {DM_Login: TDataModule},
  unitSQL_Login in 'unitSQL_Login.pas',
  unit_Menu_Principal in 'unit_Menu_Principal.pas' {FRM_MENU_PRINCIPAL};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFRM_LOGIN, FRM_LOGIN);
  Application.CreateForm(TFRM_FECHA_SISTEMA, FRM_FECHA_SISTEMA);
  Application.CreateForm(TFRM_MENSAGEM, FRM_MENSAGEM);
  Application.CreateForm(TDM_Login, DM_Login);
  Application.CreateForm(TFRM_MENU_PRINCIPAL, FRM_MENU_PRINCIPAL);
  Application.Run;
end.
