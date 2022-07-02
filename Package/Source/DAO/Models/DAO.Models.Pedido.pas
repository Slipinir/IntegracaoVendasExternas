unit DAO.Models.Pedido;

interface

uses
  DAO.Models.Telefone,
  DAO.Models.PedidoItens,
  DAO.Models.PedidoDados,
  DAO.Models.PedidoCliente;

type
  /// <summary>
  ///  Pedido
  ///  Preencher pelo menos uma propriedade:
  ///  - Cliente
  ///  - DadosEntrega
  ///  - DadosCobranca
  /// </summary>
  TPedido = class
  public
    /// <summary>
    ///  Total dos itens com desconto
    ///  + Frete
    /// <//summary>
    Total: Currency;
    /// <summary>
    ///  Total dos itens com desconto
    /// </summary>
    Subtotal: Currency;
    /// <summary>
    ///  Valor do frete
    /// </summary>
    Frete: Currency;
    /// <summary>
    ///  Itens do pedido
    /// </summary>
    Itens: TPedidoItens;
    /// <summary>
    ///  Dados de entrega do cliente no pedido (opcional)
    /// </summary>
    DadosEntrega: TPedidoDados;
    /// <summary>
    ///  Dados de cobrança do cliente (opcional)
    /// </summary>
    DadosCobranca: TPedidoDados;
    /// <summary>
    ///  Dados do cliente
    /// </summary>
    Cliente: TPedidoCliente;
    constructor Create;
    destructor Destroy; override;
  end;

implementation

{ TPedido }

constructor TPedido.Create;
begin
  inherited;
  Total := 0;
  Subtotal := 0;
  Itens := TPedidoItens.Create;
  DadosEntrega := TPedidoDados.Create;
  DadosCobranca := TPedidoDados.Create;
  Cliente := TPedidoCliente.Create;
end;

destructor TPedido.Destroy;
begin
  Cliente.Free;
  DadosEntrega.Free;
  DadosCobranca.Free;
  Itens.Free;
  inherited;
end;

end.
