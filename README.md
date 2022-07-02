# IntegracaoVendasExternas
Projeto para realizar a integração com a platafomr Vendas Externas

O projeto é dividido em 2 partes:
- Pasta Package
-- Com os arquivos fontes da integração, controle do banco de dados, consumo da API, tudo
- Pasta Test
-- Com os testes das units do Package
- Pasta Main
-- Aqui fica o código responsável por gerar o executável e instanciar o código da pasta Package conforme os parâmetros necessários

Na pasta Test
- Estes testes serão desenvolvidos para garantir que alterações feitas no Package não "quebrem" o que já foi feito
-- Dessa maneira se é esperado que o pedido possa vir sem X informação e tem que ser feita Y ação será criado um teste no qual o pedido virá sem a informação X e que a classe responsável faça a ação Y

Na pasta Package o projeto é dividido da seguinte maneira
- DAO: Data Access Object
-- Aqui fica todo o código que acessa os dados e as diversas fontes de dados do projeto, como banco de dados, api, arquivos texto
- Integrador
-- Responsável por utilizar o código do DAO para integrar as diversas informações entre as partes (API e banco)
