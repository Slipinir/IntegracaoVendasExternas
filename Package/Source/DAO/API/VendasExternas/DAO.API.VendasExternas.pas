unit DAO.API.VendasExternas;

interface

type
  TVendasExternasAPI = class
  private
    Usuario, Senha: string;
    Token: string;
  public
    constructor Create(const Usuario, Senha: string);
  end;

const
  URL = 'https://api.alkord.com';

implementation

uses
  DCPbase64,
  SysUtils;

{ TVendasExternasAPI }

constructor TVendasExternasAPI.Create(const Usuario, Senha: string);
begin
  if (Usuario = '') or (Senha = '') then
  begin
    raise Exception.Create('Usuario e senha são obrigatórios');
  end;
  Self.Usuario := Usuario;
  Self.Senha := Senha;
  Self.Token := DCPbase64.Base64EncodeStr(Self.Usuario + ':' + Self.Senha);
end;

end.

