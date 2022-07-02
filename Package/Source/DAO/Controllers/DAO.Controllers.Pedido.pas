unit DAO.Controllers.Pedido;

interface

uses
  DAO.Models.Pedidos;

type
  /// <summary>
  ///  Controller abstrato do pedido
  ///  Utilizar overload das funções:
  ///  Get(const Id: string): TPedidos;
  ///  Get(const Ids: TStringList): TPedidos;
  ///  Get(const DataInicio: TDateTime): TPedidos;
  /// </summary>
  TPedidoController = class
  public
    /// <summary>
    ///  Função para pegar todos os pedidos
    /// </summary>
    function Get: TPedidos; virtual; abstract;
  end;

implementation

end.
