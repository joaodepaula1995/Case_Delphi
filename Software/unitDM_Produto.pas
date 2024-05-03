unit unitDM_Produto;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TDM_Produto = class(TDataModule)
    conexao: TFDConnection;
    FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink;
    produto_OLD: TFDTable;
    ds_produto: TDataSource;
    produto_OLDcodprod: TFDAutoIncField;
    produto_OLDnomeprod: TStringField;
    produto_OLDcodcateg: TIntegerField;
    produto_OLDpreco: TFloatField;
    produto_OLDultpreco: TFloatField;
    produto_OLDdatacadastro: TDateTimeField;
    produto_OLDdataalteracao: TDateTimeField;
    pesquisar_produto: TFDQuery;
    ds_pesquisar_produto: TDataSource;
    produto: TFDQuery;
    produtocodprod: TFDAutoIncField;
    produtonomeprod: TStringField;
    produtocodcateg: TIntegerField;
    produtopreco: TFloatField;
    produtoultpreco: TFloatField;
    produtodatacadastro: TDateTimeField;
    produtodataalteracao: TDateTimeField;
    produtoCategoria: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM_Produto: TDM_Produto;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
