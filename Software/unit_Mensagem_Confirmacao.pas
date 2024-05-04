unit unit_Mensagem_Confirmacao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons;

type
  TFRM_MENSAGEM_CONFIRMACAO = class(TForm)
    lbl_mensagem: TLabel;
    pn_wallpaper_esquerda: TPanel;
    img_aviso: TImage;
    BitBtn1: TBitBtn;
    BitBtn3: TBitBtn;
    img_wallpaper: TImage;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
  CONFIRMACAO: string;
  end;

var
  FRM_MENSAGEM_CONFIRMACAO: TFRM_MENSAGEM_CONFIRMACAO;

implementation

{$R *.dfm}

procedure TFRM_MENSAGEM_CONFIRMACAO.BitBtn1Click(Sender: TObject);
begin
  self.ModalResult := mrOk;
  CONFIRMACAO := 'S';
end;

procedure TFRM_MENSAGEM_CONFIRMACAO.BitBtn2Click(Sender: TObject);
begin
  self.ModalResult := mrCancel;
  CONFIRMACAO := 'N';
  close;
end;

end.
