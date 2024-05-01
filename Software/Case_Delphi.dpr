program Case_Delphi;

uses
  Vcl.Forms,
  unit_Login in 'unit_Login.pas' {FRM_LOGIN},
  unit_Fecha_Sistema in 'unit_Fecha_Sistema.pas' {FRM_FECHA_SISTEMA},
  unitDM_Login in 'unitDM_Login.pas' {DM_Login: TDataModule},
  unitSQL_Login in 'unitSQL_Login.pas',
  unit_Menu_Principal in 'unit_Menu_Principal.pas' {FRM_MENU_PRINCIPAL},
  unitDM_Categoria in 'unitDM_Categoria.pas' {DM_Categoria: TDataModule},
  unit_Categoria in 'unit_Categoria.pas' {FRM_CATEGORIA},
  unit_Mensagem in 'unit_Mensagem.pas' {FRM_MENSAGEM},
  unit_Mensagem_Confirmacao in 'unit_Mensagem_Confirmacao.pas' {FRM_MENSAGEM_CONFIRMACAO},
  unit_Pesquisar in 'unit_Pesquisar.pas' {FRM_PESQUISAR};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFRM_LOGIN, FRM_LOGIN);
  Application.CreateForm(TFRM_FECHA_SISTEMA, FRM_FECHA_SISTEMA);
  Application.CreateForm(TFRM_MENSAGEM, FRM_MENSAGEM);
  Application.CreateForm(TDM_Login, DM_Login);
  Application.CreateForm(TFRM_MENU_PRINCIPAL, FRM_MENU_PRINCIPAL);
  Application.CreateForm(TDM_Categoria, DM_Categoria);
  Application.CreateForm(TFRM_CATEGORIA, FRM_CATEGORIA);
  Application.CreateForm(TFRM_MENSAGEM, FRM_MENSAGEM);
  Application.CreateForm(TFRM_MENSAGEM_CONFIRMACAO, FRM_MENSAGEM_CONFIRMACAO);
  Application.CreateForm(TFRM_PESQUISAR, FRM_PESQUISAR);
  Application.CreateForm(TFRM_PESQUISAR, FRM_PESQUISAR);
  Application.Run;
end.
