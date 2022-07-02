unit DAO.Models.PedidoItem;

interface

type
  /// <summary>
  ///  Item do pedido
  /// </summary>
  TPedidoItem = class
  public
    /// <summary>
    ///  Total do item, com desconto
    /// </summary>
    Total: Currency;
    /// <summary>
    ///  Total do item, sem desconto
    /// </summary>
    SubTotal: Currency;
    /// <summary>
    ///  Desconto monetário total
    /// </summary>
    DescontoMonetario: Currency;
    /// <summary>
    ///  Quantidade do produto
    /// </summary>
    Quantidade: Currency;
    /// <summary>
    ///  Id do produto
    /// </summary>
    Id: string;
    /// <summary>
    ///  Nome do produto/ item
    /// </summary>
    Nome: string;
    /// <summary>
    ///  Referência ou sku do produto
    /// </summary>
    Referencia: string;
    /// <summary>
    ///  Frete do item (opcional)
    /// </summary>
    Frete: Currency;
    constructor Create;
  end;

implementation

{ TPedidoItem }

constructor TPedidoItem.Create;
begin
  inherited;
  Total := 0;
  SubTotal := 0;
  DescontoMonetario := 0;
  Quantidade := 0;
  Id := '';
  Nome := '';
  Referencia := '';
  Frete := 0;
end;

end.
