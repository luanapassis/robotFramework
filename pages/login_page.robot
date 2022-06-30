*** Settings ***
Resource    ../bases/page_base.robot

*** Variables ***
# Mapeamento
${HOME_URL}                 https://mantis-prova.base2.com.br/login_page.php
${USER_FIELD}               name=username
${PASSWORD_FIELD}           name=password
${SUBMIT_BUTTON}            xpath=//*[@type='submit']
${ERRO_MSG}                 xpath=//*[@class='alert alert-danger']/p

*** Keywords ***
# Ações

Digitar usuario "${usuario}"
    Selenium send Keys custom  ${USER_FIELD}     ${usuario}

Digitar senha
    [Arguments]         ${senha}
    Selenium send Keys custom   ${PASSWORD_FIELD}     ${senha}

Clicar no botao login
    Selenium click custom  ${SUBMIT_BUTTON}

Retornar mensagem de erro
    ${result}  Selenium get text custom   ${ERRO_MSG}
    [return]  ${result}

