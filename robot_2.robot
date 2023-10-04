** Settings ***
Documentation    Essa suíte testa o site do Teto Facil
Resource         robot_resources.robot
Test Setup       Abrir o navegador
Test Teardown    Fechar o navegador


*** Test Cases ***
Caso de Teste 10 - Pedido de Imovel Vazio"
	[Documentation]    Esse testa se é possível fazer um pedido de imovel sem preencher nehuma informação
	[Tags]             Pedido_Imovel_Vazio
    Acessar pagina de login
    Digitar email login "gustavolf.educ@gmail.com"
	Digitar senha login "Gu@@2034"
	Enviar login
	Acessar pedido de Imovel
	Enviar pedido