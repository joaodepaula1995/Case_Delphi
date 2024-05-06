unit unitDM_Categoria;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait, Data.DB, FireDAC.Comp.Client,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.DataSet;

type
  TDM_Categoria = class(TDataModule)
    conexao: TFDConnection;
    FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink;
    categoria: TFDTable;
    ds_categoria: TDataSource;
    pesquisar_categoria: TFDQuery;
    ds_pesquisar_categoria: TDataSource;
    pesquisa_produto_vinculado: TFDQuery;
    ds_pesquisa_produto_vinculado: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM_Categoria: TDM_Categoria;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
