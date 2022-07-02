unit DAO.Models.Endereco;

interface

type
  /// <summary>
  ///  Classe com as informações de endereço
  /// </summary>
  TEndereco = class
  public
    /// <summary>
    ///  Rua
    /// </summary>
    Logradouro: string;
    /// <summary>
    ///  Número, pode ter letra também
    /// </summary>
    Numero: string;
    /// <summary>
    ///  Bairro
    /// </summary>
    Bairro: string;
    /// <summary>
    ///  Algum ponto de referência
    /// </summary>
    Referencia: string;
    /// <summary>
    ///  Complemento ao endereço
    /// </summary>
    Complemento: string;
    /// <summary>
    ///  Nome da cidade
    /// </summary>
    Cidade: string;
    /// <summary>
    ///  Unidade Federativa
    ///  Apenas a sigla (SP por exemplo)
    /// </summary>
    UF: string;
    /// <summary>
    ///  CEP com ou sem pontuação
    /// </summary>
    CEP: string;
    constructor Create;
  end;

implementation

{ TEndereco }

constructor TEndereco.Create;
begin
  inherited;
  Logradouro := '';
  Numero := '';
  Bairro := '';
  Referencia := '';
  Complemento := '';
  Cidade := '';
  UF := '';
  CEP := '';
end;

end.
