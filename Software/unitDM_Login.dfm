object DM_Login: TDM_Login
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
  object fd_login: TFDQuery
    Connection = conexao
    Left = 32
    Top = 80
  end
  object FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink
    VendorLib = 'C:\Case_Delphi\Software\Win32\Debug\dlls\libmysql.dll'
    Left = 144
    Top = 16
  end
end