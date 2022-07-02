unit Test.DAO.Models.PedidoItens;

interface

uses
  TestFramework,
  DAO.Models.PedidoItens;

type
  TTestDAOModelsPedidoItens = class(TTestCase)
  strict private
    PedidoItens: TPedidoItens;
  protected
    procedure SetUp; override;
    procedure TearDown; override;
  published
    procedure Test0Itens;
    procedure Test1Itens;
  end;

implementation

{ TTestDAOModelsPedidoItens }

procedure TTestDAOModelsPedidoItens.SetUp;
begin
  inherited;
  PedidoItens := TPedidoItens.Create;
end;

procedure TTestDAOModelsPedidoItens.TearDown;
begin
  PedidoItens.Free;
  inherited;
end;

procedure TTestDAOModelsPedidoItens.Test0Itens;
begin
  CheckEquals(0, PedidoItens.Count);
end;

procedure TTestDAOModelsPedidoItens.Test1Itens;
begin
  PedidoItens.Add(nil);
  CheckEquals(1, PedidoItens.Count);
end;

initialization
  RegisterTest(TTestDAOModelsPedidoItens.Suite);

end.
