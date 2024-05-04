unit unit_Produto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons,
  Vcl.WinXCalendars, Vcl.Mask, Vcl.DBCtrls;

type
  TFRM_PRODUTO = class(TForm)
    pn_wallpaper: TPanel;
    lbl_produto: TLabel;
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
    procedure btn_cadastra_categoriaClick(Sender: TObject);
    procedure btn_novoClick(Sender: TObject);
    procedure btn_salvarClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormShow(Sender: TObject);
    procedure txt_nomeprodChange(Sender: TObject);
    procedure btn_deletarClick(Sender: TObject);
    procedure btn_pesquisa_categoriaClick(Sender: TObject);
    procedure txt_nomeprodKeyPress(Sender: TObject; var Key: Char);
    procedure txt_precoKeyPress(Sender: TObject; var Key: Char);
    procedure btn_pesquisarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_PRODUTO: TFRM_PRODUTO;
  DataAlteracao: TDateTime;

implementation

uses
  unit_Fecha_Sistema, unitDM_Categoria, unit_Mensagem, unit_Mensagem_Confirmacao, unit_Pesquisar, unit_Categoria, unitDM_Produto;

{$R *.dfm}

procedure Novo;
begin
  FRM_PRODUTO.txt_nomeprod.SetFocus;
  DM_Produto.produto.Append;
  DM_Categoria.categoria.Append;
  FRM_PRODUTO.txt_descricaocateg.Text := '';
end;

procedure Pesquisa_Categoria;
begin
  FRM_PESQUISAR.lbl_pesquisar.Caption := 'Pesquisar Categoria';
  DM_Categoria.pesquisar_categoria.Close;
  DM_Categoria.pesquisar_categoria.SQL.Clear;
  DM_Categoria.pesquisar_categoria.SQL.Add( 'SELECT '
                                          + 'c.codcateg AS Código, '
                                          + 'c.descricaocateg AS Descrição '
                                          + 'FROM categoria c '
                                          + 'WHERE c.descricaocateg LIKE :Pesquisa_Categoria '
                                          + 'ORDER BY c.descricaocateg;');
  FRM_PESQUISAR.ShowModal;
  DM_Produto.produto.Edit;
  DM_Produto.produtocodcateg.AsInteger :=  DM_Categoria.pesquisar_categoria.FieldByName('Código').AsInteger;
  FRM_PRODUTO.txt_descricaocateg.Text := DM_Categoria.pesquisar_categoria.FieldByName('Descrição').AsString;
  //FRM_PRODUTO.txt_codcateg_produto.Text := FRM_PRODUTO.txt_codcateg.Text;
  FRM_PRODUTO.txt_preco.SetFocus;
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
          Novo;
        end;
      end;
    end;
end;

procedure TFRM_PRODUTO.btn_novoClick(Sender: TObject);
begin
  if txt_codprod.Text <= '0' then

  else
  novo;
end;

procedure TFRM_PRODUTO.btn_pesquisarClick(Sender: TObject);
begin
  FRM_PESQUISAR.lbl_pesquisar.Caption := 'Pesquisar Produto';
  DM_Produto.pesquisar_produto.Close;
  DM_Produto.pesquisar_produto.SQL.Clear;
  DM_Produto.pesquisar_produto.SQL.Add( 'SELECT '
                                          + 'p.codprod as Código, '
                                          + 'p.nomeprod as Produto, '
                                          + 'p.preco as Preço, '
                                          + 'c.codcateg as "Código Categoria", '
                                          + 'c.descricaocateg as Categoria, '
                                          + 'p.dataalteracao as "Ultima Alteração" '
                                          + 'FROM produto p '
                                          + 'INNER JOIN categoria c '
                                          + 'ON p.codcateg = c.codcateg '
                                          + 'WHERE p.nomeprod LIKE :Pesquisa_Produto '
                                          + 'ORDER BY p.nomeprod;');
  FRM_PESQUISAR.ShowModal;
  if FRM_PESQUISAR.ModalResult = mrOk then
    begin
      DM_Produto.produto.Close;
      DM_Produto.produto.Params[0].AsInteger := DM_Produto.pesquisar_produto.FieldByName('Código').AsInteger;
      DM_Produto.produto.Open;
      FRM_PESQUISAR.close;
    end;
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
      Novo;
    end
    else
    begin
      DM_Produto.produto.Edit;
      DataAlteracao := Now;
      DM_Produto.produto.FieldByName('dataalteracao').AsDateTime := DataAlteracao;
      if (DM_Produto.produto.FieldByName('preco').AsFloat <> DM_Produto.produto.FieldByName('ultpreco').AsFloat) then
        begin
          DM_Produto.produto.FieldByName('ultpreco').AsFloat := DM_Produto.produto.FieldByName('preco').OldValue;
        end;
      DM_Produto.produto.Post;
      FRM_MENSAGEM.lbl_mensagem.Caption := 'Produto editado com sucesso!';
      FRM_MENSAGEM.ShowModal;
      Novo;
    end;
end;

procedure TFRM_PRODUTO.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  close;
end;

procedure TFRM_PRODUTO.FormShow(Sender: TObject);
begin
  Novo;
end;

procedure TFRM_PRODUTO.txt_nomeprodChange(Sender: TObject);
begin
  var
    Limitar_Caracters_no_Campo: Integer;
  begin
    Limitar_Caracters_no_Campo := 100;
  end;
end;

procedure TFRM_PRODUTO.txt_nomeprodKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    //txt_descricaocateg.SetFocus;
    btn_pesquisa_categoria.Click;
    Key := #0;
  end;
end;

procedure TFRM_PRODUTO.txt_precoKeyPress(Sender: TObject; var Key: Char);
begin
    if Key = #13 then
  begin
    btn_salvar.SetFocus;
    Key := #0;
  end;
end;

end.
