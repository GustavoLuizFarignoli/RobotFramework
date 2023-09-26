** Settings ***
Documentation    Essa suíte testa o site do Teto Facil
Resource         robot_resources.robot
Test Setup       Abrir o navegador
Test Teardown    Fechar o navegador


*** Test Cases ***
Caso de Teste 01 - Acessar login"
	[Documentation]    Esse teste verifica acesso ao login
	[Tags]             site_principal
    Acessar a home page
    Acessar pagina de login
    Preencher login
    

    

