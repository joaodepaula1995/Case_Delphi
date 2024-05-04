unit unit_Mensagem;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons;

type
  TFRM_MENSAGEM = class(TForm)
    lbl_mensagem: TLabel;
    pn_wallpaper_esquerda: TPanel;
    img_aviso: TImage;
    btn_ok: TBitBtn;
    img_confirmacao: TImage;
    procedure btn_okClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_MENSAGEM: TFRM_MENSAGEM;

implementation

{$R *.dfm}

procedure TFRM_MENSAGEM.btn_okClick(Sender: TObject);
begin
  close;
end;

procedure TFRM_MENSAGEM.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  img_aviso.Visible := false;
  img_confirmacao.Visible := false;
end;

end.
