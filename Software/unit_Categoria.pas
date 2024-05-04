unit unit_Categoria;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons,
  Vcl.WinXCalendars, Vcl.Mask, Vcl.DBCtrls;

type
  TFRM_CATEGORIA = class(TForm)
    pn_wallpaper: TPanel;
    lbl_categoria: TLabel;
    btn_novo: TBitBtn;
    btn_salvar: TBitBtn;
    btn_pesquisar: TBitBtn;
    btn_deletar: TBitBtn;
    lbl_codigo: TLabel;
    lbl_descricao: TLabel;
    txt_descricaocateg: TDBEdit;
    txt_codcateg: TDBEdit;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure txt_descricaocategKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure btn_novoClick(Sender: TObject);
    procedure btn_salvarClick(Sender: TObject);
    procedure btn_deletarClick(Sender: TObject);
    procedure btn_pesquisarClick(Sender: TObject);
    procedure txt_descricaocategChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_CATEGORIA: TFRM_CATEGORIA;

implementation

uses
  unit_Fecha_Sistema, unitDM_Categoria, unit_Mensagem, unit_Mensagem_Confirmacao, unit_Pesquisar;

{$R *.dfm}

procedure TFRM_CATEGORIA.btn_deletarClick(Sender: TObject);
begin
  if txt_codcateg.Text <= '0' then
    begin
      FRM_MENSAGEM.lbl_mensagem.Caption := 'Localize a Categoria para deletar!';
      FRM_MENSAGEM.img_aviso.Visible := true;
      FRM_MENSAGEM.ShowModal;
      btn_pesquisar.SetFocus;
    end
    else
    begin
      try
        FRM_MENSAGEM_CONFIRMACAO.lbl_mensagem.Caption := 'Deseja realmente deletar a categoria?';
        FRM_MENSAGEM_CONFIRMACAO.ShowModal;
      finally
        if FRM_MENSAGEM_CONFIRMACAO.CONFIRMACAO = 'S' then
        begin
          DM_Categoria.categoria.Delete;
          FRM_MENSAGEM.lbl_mensagem.Caption := 'Categoria deletada com sucesso!';
          FRM_MENSAGEM.img_confirmacao.Visible := true;
          FRM_MENSAGEM.ShowModal;
          DM_Categoria.categoria.Append;
          txt_descricaocateg.SetFocus;
        end;
      end;
    end;
end;

procedure TFRM_CATEGORIA.btn_novoClick(Sender: TObject);
begin
  if txt_codcateg.Text <= '0' then

  else
  DM_Categoria.categoria.Append;
end;

procedure TFRM_CATEGORIA.btn_pesquisarClick(Sender: TObject);
begin
  DM_Categoria.categoria.Cancel;
  FRM_PESQUISAR.lbl_pesquisar.Caption := 'Pesquisar Categoria';
  DM_Categoria.pesquisar_categoria.Close;
  DM_Categoria.pesquisar_categoria.SQL.Clear;
  DM_Categoria.pesquisar_categoria.SQL.Add( 'SELECT '
                                          + 'codcateg AS C�digo, '
                                          + 'descricaocateg AS Descri��o '
                                          + 'FROM categoria c '
                                          + 'WHERE c.descricaocateg LIKE :Pesquisa_Categoria '
                                          + 'ORDER BY c.descricaocateg;');
  FRM_PESQUISAR.ShowModal;
end;

procedure TFRM_CATEGORIA.btn_salvarClick(Sender: TObject);
begin
  if txt_descricaocateg.Text = '' then
    begin
      FRM_MENSAGEM.lbl_mensagem.Caption := 'Informe a Descri��o!';
      FRM_MENSAGEM.img_aviso.Visible := true;
      FRM_MENSAGEM.ShowModal;
      txt_descricaocateg.SetFocus;
    end
    else
    if txt_codcateg.Text <= '0' then
    begin
      DM_Categoria.categoria.Post;
      FRM_MENSAGEM.lbl_mensagem.Caption := 'Categoria salva com sucesso!';
      FRM_MENSAGEM.img_confirmacao.Visible := true;
      FRM_MENSAGEM.ShowModal;
      txt_descricaocateg.SetFocus;
      DM_Categoria.categoria.Append;
    end
    else
    begin
      DM_Categoria.categoria.Edit;
      FRM_MENSAGEM.lbl_mensagem.Caption := 'Categoria editada com sucesso!';
      FRM_MENSAGEM.img_confirmacao.Visible := true;
      FRM_MENSAGEM.ShowModal;
      DM_Categoria.categoria.Post;
      txt_descricaocateg.SetFocus;
      DM_Categoria.categoria.Append;
    end;
end;

procedure TFRM_CATEGORIA.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  close;
end;

procedure TFRM_CATEGORIA.FormShow(Sender: TObject);
begin
  txt_descricaocateg.SetFocus;
  DM_Categoria.categoria.Append;
end;

procedure TFRM_CATEGORIA.txt_descricaocategChange(Sender: TObject);
var
  Limitar_Caracters_no_Campo: Integer;
begin
  Limitar_Caracters_no_Campo := 100;
end;

procedure TFRM_CATEGORIA.txt_descricaocategKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
  begin
    btn_salvar.SetFocus;
    btn_salvar.Click;
    Key := #0;
  end;
end;

end.
