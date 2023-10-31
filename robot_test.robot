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
    Digitar nome        ${NOME1}
    Digitar email       ${EMAIL1}
    Digitar cpf         ${CPF1}
    Digitar senha       ${SENHA1}
    Confirmar senha         ${SENHA1}
    Enviar cadastro
    Verificar se nome do usuário aparece na tela de boas vindas     ${NOME1}

Caso de Teste 02 - Cadastro de Usuário com CPF Formatado"
    [Documentation]    Esse teste verifica se o Cadastro permite cpf formatado
	[Tags]             CPF_Formatado
    Acessar pagina de login
    Digitar nome        ${NOME2}
    Digitar email       ${EMAIL2}
    Digitar cpf         ${CPF2}
    Digitar senha       ${SENHA2}
    Confirmar senha         ${SENHA2}
    Enviar cadastro
    Verificar se nome do usuário aparece na tela de boas vindas     ${NOME2}
    
Caso de Teste 03 - Cadastro de Usuário com Acentuação"
    [Documentation]    Esse teste verifica se o Cadastro permite nome com acentuação
	[Tags]             Acentuacao
    Acessar pagina de login
    Digitar nome        ${NOME3}
    Digitar email       ${EMAIL3}
    Digitar cpf         ${CPF3}
    Digitar senha       ${SENHA3}
    Confirmar senha         ${SENHA3}
    Enviar cadastro
    Verificar se nome do usuário aparece na tela de boas vindas     ${NOME3}

Caso de Teste 04 - Cadastro de Usuário sem dominio de email"
    [Documentation]    Esse teste verifica se o Cadastro impede tentativas que não possuem um email válido
	[Tags]             email_invalido
    Acessar pagina de login
    Acessar pagina de login
    Digitar nome        ${NOME3}
    Digitar email       ${EMAIL3.2}
    Digitar cpf         ${CPF3.2}
    Digitar senha       ${SENHA3}
    Confirmar senha         ${SENHA3}
    Enviar cadastro
    Verificar mensagem de falha no cadastro

Caso de Teste 05 - Cadastro de Usuário com CPF Invalido"
    [Documentation]    Esse teste verifica se o Cadastro é validado corretamente se um cpf invalido for recebido
	[Tags]             CPF_Invalido
    Acessar pagina de login
    Digitar nome        ${NOME5}
    Digitar email       ${EMAIL5}
    Digitar cpf         ${CPF5}
    Digitar senha       ${SENHA5}
    Confirmar senha         ${SENHA5}
    Enviar cadastro
    Verificar mensagem de falha no cadastro

Caso de Teste 06 - Cadastro de Usuário com senha invalida"
    [Documentation]    Esse teste verifica se a senha é validada corretamente
	[Tags]             Senha_Invalida
    Acessar pagina de login
    Digitar nome        ${NOME4}
    Digitar email       ${EMAIL4}
    Digitar cpf         ${CPF4}
    Digitar senha       ${SENHA4}
    Confirmar senha         ${SENHA4}
    Enviar cadastro
    Verificar mensagem de falha no cadastro

Caso de Teste 07 - Cadastro de Usuário com senhas diferentes"
    [Documentation]    Esse teste verifica se a senha é confrima as senhas corretamente
	[Tags]             Senha_diferentes
    Acessar pagina de login
    Digitar nome        ${NOME7}
    Digitar email       ${EMAIL7}
    Digitar cpf         ${CPF7}
    Digitar senha       ${SENHA7}
    Confirmar senha         ${SENHA1}
    Enviar cadastro
    Verificar mensagem de falha no cadastro

Caso de Teste 08 - Cadastro de Usuário com email já cadastrado no Banco de Dados"
    [Documentation]    Esse teste verifica se a verificação de cadastro com email já cadastrado é barrado corretamente
	[Tags]             Validacao_email
    Acessar pagina de login
    Digitar nome        ${NOME6}
    Digitar email       ${EMAIL1}
    Digitar cpf         ${CPF6}
    Digitar senha       ${SENHA1}
    Confirmar senha         ${SENHA1}
    Enviar cadastro
    Verificar mensagem de falha no cadastro

Caso de Teste 09 - Cadastro de Usuário com CPF já cadastrado no Banco de Dados"
    [Documentation]    Esse teste verifica se a verificação de cadastro com cpf já cadastrado é barrado corretamente
	[Tags]             Cadastro_Reptido
    Acessar pagina de login
    Digitar nome        ${NOME1}
    Digitar email       ${EMAIL1.2}
    Digitar cpf         ${CPF1}
    Digitar senha       ${SENHA1}
    Confirmar senha         ${SENHA1}
    Enviar cadastro
    Verificar mensagem de falha no cadastro

Caso de Teste 10 - Pedido de Imovel Vazio"
	[Documentation]    Esse testa se é possível fazer um pedido de imovel sem preencher nehuma informação
	[Tags]             Pedido_Imovel_Vazio
    Acessar pagina de login
    Digitar email login     ${EMAIL1}
	Digitar senha login     ${SENHA1}
	Enviar login
	Acessar pedido de Imovel
	Enviar pedido
    Verificar Bloqueio de pedido
    
    
    