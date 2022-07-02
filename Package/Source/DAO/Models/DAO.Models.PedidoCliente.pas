unit DAO.Models.PedidoCliente;

interface

uses
  DAO.Models.Endereco,
  DAO.Models.Documentos;

type
  /// <summary>
  ///  Informações do cliente do pedido
  /// </summary>
  TPedidoCliente = class
  public
    /// <summary>
    ///  Id do cliente
    /// </summary>
    Id: string;
    /// <summary>
    ///  Nome do cliente
    /// </summary>
    Nome: string;
    /// <summary>
    ///  Email do cliente
    /// </summary>
    Email: string;
    /// <summary>
    ///  Endereço do cliente
    /// </summary>
    Endereco: TEndereco;
    /// <summary>
    ///  Documentos do cliente: CPF ou CNPJ, RG ou IE e PF ou PJ
    /// </summary>
    Documentos: TDocumentos;
    constructor Create;
    destructor Destroy; override;
  end;

implementation

{ TPedidoCliente }

constructor TPedidoCliente.Create;
begin
  inherited;
  Id := '';
  Nome := '';
  Email := '';
  Endereco := TEndereco.Create;
  Documentos := TDocumentos.Create;
end;

destructor TPedidoCliente.Destroy;
begin
  Documentos.Free;
  Endereco.Free;
  inherited;
end;

end.
