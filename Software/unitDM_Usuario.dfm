object DM_Usuario: TDM_Usuario
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
  object usuario: TFDTable
    Active = True
    IndexFieldNames = 'coduser'
    Connection = conexao
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'usuario'
    Left = 32
    Top = 80
  end
  object ds_usuario: TDataSource
    DataSet = usuario
    Left = 104
    Top = 80
  end
  object pesquisar_usuario: TFDQuery
    Connection = conexao
    Left = 40
    Top = 152
  end
  object ds_pesquisar_usuario: TDataSource
    DataSet = pesquisar_usuario
    Left = 152
    Top = 152
  end
end
