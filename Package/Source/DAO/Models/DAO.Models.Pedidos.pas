unit DAO.Models.Pedidos;

interface

uses
  DAO.Models.Pedido;

type
  /// <summary>
  ///  Classe com uma lista de pedidos
  /// </summary>
  TPedidos = class
  private
    FItems: array of TPedido;
    function GetItems(Index: Integer): TPedido;
    procedure SetItems(Index: Integer; const Value: TPedido);
  public
    constructor Create;
    destructor Destroy; override;
    function Count: Integer;
    function Add(const Item: TPedido): Integer;
    property Items[Index: Integer]: TPedido read GetItems write SetItems; default;
  end;

implementation

{ TPedidoItens }

function TPedidos.Add(const Item: TPedido): Integer;
begin
  Result := Length(FItems);
  SetLength(FItems, Result + 1);
  FItems[Result] := Item;
end;

function TPedidos.Count: Integer;
begin
  Result := Length(FItems);
end;

constructor TPedidos.Create;
begin
  inherited;
  FItems := nil;
end;

destructor TPedidos.Destroy;
var
  I: Integer;
begin
  for I := 0 to Count - 1 do
  begin
    FItems[I].Free;
  end;
  inherited;
end;

function TPedidos.GetItems(Index: Integer): TPedido;
begin
  Result := FItems[Index];
end;

procedure TPedidos.SetItems(Index: Integer; const Value: TPedido);
begin
  FItems[Index] := Value;
end;

end.
