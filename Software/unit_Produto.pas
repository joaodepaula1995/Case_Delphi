unit unit_Produto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons,
  Vcl.WinXCalendars, Vcl.Mask, Vcl.DBCtrls;

type
  TFRM_PRODUTO = class(TForm)
    pn_wallpaper: TPanel;
    lbl_categoria: TLabel;
    btn_novo: TBitBtn;
    btn_salvar: TBitBtn;
    btn_pesquisar: TBitBtn;
    btn_deletar: TBitBtn;
    lbl_codigo: TLabel;
    lbl_nomeprod: TLabel;
    txt_nomeprod: TDBEdit;
    txt_codprod: TDBEdit;
    lbl_descricaocateg: TLabel;
    txt_descricaocateg: TDBEdit;
    btn_pesquisa_categoria: TBitBtn;
    txt_preco: TDBEdit;
    lbl_preco: TLabel;
    txt_ultpreco: TDBEdit;
    lbl_ultimo_preco: TLabel;
    txt_datacadastro: TDBEdit;
    lbl_datacadastro: TLabel;
    lbl_dataalteracao: TLabel;
    txt_dataalteracao: TDBEdit;
    btn_cadastra_categoria: TBitBtn;
    txt_codcateg: TDBEdit;
    procedure btn_cadastra_categoriaClick(Sender: TObject);
    procedure btn_novoClick(Sender: TObject);
    procedure btn_salvarClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormShow(Sender: TObject);
    procedure txt_nomeprodChange(Sender: TObject);
    procedure btn_deletarClick(Sender: TObject);
    procedure btn_pesquisa_categoriaClick(Sender: TObject);
    procedure txt_descricaocategClick(Sender: TObject);
    procedure txt_descricaocategEnter(Sender: TObject);
    procedure txt_descricaocategKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_PRODUTO: TFRM_PRODUTO;

implementation

uses
  unit_Fecha_Sistema, unitDM_Categoria, unit_Mensagem, unit_Mensagem_Confirmacao, unit_Pesquisar, unit_Categoria, unitDM_Produto;

{$R *.dfm}


//Falta ajustar a pesquisa dos Produtos
//Falta ajustar o modo de salvar, que n�o esta pegando a informa��o da tabela categoria

procedure Pesquisa_Categoria;
begin
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


procedure TFRM_PRODUTO.btn_cadastra_categoriaClick(Sender: TObject);
begin
  FRM_CATEGORIA := TFRM_CATEGORIA.Create(Self);
  FRM_CATEGORIA.ShowModal;
end;

procedure TFRM_PRODUTO.btn_deletarClick(Sender: TObject);
begin
  if txt_codprod.Text <= '0' then
    begin
      FRM_MENSAGEM.lbl_mensagem.Caption := 'Localize o Produto para deletar!';
      FRM_MENSAGEM.ShowModal;
      btn_pesquisar.SetFocus;
    end
    else
    begin
      try
        FRM_MENSAGEM_CONFIRMACAO.lbl_mensagem.Caption := 'Deseja realmente deletar o Produto?';
        FRM_MENSAGEM_CONFIRMACAO.ShowModal;
      finally
        if FRM_MENSAGEM_CONFIRMACAO.CONFIRMACAO = 'S' then
        begin
          DM_Produto.produto.Delete;
          FRM_MENSAGEM.lbl_mensagem.Caption := 'Produto deletado com sucesso!';
          FRM_MENSAGEM.ShowModal;
          DM_Produto.produto.Append;
          DM_Categoria.categoria.Append;
          txt_nomeprod.SetFocus;
        end;
      end;
    end;
end;

procedure TFRM_PRODUTO.btn_novoClick(Sender: TObject);
begin
  if txt_codprod.Text <= '0' then

  else
  DM_Produto.produto.Append;
  DM_Categoria.categoria.Append;
end;

procedure TFRM_PRODUTO.btn_pesquisa_categoriaClick(Sender: TObject);
begin
  Pesquisa_Categoria;
end;

procedure TFRM_PRODUTO.btn_salvarClick(Sender: TObject);
begin
  if txt_nomeprod.Text = '' then
    begin
      FRM_MENSAGEM.lbl_mensagem.Caption := 'Informe o Nome do Produto!';
      FRM_MENSAGEM.ShowModal;
      txt_nomeprod.SetFocus;
    end
  else
  if txt_descricaocateg.Text = '' then
    begin
      FRM_MENSAGEM.lbl_mensagem.Caption := 'Informe a Categoria!';
      FRM_MENSAGEM.ShowModal;
      txt_descricaocateg.SetFocus;
    end
  else
   if txt_codprod.Text <= '0' then
    begin
      DM_Produto.produto.Post;
      FRM_MENSAGEM.lbl_mensagem.Caption := 'Produto salvo com sucesso!';
      FRM_MENSAGEM.ShowModal;
      txt_nomeprod.SetFocus;
      DM_Produto.produto.Append;
      DM_Categoria.categoria.Append;
    end
    else
    begin
      DM_Produto.produto.Edit;
      FRM_MENSAGEM.lbl_mensagem.Caption := 'Produto editado com sucesso!';
      FRM_MENSAGEM.ShowModal;
      DM_Produto.produto.Post;
      txt_descricaocateg.SetFocus;
      DM_Produto.produto.Append;
      DM_Categoria.categoria.Append;
    end;
end;

procedure TFRM_PRODUTO.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  close;
end;

procedure TFRM_PRODUTO.FormShow(Sender: TObject);
begin
  txt_nomeprod.SetFocus;
  DM_Produto.produto.Append;
  DM_Categoria.categoria.Append;
//  txt_codcateg.Text := '';
//  txt_descricaocateg.Text := '';
end;

procedure TFRM_PRODUTO.txt_descricaocategClick(Sender: TObject);
begin
  Pesquisa_Categoria;
end;

procedure TFRM_PRODUTO.txt_descricaocategEnter(Sender: TObject);
begin
  Pesquisa_Categoria;
end;

procedure TFRM_PRODUTO.txt_descricaocategKeyPress(Sender: TObject;
  var Key: Char);
begin
  Pesquisa_Categoria;
end;

procedure TFRM_PRODUTO.txt_nomeprodChange(Sender: TObject);
begin
  var
    Limitar_Caracters_no_Campo: Integer;
  begin
    Limitar_Caracters_no_Campo := 100;
  end;
end;

end.
