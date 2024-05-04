unit unit_Menu_Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons,
  Vcl.WinXCalendars, unit_Categoria;

type
  TFRM_MENU_PRINCIPAL = class(TForm)
    pn_wallpaper: TPanel;
    lbl_menu_principal: TLabel;
    lbl_usuario_logado: TLabel;
    tmr_hora: TTimer;
    lbl_hora: TLabel;
    lbl_dia_semana: TLabel;
    btn_categorias: TImage;
    btn_produtos: TImage;
    btn_usuario: TImage;
    btn_relatorio: TImage;
    btn_alteracao_produtos: TImage;
    CalendarView: TCalendarView;
    btn_sair_menu: TImage;
    img_wallpaper: TImage;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure tmr_horaTimer(Sender: TObject);
    procedure btn_sair_menuClick(Sender: TObject);
    procedure btn_categoriasClick(Sender: TObject);
    procedure btn_produtosClick(Sender: TObject);
    procedure btn_usuarioClick(Sender: TObject);
    procedure btn_alteracao_produtosClick(Sender: TObject);
    procedure btn_relatorioClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_MENU_PRINCIPAL: TFRM_MENU_PRINCIPAL;

implementation

uses
  unit_Fecha_Sistema, unit_Produto, unit_Usuario, unit_Alteracao_Produtos, unit_Relatorio_Produtos, unitDM_Produto, unit_Mensagem_Confirmacao;

{$R *.dfm}

procedure TFRM_MENU_PRINCIPAL.btn_alteracao_produtosClick(Sender: TObject);
begin
  FRM_ALTERACAO_PRODUTOS := TFRM_ALTERACAO_PRODUTOS.Create(Self);
  FRM_ALTERACAO_PRODUTOS.ShowModal;
end;

procedure TFRM_MENU_PRINCIPAL.btn_categoriasClick(Sender: TObject);
begin
  FRM_CATEGORIA := TFRM_CATEGORIA.Create(Self);
  FRM_CATEGORIA.ShowModal;
end;

procedure TFRM_MENU_PRINCIPAL.btn_produtosClick(Sender: TObject);
begin
  FRM_PRODUTO := TFRM_PRODUTO.Create(Self);
  FRM_PRODUTO.ShowModal;
end;

procedure TFRM_MENU_PRINCIPAL.btn_relatorioClick(Sender: TObject);
begin
  try
    FRM_MENSAGEM_CONFIRMACAO.lbl_mensagem.Caption := 'Deseja visualizar o Rel�torio?';
    FRM_MENSAGEM_CONFIRMACAO.ShowModal;
  finally
  if FRM_MENSAGEM_CONFIRMACAO.CONFIRMACAO = 'S' then
  begin
    DM_Produto.produtos_relatorio.Close;
    DM_Produto.produtos_relatorio.SQL.Clear;
    DM_Produto.produtos_relatorio.SQL.Add('SELECT '
                                        + 'p.codprod, '
                                        + 'p.nomeprod, '
                                        + 'p.preco, '
                                        + 'p.ultpreco, '
                                        + 'c.codcateg, '
                                        + 'c.descricaocateg as categoria, '
                                        + 'p.datacadastro, '
                                        + 'p.dataalteracao '
                                        + 'FROM produto p '
                                        + 'INNER JOIN categoria c '
                                        + 'ON p.codcateg = c.codcateg '
                                        + 'ORDER BY p.nomeprod;');
    DM_Produto.produtos_relatorio.Open;
    FRM_RELATORIO_PRODUTOS.rl_produtos_relatorio.Preview();
  end;
  end;
end;

procedure TFRM_MENU_PRINCIPAL.btn_sair_menuClick(Sender: TObject);
  var CanClose: Boolean;
begin
  FRM_FECHA_SISTEMA.lbl_mensagem.Caption := 'Deseja realmente sair do sistema?';
  if FRM_FECHA_SISTEMA.ShowModal = mrCancel then
    CanClose := false;
end;

procedure TFRM_MENU_PRINCIPAL.btn_usuarioClick(Sender: TObject);
begin
  FRM_USUARIO := TFRM_USUARIO.Create(Self);
  FRM_USUARIO.ShowModal;
end;

procedure TFRM_MENU_PRINCIPAL.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  FRM_FECHA_SISTEMA.lbl_mensagem.Caption := 'Deseja realmente sair do sistema?';
  if FRM_FECHA_SISTEMA.ShowModal = mrCancel then
    CanClose := false;
end;

procedure TFRM_MENU_PRINCIPAL.FormCreate(Sender: TObject);
var
  dia_atual: TDateTime;
  dia_semana: Integer;
  nome_do_dia: string;

begin
  begin
    // Obter a data atual
    dia_atual := Now;
    // Obter o n�mero do dia da semana (1 a 7)
    dia_semana := DayOfWeek(dia_atual);
    // Converter o n�mero do dia da semana para o nome do dia
    case dia_semana of
      1:
        nome_do_dia := 'Domingo';
      2:
        nome_do_dia := 'Segunda-feira';
      3:
        nome_do_dia := 'Ter�a-feira';
      4:
        nome_do_dia := 'Quarta-feira';
      5:
        nome_do_dia := 'Quinta-feira';
      6:
        nome_do_dia := 'Sexta-feira';
      7:
        nome_do_dia := 'S�bado';
    else
      nome_do_dia := 'Desconhecido';
    end;
    // Exibir o dia da semana na label
    lbl_dia_semana.Caption := 'Hoje � ' + Format('%s (%s)', [nome_do_dia, FormatDateTime('dd/mm/yyyy', dia_atual)]);
  end;
  // Iniciar o timer quando o formul�rio � criado
  tmr_hora.Enabled := True;
end;

procedure TFRM_MENU_PRINCIPAL.tmr_horaTimer(Sender: TObject);
begin
  lbl_hora.Caption := 'Hor�rio atual: ' + FormatDateTime('hh:mm:ss', Now);
end;

end.
