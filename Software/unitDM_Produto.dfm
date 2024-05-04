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
  object ds_produto: TDataSource
    DataSet = produto
    Left = 120
    Top = 88
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
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateMode = upWhereAll
    SQL.Strings = (
      'SELECT '
      'p.*, '
      'c.descricaocateg as Categoria '
      'FROM produto p '
      'INNER JOIN categoria c '
      'ON p.codcateg = c.codcateg '
      'WHERE p.codprod = :codprod;')
    Left = 40
    Top = 88
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
      ReadOnly = True
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
  object produtos_relatorio: TFDQuery
    Active = True
    Connection = conexao
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateMode = upWhereAll
    SQL.Strings = (
      'SELECT '
      'p.*, '
      'c.descricaocateg as Categoria '
      'FROM produto p '
      'INNER JOIN categoria c '
      'ON p.codcateg = c.codcateg '
      'WHERE p.codprod = :codprod;')
    Left = 64
    Top = 224
    ParamData = <
      item
        Name = 'CODPROD'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object FDAutoIncField1: TFDAutoIncField
      FieldName = 'codprod'
      Origin = 'codprod'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object StringField1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nomeprod'
      Origin = 'nomeprod'
      Size = 100
    end
    object IntegerField1: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'codcateg'
      Origin = 'codcateg'
    end
    object FloatField1: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'preco'
      Origin = 'preco'
    end
    object FloatField2: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ultpreco'
      Origin = 'ultpreco'
    end
    object DateTimeField1: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'datacadastro'
      Origin = 'datacadastro'
    end
    object DateTimeField2: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'dataalteracao'
      Origin = 'dataalteracao'
    end
    object StringField2: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Categoria'
      Origin = 'descricaocateg'
      ProviderFlags = [pfHidden]
      ReadOnly = True
      Size = 100
    end
  end
  object ds_produtos_relatorio: TDataSource
    DataSet = produtos_relatorio
    Left = 184
    Top = 224
  end
end
