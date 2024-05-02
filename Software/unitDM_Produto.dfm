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
  object produto: TFDTable
    Active = True
    IndexFieldNames = 'codprod'
    Connection = conexao
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'produto'
    Left = 32
    Top = 80
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
      FieldName = 'codcateg'
      Origin = 'codcateg'
      Required = True
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
      EditMask = '##/##/####;1;_'
    end
    object produtodataalteracao: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'dataalteracao'
      Origin = 'dataalteracao'
      EditMask = '##/##/####;1;_'
    end
  end
  object ds_produto: TDataSource
    DataSet = produto
    Left = 104
    Top = 80
  end
end
