*** Variables ***

${url}      https://mantis-prova.base2.com.br/login_page.php

*** Settings ***
Resource            ../bases/setup_base.robot
Resource            ../pages/login_page.robot
Resource            ../resources/resource.robot

#Suite Setup         Abrir o browser
#Suite Teardown      Fechar o browser
Test Setup       Abrir o browser  ${url}
Test Teardown    Fechar o browser


*** Test Cases ***

Realizar login no Mantis com insucesso
    ${mensagemEsperada}=  Set Variable  Sua conta pode estar desativada ou bloqueada ou o nome de usuário e a senha que você digitou não estão corretos.
    ${mensagemParcial}=  Set Variable  desativada
    Digitar usuario "${USUARIO}"
    Clicar no botao login
    Digitar senha  ${SENHA}
    Clicar no botao login
    ${mensagemRecebida}=  Retornar mensagem de erro
    Should be equal    ${mensagemRecebida}    ${mensagemEsperada}
    Should_contain  ${mensagemRecebida}  ${mensagemParcial}


Realizar login no Mantis com susucesso
    ${mensagemEsperada}=  Set Variable  Sua conta pode estar desativada ou bloqueada ou o nome de usuário e a senha que você digitou não estão corretos.
    ${mensagemParcial}=  Set Variable  desativada
    Digitar usuario "${USUARIO}"
    Clicar no botao login
    Digitar senha  ${SENHA}
    Clicar no botao login
    ${mensagemRecebida}=  Retornar mensagem de erro
    Should be equal    ${mensagemRecebida}    ${mensagemEsperada}
    Should_contain  ${mensagemRecebida}  ${mensagemParcial}


