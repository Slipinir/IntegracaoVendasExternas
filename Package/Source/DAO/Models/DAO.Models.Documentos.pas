unit DAO.Models.Documentos;

interface

uses
  DAO.Models.ClienteTipo;

type
  /// <summary>
  ///  Classe para concentar as informações fiscais do cliente
  ///  CPF ou CNPJ, RG ou IE e o se o cliente é PF ou PJ
  /// </summary>
  TDocumentos = class
  public
    /// <summary>
    ///  Número do CPF ou CNPJ com ou sem pontuação
    /// </summary>
    Fiscal: string;
    /// <summary>
    ///   Número do RG ou IE com ou sem pontuação
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
