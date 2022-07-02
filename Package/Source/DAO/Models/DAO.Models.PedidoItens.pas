unit DAO.Models.PedidoItens;

interface

uses
  DAO.Models.PedidoItem;

type
  /// <summary>
  ///  Classe com os itens do produto
  ///  Nela podem ser feitas funções para facilitar a
  ///  busca dos itens
  ///  Como buscar por sku, por id e etc
  /// </summary>
  TPedidoItens = class
  private
    FItems: array of TPedidoItem;
    function GetItems(Index: Integer): TPedidoItem;
    procedure SetItems(Index: Integer; const Value: TPedidoItem);
  public
    constructor Create;
    destructor Destroy; override;
    function Count: Integer;
    function Add(const Item: TPedidoItem): Integer;
    property Items[Index: Integer]: TPedidoItem read GetItems write SetItems; default;
  end;

implementation

{ TPedidoItens }

function TPedidoItens.Add(const Item: TPedidoItem): Integer;
begin
  Result := Length(FItems);
  SetLength(FItems, Result + 1);
  FItems[Result] := Item;
end;

function TPedidoItens.Count: Integer;
begin
  Result := Length(FItems);
end;

constructor TPedidoItens.Create;
begin
  inherited;
  FItems := nil;
end;

destructor TPedidoItens.Destroy;
var
  I: Integer;
begin
  for I := 0 to Count - 1 do
  begin
    FItems[I].Free;
  end;
  inherited;
end;

function TPedidoItens.GetItems(Index: Integer): TPedidoItem;
begin
  Result := FItems[Index];
end;

procedure TPedidoItens.SetItems(Index: Integer; const Value: TPedidoItem);
begin
  FItems[Index] := Value;
end;

end.
