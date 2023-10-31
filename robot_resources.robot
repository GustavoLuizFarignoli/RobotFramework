*** Settings ***
Library	SeleniumLibrary

*** Variables ***
${BROWSER}	chrome
${HOME}  http://localhost/Teto-Facil/frontEnd/homepage.php
${LOGIN}  http://localhost/Teto-Facil/frontEnd/loginpage.php
${IMOVEL}  http://localhost/Teto-facil/frontEnd/uploadImovel.php

${NOME1}  Augusto Santos
${EMAIL1}  Augusto.santos@gmail.com
${EMAIL1.2}  Augusto.silva@gmail.com
${CPF1}  46078980408
${SENHA1}  As@@3040

${NOME2}  Caio Santos
${EMAIL2}  Caio.santos@gmail.com
${CPF2}  527.356.365-85
${SENHA2}  Cs@@3040

${NOME3}  José Alcides
${EMAIL3}  Jose.Alcides@gmail.com
${EMAIL3.2}  Jose.Alcidesgmail.com
${CPF3}  14838645457
${CPF3.2}  79466483838
${SENHA3}  Ja@@3040

${NOME4}  Michael Araujo
${EMAIL4}  Michael.Araujo@gmail.com
${CPF4}  54516421097
${SENHA4}  Ma2135

${NOME5}  Felipe Santos
${EMAIL5}  Felipe.santos@gmail.com
${CPF5}  58638895278
${SENHA5}  Fs@@3040

${NOME6}  Augusto Felipe Santos
${CPF6}  68395313098

${NOME7}  Rafael Lange
${EMAIL7}  Rafael.Lange@gmail.com
${CPF7}  59965363072
${SENHA7}  Rf@@7403

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

Acessar pedido de Imovel
   Go To    url=${IMOVEL}

Digitar nome
    [Arguments]     ${NOME}
    Input Text    locator=name    text=${NOME}

Digitar email
    [Arguments]     ${EMAIL}
    Input Text    locator=emailCad    text=${EMAIL}

Digitar cpf
    [Arguments]     ${CPF}
    Input Text    locator=cpf    text=${CPF}

Digitar senha
    [Arguments]     ${SENHA}
    Input Text    locator=senhaCad    text=${SENHA}

Confirmar senha
    [Arguments]     ${SENHA}
    Input Text    locator=passwordconfirm    text=${SENHA}

Enviar cadastro
    Click Element    locator=sendCadButton

Verificar mensagem de falha no cadastro
	Alert Should Be Present

Verificar se nome do usuário aparece na tela de boas vindas
    [Arguments]     ${FULL_NAME}
	Page Should Contain	Olá, ${FULL_NAME}

Digitar email login
    [Arguments]     ${EMAIL}
    Input Text    locator=nomeLogin    text=${EMAIL}

Digitar senha login
    [Arguments]     ${SENHA}
    Input Text    locator=senhaLogin    text=${SENHA}

Enviar login
    Click Element    locator=sendLoginButton

Digitar Rua "${RUA}"
    Input Text    locator=rua    text=${RUA}

Digitar Numero "${NUM}"
    Input Text    locator=numero    text=${NUM}

Digitar Bairro "${BAIRRO}"
    Input Text    locator=bairro    text=${BAIRRO}

Digitar Cidade "${CIDADE}"
    Input Text    locator=cidade    text=${CIDADE}

Enviar pedido
    Click Element    //*[@id="form"]/input[9]

Verificar Bloqueio de pedido
    Page Should Contain    Solicitar Novo Anuncio
    
    
	
