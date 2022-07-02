unit DAO.Models.VendasExternasConfiguracoes;

interface

type
  TVendasExternasConfiguracoes = class
  public
    Usuario: string;
    Senha: string;
    constructor Create;
  end;

implementation

{ TVendasExternasConfiguracoes }

constructor TVendasExternasConfiguracoes.Create;
begin
  inherited;
  Usuario := '';
  Senha := '';
end;

end.
