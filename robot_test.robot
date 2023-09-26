** Settings ***
Documentation    Essa suíte testa o site do Teto Facil
Resource         robot_resources.robot
Test Setup       Abrir o navegador
Test Teardown    Fechar o navegador


*** Test Cases ***
Caso de Teste 01 - Realizar Cadastro Correto"
	[Documentation]    Esse teste verifica se o Cadastro é validado corretamente
	[Tags]             Login_correto
    Acessar pagina de login
    Digitar nome "Augusto Santos"
    Digitar email "Augusto.santos@gmail.com"
    Digitar cpf "46078980408"
    Digitar senha "As@@3040"
    Confirmar senha "As@@3040"
    Enviar cadastro

Caso de Teste 02 - Cadastro de Usuário com CPF Formatado"
    [Documentation]    Esse teste verifica se o Cadastro permite cpf formatado
	[Tags]             CPF_Formatado
    Acessar pagina de login
    Digitar nome "Caio Santos"
    Digitar email "Caio.santos@gmail.com"
    Digitar cpf "527.356.365-85"
    Digitar senha "Cs@@3040"
    Confirmar senha "Cs@@3040"
    Enviar cadastro
    
Caso de Teste 03 - Cadastro de Usuário com Acentuação"
    [Documentation]    Esse teste verifica se o Cadastro permite nome com acentuação
	[Tags]             CPF_Formatado
    Acessar pagina de login
    Digitar nome "José Alcide"
    Digitar email "Jose.Alcides@gmail.com"
    Digitar cpf "14838645457"
    Digitar senha "Ja@@3040"
    Confirmar senha "Ja@@3040"
    Enviar cadastro

Caso de Teste 04 - Cadastro de Usuário sem dominio de email"
    [Documentation]    Esse teste verifica se o Cadastro permite nome com acentuação
	[Tags]             CPF_Formatado
    Acessar pagina de login
    Digitar nome "José Alcide"
    Digitar email "Jose.Alcides@gmail.com"
    Digitar cpf "79466483838"
    Digitar senha "Ja@@3040"
    Confirmar senha "Ja@@3040"
    Enviar cadastro
    Verificar mensagem de falha no login

Caso de Teste 05 - Cadastro de Usuário com CPF Invalido"
    [Documentation]    Esse teste verifica se o Cadastro é validado corretamente se um cpf invalido for recebido
	[Tags]             CPF_Invalido
    Acessar pagina de login
    Digitar nome "Felipe Santos"
    Digitar email "Felipe.santos@gmail.com"
    Digitar cpf "58638895278"
    Digitar senha "Fs@@3040"
    Confirmar senha "Fs@@3040"
    Enviar cadastro
    Verificar mensagem de falha no login
    