object FRM_RELATORIO_PRODUTOS: TFRM_RELATORIO_PRODUTOS
  Left = 0
  Top = 0
  Caption = 'FRM_RELATORIO_PRODUTOS'
  ClientHeight = 774
  ClientWidth = 783
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object rl_produtos_relatorio: TRLReport
    Left = -8
    Top = 0
    Width = 794
    Height = 1123
    DataSource = DM_Produto.ds_produtos_relatorio
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    object RLBand1: TRLBand
      Left = 38
      Top = 81
      Width = 718
      Height = 25
      BandType = btTitle
      object lbl_codigo: TRLLabel
        Left = 3
        Top = -1
        Width = 53
        Height = 20
        Caption = 'C'#243'digo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Microsoft New Tai Lue'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl_produto: TRLLabel
        Left = 60
        Top = -1
        Width = 131
        Height = 20
        Caption = 'Produto'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Microsoft New Tai Lue'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl_categoria: TRLLabel
        Left = 197
        Top = -1
        Width = 90
        Height = 20
        Caption = 'Categoria'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Microsoft New Tai Lue'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl_preco: TRLLabel
        Left = 291
        Top = -1
        Width = 58
        Height = 20
        Alignment = taRightJustify
        Caption = 'Pre'#231'o'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Microsoft New Tai Lue'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl_ultimo_preco: TRLLabel
        Left = 353
        Top = -1
        Width = 95
        Height = 20
        Alignment = taRightJustify
        Caption = 'Ultimo Pre'#231'o'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Microsoft New Tai Lue'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl_data_alteracao: TRLLabel
        Left = 452
        Top = -1
        Width = 129
        Height = 20
        Caption = 'Data Altera'#231#227'o'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Microsoft New Tai Lue'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl_data_cadastro: TRLLabel
        Left = 585
        Top = -1
        Width = 131
        Height = 20
        Caption = 'Data Cadastro'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Microsoft New Tai Lue'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object RLBand2: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 43
      BandType = btTitle
      object lbl_relatorio_produtos: TRLLabel
        Left = 3
        Top = 12
        Width = 201
        Height = 25
        Caption = 'Relat'#243'rio de Produtos'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Microsoft New Tai Lue'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object RLBand3: TRLBand
      Left = 38
      Top = 106
      Width = 718
      Height = 31
      object codprod: TRLDBText
        Left = 6
        Top = 6
        Width = 48
        Height = 17
        Alignment = taCenter
        DataField = 'codprod'
        DataSource = DM_Produto.ds_produtos_relatorio
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Microsoft New Tai Lue'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object nomeprod: TRLDBText
        Left = 62
        Top = 6
        Width = 127
        Height = 17
        DataField = 'nomeprod'
        DataSource = DM_Produto.ds_produtos_relatorio
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Microsoft New Tai Lue'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object preco: TRLDBText
        Left = 291
        Top = 6
        Width = 58
        Height = 17
        Alignment = taRightJustify
        DataField = 'preco'
        DataSource = DM_Produto.ds_produtos_relatorio
        DisplayMask = 'R$: ###.###,##'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Microsoft New Tai Lue'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object dataalterecao: TRLDBText
        Left = 450
        Top = 6
        Width = 129
        Height = 17
        DataField = 'dataalteracao'
        DataSource = DM_Produto.ds_produtos_relatorio
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Microsoft New Tai Lue'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object datacadastro: TRLDBText
        Left = 585
        Top = 7
        Width = 130
        Height = 17
        DataField = 'datacadastro'
        DataSource = DM_Produto.ds_produtos_relatorio
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Microsoft New Tai Lue'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object categoria: TRLDBText
        Left = 195
        Top = 6
        Width = 90
        Height = 17
        DataField = 'Categoria'
        DataSource = DM_Produto.ds_produtos_relatorio
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Microsoft New Tai Lue'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object ultpreco: TRLDBText
        Left = 355
        Top = 6
        Width = 91
        Height = 17
        Alignment = taRightJustify
        DataField = 'ultpreco'
        DataSource = DM_Produto.ds_produtos_relatorio
        DisplayMask = 'R$: ###.###,##'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Microsoft New Tai Lue'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
    end
  end
end
