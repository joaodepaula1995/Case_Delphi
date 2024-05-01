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
    BitBtn2: TBitBtn;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_MENSAGEM: TFRM_MENSAGEM;

implementation

{$R *.dfm}

procedure TFRM_MENSAGEM.BitBtn1Click(Sender: TObject);
begin
  self.ModalResult := mrOk;
  Application.Terminate;
end;

procedure TFRM_MENSAGEM.BitBtn2Click(Sender: TObject);
begin
  close;
end;

end.
