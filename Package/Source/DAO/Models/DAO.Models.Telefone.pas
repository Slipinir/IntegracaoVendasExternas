unit DAO.Models.Telefone;

interface

type
  /// <summary>
  ///  Classe para conter fun��es relacionadas a telefone
  ///  E o telefone
  /// </summary>
  TTelefone = class
  public
    Numero: string;
    constructor Create;
  end;

implementation

{ TTelefone }

constructor TTelefone.Create;
begin
  inherited;
  Numero := '';
end;

end.
