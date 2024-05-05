unit unit_Pesquisar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons,
  Vcl.WinXCalendars, Vcl.Mask, Vcl.DBCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids;

type
  TFRM_PESQUISAR = class(TForm)
    pn_wallpaper: TPanel;
    lbl_pesquisar: TLabel;
    txt_pesquisar: TEdit;
    tbl_pesquisar: TDBGrid;
    btn_pesquisar: TBitBtn;
    ds_pesquisar: TDataSource;
    img_wallpaper: TImage;
    procedure txt_pesquisarKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure btn_pesquisarClick(Sender: TObject);
    procedure tbl_pesquisarDblClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_PESQUISAR: TFRM_PESQUISAR;

implementation

uses
  unit_Fecha_Sistema, unitDM_Categoria, unit_Mensagem, unit_Mensagem_Confirmacao, unitDM_Usuario, unitDM_Produto, unit_Produto, unitDM_Pesquisa_Geral;

{$R *.dfm}

procedure TFRM_PESQUISAR.btn_pesquisarClick(Sender: TObject);
begin
  if lbl_pesquisar.Caption = 'Pesquisar Categoria' then
    begin
      tbl_pesquisar.DataSource := DM_Categoria.ds_pesquisar_categoria;

      DM_Categoria.pesquisar_categoria.Close;
      DM_Categoria.pesquisar_categoria.ParamByName('Pesquisa_Categoria').AsString := '%' + txt_pesquisar.Text + '%';

      DM_Categoria.pesquisar_categoria.Open;
      tbl_pesquisar.Columns[1].Width := 600;
    end
  else
  if lbl_pesquisar.Caption = 'Pesquisar Usuário' then
    begin
      tbl_pesquisar.DataSource := DM_Usuario.ds_pesquisar_usuario;

      DM_Usuario.pesquisar_usuario.Close;
      DM_Usuario.pesquisar_usuario.ParamByName('Pesquisa_Usuario').AsString := '%' + txt_pesquisar.Text + '%';

      DM_Usuario.pesquisar_usuario.Open;
      tbl_pesquisar.Columns[1].Width := 300;
      tbl_pesquisar.Columns[2].Width := 300;
    end
  else
  if lbl_pesquisar.Caption = 'Pesquisar Produto' then
    begin
      tbl_pesquisar.DataSource := DM_Produto.ds_pesquisar_produto;

      DM_Produto.pesquisar_produto.Close;
      DM_Produto.pesquisar_produto.ParamByName('Pesquisa_Produto').AsString := '%' + txt_pesquisar.Text + '%';

      DM_Produto.pesquisar_produto.Open;
      tbl_pesquisar.Columns[0].Width := 60;
      tbl_pesquisar.Columns[1].Width := 180;
      tbl_pesquisar.Columns[2].Width := 80;
      tbl_pesquisar.Columns[3].Width := 110;
      tbl_pesquisar.Columns[4].Width := 130;
      tbl_pesquisar.Columns[5].Width := 120;
    end;

end;

procedure TFRM_PESQUISAR.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
//  if lbl_pesquisar.Caption = 'Pesquisar Categoria' then
//    begin
//      DM_Categoria.ds_pesquisar_categoria.DataSet.Close;
//    end
//  else
//  if lbl_pesquisar.Caption = 'Pesquisar Usuário' then
//    begin
//      DM_Usuario.ds_pesquisar_usuario.DataSet.Close;
//    end;
//  if lbl_pesquisar.Caption = 'Pesquisar Produto' then
//    begin
//      DM_Produto.ds_pesquisar_produto.DataSet.Close;
//    end;
//
  tbl_pesquisar.DataSource := nil;
end;

procedure TFRM_PESQUISAR.FormCreate(Sender: TObject);
begin
  //ds_pesquisar.DataSet := DM_Pesquisa_Geral.pesquisar;
end;

procedure TFRM_PESQUISAR.FormShow(Sender: TObject);
begin
  txt_pesquisar.Text := '';
  txt_pesquisar.SetFocus;
  btn_pesquisar.Click;
end;

procedure TFRM_PESQUISAR.tbl_pesquisarDblClick(Sender: TObject);
begin
  if lbl_pesquisar.Caption = 'Pesquisar Categoria' then
    begin
      DM_Categoria.categoria.Locate('codcateg', DM_Categoria.pesquisar_categoria.FieldByName('Código').AsInteger, []);
    end
  else
  if lbl_pesquisar.Caption = 'Pesquisar Usuário' then
    begin
      DM_Usuario.usuario.Locate('coduser', DM_Usuario.pesquisar_usuario.FieldByName('Código').AsInteger, []);
    end;
  if lbl_pesquisar.Caption = 'Pesquisar Produto' then
    begin
      DM_Produto.produto.Locate('codprod', DM_Produto.pesquisar_produto.FieldByName('Código').AsInteger, []);
      DM_Produto.produto.Locate('codcateg', DM_Produto.pesquisar_produto.FieldByName('Código Categoria').AsInteger, []);
      FRM_PRODUTO.txt_descricaocateg.Text := DM_Produto.pesquisar_produto.FieldByName('Categoria').AsString;
    end;
    ModalResult := mrOk;
end;

procedure TFRM_PESQUISAR.txt_pesquisarKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    btn_pesquisar.SetFocus;
    btn_pesquisar.Click;
    Key := #0;
  end;
end;

end.
