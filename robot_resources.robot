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
   Click Element    locator=lasts-li

Preencher login
    Input Text    locator=name    text=Augusto Santos
    Input Text    locator=emailCad    text=Augusto.santos@gmail.com
    Input Text    locator=cpf    text=46078980408
    Input Text    locator=senhaCad    text=As@@3040
    Input Text    locator=passwordconfirm    text=As@@3040
    Click Element    locator=sendCadButton
