*** Settings ***
Resource    ../bases/page_base.robot

*** Variables ***
# Mapeamento
${PESQUISA_FIELD}               name=q
${PESQUISAR_BUTTON}             class=gNO89b
${COTACAO_FIELD}                xpath=//*[@class='DFlfde SwHCTb']

*** Keywords ***
# Ações

Pesquisar no google
    [Arguments]          ${text}
    Selenium send Keys custom   ${PESQUISA_FIELD}     ${text}
    Selenium click custom   ${PESQUISAR_BUTTON}

Obter dados da cotacao
    ${retorno_cotacao}  Selenium get text custom    ${COTACAO_FIELD}
    [return]  ${retorno_cotacao}