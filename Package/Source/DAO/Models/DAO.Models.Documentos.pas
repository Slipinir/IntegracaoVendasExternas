unit DAO.Models.Documentos;

interface

uses
  DAO.Models.ClienteTipo;

type
  /// <summary>
  ///  Classe para concentar as informa��es fiscais do cliente
  ///  CPF ou CNPJ, RG ou IE e o se o cliente � PF ou PJ
  /// </summary>
  TDocumentos = class
  public
    /// <summary>
    ///  N�mero do CPF ou CNPJ com ou sem pontua��o
    /// </summary>
    Fiscal: string;
    /// <summary>
    ///   N�mero do RG ou IE com ou sem pontua��o
    /// </summary>
    Identidade: string;
    /// <summary>
    ///  Tipo do cliente: PF ou PJ
    /// </summary>
    Tipo: TClienteTipo;
    constructor Create;
  end;

implementation

{ TDocumentos }

constructor TDocumentos.Create;
begin
  inherited;
  Fiscal := '';
  Identidade := '';
  Tipo := TClienteTipo.Desconhecido;
end;

end.
