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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_LOGIN: TFRM_LOGIN;

implementation

{$R *.dfm}

end.
