unit unit_Fecha_Sistema;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons;

type
  TFRM_FECHA_SISTEMA = class(TForm)
    lbl_mensagem: TLabel;
    pn_wallpaper_esquerda: TPanel;
    img_aviso: TImage;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    img_wallpaper: TImage;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_FECHA_SISTEMA: TFRM_FECHA_SISTEMA;

implementation

{$R *.dfm}

procedure TFRM_FECHA_SISTEMA.BitBtn1Click(Sender: TObject);
begin
  self.ModalResult := mrOk;
  Application.Terminate;
end;

procedure TFRM_FECHA_SISTEMA.BitBtn2Click(Sender: TObject);
begin
  self.ModalResult := mrCancel;
  close;
end;

end.
