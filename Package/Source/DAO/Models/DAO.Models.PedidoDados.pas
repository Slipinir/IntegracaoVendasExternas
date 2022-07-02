unit DAO.Models.PedidoDados;

interface

uses
  DAO.Models.Endereco,
  DAO.Models.Documentos,
  DAO.Models.Telefone;

type
  /// <summary>
  ///  Classe para ter os dados do cliente do pedido
  ///  Um pedido pode ter as informações de envio/ entrega
  ///  E as informações de cobrança
  /// </summary>
  TPedidoDados = class
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
    ///  Endereço do cliente
    /// </summary>
    Endereco: TEndereco;
    /// <summary>
    ///  Documentos do cliente: CPF ou CNPJ, RG ou IE e PF ou PJ
    /// </summary>
    Documentos: TDocumentos;
    /// <summary>
    ///  Telefone do cliente
    /// </summary>
    Telefone: TTelefone;
    /// <summary>
    ///  Email do cliente
    /// </summary>
    Email: string;
    constructor Create;
    destructor Destroy; override;
  end;

implementation

{ TPedidoDados }

constructor TPedidoDados.Create;
begin
  inherited;
  Id := '';
  Nome := '';
  Endereco := TEndereco.Create;
  Documentos := TDocumentos.Create;
  Telefone := TTelefone.Create;
  Email := '';
end;

destructor TPedidoDados.Destroy;
begin
  Endereco.Free;
  Documentos.Free;
  Telefone.Free;
  inherited;
end;

end.
