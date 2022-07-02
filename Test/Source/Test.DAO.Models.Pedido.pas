unit Test.DAO.Models.Pedido;

interface

uses
  TestFramework,
  DAO.Models.Pedido
  ;

type
  TTestDAOModelsPedido = class(TTestCase)
  published
    /// <summary>
    ///  Neste teste verifico se AccessViolation
    /// </summary>
    procedure TestCreateInstance;
  end;

implementation

{ TTestPedido }

procedure TTestDAOModelsPedido.TestCreateInstance;
var
  Pedido: TPedido;
begin
  Pedido := TPedido.Create;
  Pedido.Itens.Count;
  Pedido.DadosEntrega.Id := '';
  Pedido.DadosEntrega.Endereco.Logradouro := '';
  Pedido.DadosEntrega.Documentos.Fiscal := '';
  Pedido.DadosCobranca.Id := '';
  Pedido.DadosCobranca.Endereco.Logradouro := '';
  Pedido.DadosCobranca.Documentos.Fiscal := '';
  Pedido.Cliente.Id := '';
  Pedido.Cliente.Endereco.Logradouro := '';
  Pedido.Cliente.Documentos.Fiscal := '';
  Pedido.Free;
end;

initialization
  RegisterTest(TTestDAOModelsPedido.Suite);

end.
