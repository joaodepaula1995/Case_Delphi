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
    procedure btn_okClick(Sender: TObject);
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

end.
