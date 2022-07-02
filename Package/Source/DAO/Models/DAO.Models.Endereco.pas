unit DAO.Models.Endereco;

interface

type
  /// <summary>
  ///  Classe com as informa��es de endere�o
  /// </summary>
  TEndereco = class
  public
    /// <summary>
    ///  Rua
    /// </summary>
    Logradouro: string;
    /// <summary>
    ///  N�mero, pode ter letra tamb�m
    /// </summary>
    Numero: string;
    /// <summary>
    ///  Bairro
    /// </summary>
    Bairro: string;
    /// <summary>
    ///  Algum ponto de refer�ncia
    /// </summary>
    Referencia: string;
    /// <summary>
    ///  Complemento ao endere�o
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
    ///  CEP com ou sem pontua��o
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
