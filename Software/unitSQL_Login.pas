unit unitSQL_Login;

interface

var
  SQL_LOGIN: String;

implementation

uses
  unitDM_Login;

  begin
  SQL_LOGIN :=  'SELECT u.senhauser AS SENHA '
              + 'FROM usuario u '
              + 'WHERE u.nomeuser = :NOMEUSER;';
end.
