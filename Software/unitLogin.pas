unit unitLogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons;

type
  TFRM_LOGIN = class(TForm)
    pn_wallpaper_direita: TPanel;
    pn_wallpaper_esquerda: TPanel;
    lbl_bem_vindo: TLabel;
    lbl_usuario: TLabel;
    lbl_senha: TLabel;
    txt_nomeuser: TEdit;
    txt_senhauser: TEdit;
    lbl_esqueceu_senha: TLabel;
    btn_entrar: TBitBtn;
    btn_sair: TBitBtn;
    img_user: TImage;
    img_senha: TImage;
    procedure btn_sairClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_LOGIN: TFRM_LOGIN;

implementation

uses
  unit_Fecha_Sistema;

{$R *.dfm}

procedure TFRM_LOGIN.btn_sairClick(Sender: TObject);
begin
  try
    FRM_FECHA_SISTEMA.lbl_mensagem.Caption := 'Deseja realmente sair do sistema?';
    FRM_FECHA_SISTEMA.ShowModal;
  finally

  end;

end;
end.
