unit unit_Menu_Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs;

type
  TFRM_MENU_PRINCIPAL = class(TForm)
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_MENU_PRINCIPAL: TFRM_MENU_PRINCIPAL;

implementation

uses
  unit_Fecha_Sistema;

{$R *.dfm}

procedure TFRM_MENU_PRINCIPAL.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  FRM_FECHA_SISTEMA.lbl_mensagem.Caption := 'Deseja realmente sair do sistema?';
  if FRM_FECHA_SISTEMA.ShowModal = mrCancel then
    CanClose := false;
end;

end.
