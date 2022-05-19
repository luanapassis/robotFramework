*** Settings ***
Resource    ../bases/page_base.robot

*** Variables ***
# Mapeamento
${HOME_URL}                 https://mantis-prova.base2.com.br/login_page.php
${USER_FIELD}               name=username
${PASSWORD_FIELD}           name=password
${SUBMIT_BUTTON}            class=button
${ERRO_MSG}                 xpath=//*[contains (text(), 'disabled')]

*** Keywords ***
# Ações

Digitar usuario "${usuario}"
    #Input Text          ${USER_FIELD}     ${usuario}
    Send Keys selenium custom   ${USER_FIELD}     ${usuario}

Digitar senha
    [Arguments]         ${senha}
    #Input Text          ${PASSWORD_FIELD}     ${senha}
    Send Keys selenium custom   ${PASSWORD_FIELD}     ${senha}

Clicar no botao login
    #Click Element       ${SUBMIT_BUTTON}
    Click selenium custom  ${SUBMIT_BUTTON}

Retornar mensagem de erro
    ${result}  Get Text selenium custom            ${ERRO_MSG}
    [return]  ${result}

