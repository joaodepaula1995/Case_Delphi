object DM_Produto: TDM_Produto
  Height = 480
  Width = 640
  object conexao: TFDConnection
    Params.Strings = (
      'Database=case_delphi'
      'User_Name=root'
      'Password=@dministradoR7'
      'Server=localhost'
      'DriverID=MySQL')
    Connected = True
    LoginPrompt = False
    Left = 32
    Top = 16
  end
  object FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink
    VendorLib = 'C:\Case_Delphi\Software\Win32\Debug\dlls\libmysql.dll'
    Left = 144
    Top = 16
  end
  object produto_OLD: TFDTable
    Connection = conexao
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    Left = 32
    Top = 80
    object produto_OLDcodprod: TFDAutoIncField
      FieldName = 'codprod'
      Origin = 'codprod'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object produto_OLDnomeprod: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nomeprod'
      Origin = 'nomeprod'
      Size = 100
    end
    object produto_OLDcodcateg: TIntegerField
      FieldName = 'codcateg'
      Origin = 'codcateg'
      Required = True
    end
    object produto_OLDpreco: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'preco'
      Origin = 'preco'
    end
    object produto_OLDultpreco: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ultpreco'
      Origin = 'ultpreco'
    end
    object produto_OLDdatacadastro: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'datacadastro'
      Origin = 'datacadastro'
      EditMask = '##/##/####;1;_'
    end
    object produto_OLDdataalteracao: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'dataalteracao'
      Origin = 'dataalteracao'
      EditMask = '##/##/####;1;_'
    end
  end
  object ds_produto: TDataSource
    DataSet = produto
    Left = 128
    Top = 288
  end
  object pesquisar_produto: TFDQuery
    Connection = conexao
    Left = 56
    Top = 144
  end
  object ds_pesquisar_produto: TDataSource
    DataSet = pesquisar_produto
    Left = 184
    Top = 144
  end
  object produto: TFDQuery
    Active = True
    Connection = conexao
    SQL.Strings = (
      'SELECT '
      'p.*, '
      'c.descricaocateg as Categoria '
      'FROM produto p '
      'INNER JOIN categoria c '
      'ON p.codcateg = c.codcateg '
      'WHERE p.codprod = :codprod;')
    Left = 48
    Top = 288
    ParamData = <
      item
        Name = 'CODPROD'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object produtocodprod: TFDAutoIncField
      FieldName = 'codprod'
      Origin = 'codprod'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object produtonomeprod: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nomeprod'
      Origin = 'nomeprod'
      Size = 100
    end
    object produtocodcateg: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'codcateg'
      Origin = 'codcateg'
    end
    object produtopreco: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'preco'
      Origin = 'preco'
    end
    object produtoultpreco: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ultpreco'
      Origin = 'ultpreco'
    end
    object produtodatacadastro: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'datacadastro'
      Origin = 'datacadastro'
    end
    object produtodataalteracao: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'dataalteracao'
      Origin = 'dataalteracao'
    end
    object produtoCategoria: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Categoria'
      Origin = 'descricaocateg'
      ProviderFlags = [pfHidden]
      ReadOnly = True
      Size = 100
    end
  end
end
