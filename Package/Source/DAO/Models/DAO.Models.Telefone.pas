unit DAO.Models.Telefone;

interface

type
  /// <summary>
  ///  Classe para conter funções relacionadas a telefone
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
