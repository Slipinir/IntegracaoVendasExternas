unit DAO.API.VendasExternas.Controllers.Pedido;

interface

uses
  DAO.Controllers.Pedido,
  DAO.Models.Pedidos,
  DAO.API.VendasExternas;

type
  TVendasExternasAPIPedidoController = class(TPedidoController)
  private
    VendasExternasAPI: TVendasExternasAPI;
  public
    constructor Create(const VendasExternasAPI: TVendasExternasAPI);
    function Get: TPedidos;
  end;

implementation

{ TVendasExternasAPIPedidoController }

constructor TVendasExternasAPIPedidoController.Create(
  const VendasExternasAPI: TVendasExternasAPI);
begin
  Self.VendasExternasAPI := VendasExternasAPI;
end;

function TVendasExternasAPIPedidoController.Get: TPedidos;
begin

end;

end.

