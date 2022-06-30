*** Variables ***

${url}      https://mantis-prova.base2.com.br/login_page.php

*** Settings ***
Library             DataDriver   ../datadriven/data.csv
Resource            ../bases/setup_base.robot
Resource            ../pages/login_page.robot
Resource            ../resources/resource.robot

Test Setup       Abrir o browser  ${url}
Test Teardown    Fechar o browser

Test Template       Realizar login com data driven

*** Test Cases ***
Faz login csv      ${usuario}     ${senha}

*** Keywords ***
Realizar login com data driven
    [Arguments]    ${usuario}   ${senha}
    ${mensagemEsperada}=  Set Variable  Sua conta pode estar desativada ou bloqueada ou o nome de usuário e a senha que você digitou não estão corretos.
    ${mensagemParcial}=  Set Variable  desativada
    Digitar usuario "${usuario}"
    Clicar no botao login
    Digitar senha  ${senha}
    Clicar no botao login
    ${mensagemRecebida}=  Retornar mensagem de erro
    Should be equal    ${mensagemRecebida}    ${mensagemEsperada}
    Should_contain  ${mensagemRecebida}  ${mensagemParcial}