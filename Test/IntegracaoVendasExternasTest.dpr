program IntegracaoVendasExternasTest;
{

  Delphi DUnit Test Project
  -------------------------
  This project contains the DUnit test framework and the GUI/Console test runners.
  Add "CONSOLE_TESTRUNNER" to the conditional defines entry in the project options
  to use the console test runner.  Otherwise the GUI test runner will be used by
  default.

}

{$IFDEF CONSOLE_TESTRUNNER}
{$APPTYPE CONSOLE}
{$ENDIF}

uses
  Forms,
  TestFramework,
  GUITestRunner,
  TextTestRunner,
  Test.DAO.Models.Pedido in 'Source\Test.DAO.Models.Pedido.pas',
  DAO.Models.ClienteTipo in '..\Package\Source\DAO\Models\DAO.Models.ClienteTipo.pas',
  DAO.Models.Documentos in '..\Package\Source\DAO\Models\DAO.Models.Documentos.pas',
  DAO.Models.Endereco in '..\Package\Source\DAO\Models\DAO.Models.Endereco.pas',
  DAO.Models.Pedido in '..\Package\Source\DAO\Models\DAO.Models.Pedido.pas',
  DAO.Models.PedidoCliente in '..\Package\Source\DAO\Models\DAO.Models.PedidoCliente.pas',
  DAO.Models.PedidoDados in '..\Package\Source\DAO\Models\DAO.Models.PedidoDados.pas',
  DAO.Models.PedidoItem in '..\Package\Source\DAO\Models\DAO.Models.PedidoItem.pas',
  DAO.Models.PedidoItens in '..\Package\Source\DAO\Models\DAO.Models.PedidoItens.pas',
  DAO.Models.Telefone in '..\Package\Source\DAO\Models\DAO.Models.Telefone.pas',
  Test.DAO.Models.PedidoItens in 'Source\Test.DAO.Models.PedidoItens.pas';

{$R *.RES}

begin
  Application.Initialize;
  if IsConsole then
    TextTestRunner.RunRegisteredTests
  else
    GUITestRunner.RunRegisteredTests;
end.

