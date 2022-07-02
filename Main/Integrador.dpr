program Integrador;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  I: Integer;
begin
  try
    Writeln('Aqui as classes serao instanciadas e utilizadas para importar os pedidos, clientes e etc');
    Writeln('Pode dividir em N executaveis para que cada um importe apenas os pedidos, clientes ou produtos');
    Writeln('Realizar a divisão dos processos pode dividir a carga de trabalho entre os executaveis');
    Readln(I);
    { TODO -oUser -cConsole Main : Insert code here }
  except
    on E:Exception do
      Writeln(E.Classname, ': ', E.Message);
  end;
end.
