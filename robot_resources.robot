*** Settings ***
Library	SeleniumLibrary

*** Variables ***
${BROWSER}	chrome
${HOME}  http://localhost/Teto-Facil/frontEnd/homepage.php
${LOGIN}  http://localhost/Teto-Facil/frontEnd/loginpage.php

*** Keywords ***
Abrir o navegador
    Open Browser	browser=${BROWSER}
    Maximize Browser Window

Fechar o navegador
    Capture Page Screenshot
    Close Browser

Acessar a home page
    Go To    url=${HOME}
    
Acessar pagina de login
   Go To    url=${LOGIN}

Digitar nome "${NOME}"
    Input Text    locator=name    text=${NOME}

Digitar email "${EMAIL}"
    Input Text    locator=emailCad    text=${EMAIL}

Digitar cpf "${CPF}"
    Input Text    locator=cpf    text=${CPF}

Digitar senha "${SENHA}"
    Input Text    locator=senhaCad    text=${SENHA}

Confirmar senha "${SENHA}"
    Input Text    locator=passwordconfirm    text=${SENHA}

Enviar cadastro
    Click Element    locator=sendCadButton

Verificar mensagem de falha no login
	Alert Should Be Present

Verificar se nome do usuário aparece na tela de boas vindas "${FULL_NAME}"
	Page Should Contain	Olá, ${FULL_NAME}
	
