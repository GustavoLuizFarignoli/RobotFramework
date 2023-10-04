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
	[Tags]             Acentuacao
    Acessar pagina de login
    Digitar nome "José Alcide"
    Digitar email "Jose.Alcides@gmail.com"
    Digitar cpf "14838645457"
    Digitar senha "Ja@@3040"
    Confirmar senha "Ja@@3040"
    Enviar cadastro

Caso de Teste 04 - Cadastro de Usuário sem dominio de email"
    [Documentation]    Esse teste verifica se o Cadastro permite nome com acentuação
	[Tags]             email_invalido
    Acessar pagina de login
    Digitar nome "José Alcide"
    Digitar email "Jose.Alcidesgmail.com"
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

Caso de Teste 06 - Cadastro de Usuário com senha invalida"
    [Documentation]    Esse teste verifica se a senha é validada corretamente
	[Tags]             Senha_Invalida
    Acessar pagina de login
    Digitar nome "Michael Araujo"
    Digitar email "Michael.Araujo@gmail.com"
    Digitar cpf "54516421097"
    Digitar senha "Ma2135"
    Confirmar senha "Ma2135"
    Enviar cadastro
    Verificar mensagem de falha no login

Caso de Teste 07 - Cadastro de Usuário com senhas diferentes"
    [Documentation]    Esse teste verifica se a senha é validada corretamente
	[Tags]             Senha_Invalida
    Acessar pagina de login
    Digitar nome "Rafael Lange"
    Digitar email "Rafael.Lange@gmail.com"
    Digitar cpf "59965363072"
    Digitar senha "Rf@@7403"
    Confirmar senha "Rf@@7404"
    Enviar cadastro
    Verificar mensagem de falha no login

Caso de Teste 08 - Cadastro de Usuário com email já cadastrado no Banco de Dados"
    [Documentation]    Esse teste verifica se a verificação de cadastro com email existente, funciona corretamente
	[Tags]             Validacao_email
    Acessar pagina de login
    Digitar nome "Augusto Felipe Santos"
    Digitar email "Augusto.santos@gmail.com"
    Digitar cpf "68395313098"
    Digitar senha "As@@1234"
    Confirmar senha "As@@1234"
    Enviar cadastro
    Verificar mensagem de falha no login

Caso de Teste 09 - Cadastro de Usuário com CPF já cadastrado no Banco de Dados"
    [Documentation]    Esse teste verifica se a verificação de cadastro existente, funciona corretamente
	[Tags]             Cadastro_Reptido
    Acessar pagina de login
    Digitar nome "Augusto Santos"
    Digitar email "Augusto.santos@gmail.com"
    Digitar cpf "46078980408"
    Digitar senha "As@@3040"
    Confirmar senha "As@@3040"
    Enviar cadastro
    Verificar mensagem de falha no login
    
    
    