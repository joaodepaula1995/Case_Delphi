unit unit_Usuario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons,
  Vcl.WinXCalendars, Vcl.Mask, Vcl.DBCtrls;

type
  TFRM_USUARIO = class(TForm)
    pn_wallpaper: TPanel;
    lbl_usuario: TLabel;
    btn_novo: TBitBtn;
    btn_salvar: TBitBtn;
    btn_pesquisar: TBitBtn;
    btn_deletar: TBitBtn;
    lbl_coduser: TLabel;
    lbl_nomeuser: TLabel;
    txt_nomeuser: TDBEdit;
    txt_coduser: TDBEdit;
    txt_senhauser: TDBEdit;
    lbl_senhauser: TLabel;
    txt_emailuser: TDBEdit;
    lbl_emailuser: TLabel;
    img_wallpaper: TImage;
    procedure txt_nomeuserKeyPress(Sender: TObject; var Key: Char);
    procedure txt_senhauserKeyPress(Sender: TObject; var Key: Char);
    procedure txt_emailuserKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure btn_novoClick(Sender: TObject);
    procedure btn_salvarClick(Sender: TObject);
    procedure btn_deletarClick(Sender: TObject);
    procedure txt_nomeuserChange(Sender: TObject);
    procedure txt_senhauserChange(Sender: TObject);
    procedure txt_emailuserChange(Sender: TObject);
    procedure btn_pesquisarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_USUARIO: TFRM_USUARIO;

implementation

uses
  unit_Fecha_Sistema, unitDM_Categoria, unit_Mensagem, unit_Mensagem_Confirmacao, unit_Pesquisar, unit_Categoria, unitDM_Produto, unitDM_Usuario;

{$R *.dfm}


procedure TFRM_USUARIO.btn_deletarClick(Sender: TObject);
begin
  if txt_coduser.Text <= '0' then
    begin
      FRM_MENSAGEM.lbl_mensagem.Caption := 'Localize o Usu�rio para deletar!';
      FRM_MENSAGEM.img_aviso.Visible := True;
      FRM_MENSAGEM.ShowModal;
      btn_pesquisar.SetFocus;
    end
    else
    if txt_coduser.Text = '1' then
    begin
      FRM_MENSAGEM.lbl_mensagem.Caption := 'Usu�rio padr�o n�o pode ser exclu�do!';
      FRM_MENSAGEM.img_aviso.Visible := True;
      FRM_MENSAGEM.ShowModal;
      btn_pesquisar.SetFocus;
    end
    else
    begin
      try
        FRM_MENSAGEM_CONFIRMACAO.lbl_mensagem.Caption := 'Deseja realmente deletar o Usu�rio?';
        FRM_MENSAGEM_CONFIRMACAO.ShowModal;
      finally
        if FRM_MENSAGEM_CONFIRMACAO.CONFIRMACAO = 'S' then
        begin
          DM_Usuario.usuario.Delete;
          FRM_MENSAGEM.lbl_mensagem.Caption := 'Usu�rio deletado com sucesso!';
          FRM_MENSAGEM.img_confirmacao.Visible := true;
          FRM_MENSAGEM.ShowModal;
          DM_Usuario.usuario.Append;
          txt_nomeuser.SetFocus;
        end;
      end;
    end;
end;

procedure TFRM_USUARIO.btn_novoClick(Sender: TObject);
begin
  if txt_coduser.Text <= '0' then

  else
  DM_Usuario.usuario.Append;
end;

procedure TFRM_USUARIO.btn_pesquisarClick(Sender: TObject);
begin
  DM_Usuario.usuario.Cancel;
  FRM_PESQUISAR.lbl_pesquisar.Caption := 'Pesquisar Usu�rio';
  DM_Usuario.pesquisar_usuario.Close;
  DM_Usuario.pesquisar_usuario.SQL.Clear;
  DM_Usuario.pesquisar_usuario.SQL.Add( 'SELECT '
                                      + 'u.coduser as C�digo, '
                                      + 'u.nomeuser as Usu�rio, '
                                      + 'u.emailuser as Email '
                                      + 'FROM usuario u '
                                      + 'WHERE u.nomeuser LIKE :Pesquisa_Usuario '
                                      + 'ORDER BY u.nomeuser;');
  FRM_PESQUISAR.ShowModal;
