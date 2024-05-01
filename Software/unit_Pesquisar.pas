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
    procedure txt_pesquisarKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure btn_pesquisarClick(Sender: TObject);
    procedure tbl_pesquisarDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_PESQUISAR: TFRM_PESQUISAR;

implementation

uses
  unit_Fecha_Sistema, unitDM_Categoria, unit_Mensagem, unit_Mensagem_Confirmacao;

{$R *.dfm}

procedure TFRM_PESQUISAR.btn_pesquisarClick(Sender: TObject);
begin
  tbl_pesquisar.Refresh;
  DM_Categoria.pesquisar_categoria.Close;
  DM_Categoria.pesquisar_categoria.ParamByName('Pesquisa_Categoria').AsString := '%' + txt_pesquisar.Text + '%';
  tbl_pesquisar.DataSource := DM_Categoria.ds_pesquisar_categoria;
  DM_Categoria.pesquisar_categoria.Open;
  tbl_pesquisar.Columns[1].Width := 600;
end;

procedure TFRM_PESQUISAR.FormShow(Sender: TObject);
begin
  txt_pesquisar.Text := '';
  txt_pesquisar.SetFocus;
end;

procedure TFRM_PESQUISAR.tbl_pesquisarDblClick(Sender: TObject);
begin
  DM_Categoria.categoria.Locate('codcateg', DM_Categoria.pesquisar_categoria.FieldByName('Código').AsInteger, []);
  close;
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