end;

procedure TFRM_USUARIO.btn_salvarClick(Sender: TObject);
begin
  if txt_nomeuser.Text = '' then
    begin
      FRM_MENSAGEM.lbl_mensagem.Caption := 'Informe o Usu�rio!';
      FRM_MENSAGEM.img_aviso.Visible := true;
      FRM_MENSAGEM.ShowModal;
      txt_nomeuser.SetFocus;
    end
  else
  if txt_senhauser.Text = '' then
    begin
      FRM_MENSAGEM.lbl_mensagem.Caption := 'Informe a Senha!';
      FRM_MENSAGEM.img_aviso.Visible := true;
      FRM_MENSAGEM.ShowModal;
      txt_senhauser.SetFocus;
    end
  else
  if txt_emailuser.Text = '' then
    begin
      FRM_MENSAGEM.lbl_mensagem.Caption := 'Informe o E-Mail!';
      FRM_MENSAGEM.img_aviso.Visible := true;
      FRM_MENSAGEM.ShowModal;
      txt_emailuser.SetFocus;
    end
  else
   if txt_coduser.Text = '1' then
    begin
      FRM_MENSAGEM.lbl_mensagem.Caption := 'Usu�rio padr�o n�o pode ser editado!';
      FRM_MENSAGEM.img_aviso.Visible := True;
      FRM_MENSAGEM.ShowModal;
      btn_pesquisar.SetFocus;
    end
    else
   if txt_coduser.Text <= '0' then
    begin
      DM_Usuario.usuario.Post;
      FRM_MENSAGEM.lbl_mensagem.Caption := 'Usu�rio salvo com sucesso!';
      FRM_MENSAGEM.img_confirmacao.Visible := true;
      FRM_MENSAGEM.ShowModal;
      txt_nomeuser.SetFocus;
      DM_Usuario.usuario.Append;
    end
    else
    begin
      DM_Usuario.usuario.Edit;
      FRM_MENSAGEM.lbl_mensagem.Caption := 'Usu�rio editado com sucesso!';
      FRM_MENSAGEM.img_confirmacao.Visible := true;
      FRM_MENSAGEM.ShowModal;
      DM_Usuario.usuario.Post;
      txt_nomeuser.SetFocus;
      DM_Usuario.usuario.Append;
    end;
end;

procedure TFRM_USUARIO.FormShow(Sender: TObject);
begin
  DM_Usuario.usuario.Append;
  txt_nomeuser.SetFocus;
end;

procedure TFRM_USUARIO.txt_emailuserChange(Sender: TObject);
begin
var
  Limitar_Caracters_no_Campo: Integer;
begin
  Limitar_Caracters_no_Campo := 255;
end;
end;

procedure TFRM_USUARIO.txt_emailuserKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    btn_salvar.SetFocus;
    Key := #0;
  end;
end;

procedure TFRM_USUARIO.txt_nomeuserChange(Sender: TObject);
var
  Limitar_Caracters_no_Campo: Integer;
begin
  Limitar_Caracters_no_Campo := 100;
end;
procedure TFRM_USUARIO.txt_nomeuserKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    txt_senhauser.SetFocus;
    Key := #0;
  end;
end;

procedure TFRM_USUARIO.txt_senhauserChange(Sender: TObject);
var
  Limitar_Caracters_no_Campo: Integer;
begin
  Limitar_Caracters_no_Campo := 100;
end;

procedure TFRM_USUARIO.txt_senhauserKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    txt_emailuser.SetFocus;
    Key := #0;
  end;
end;

end.
