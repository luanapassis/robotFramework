*** Settings ***
Library             ../libs/pywinauto/pywinauto_base_lib.py
Resource            ../bases/page_base.robot
Library             SikuliLibrary

*** Variables ***
# Mapeamento
${BTN_NOVO}                 Novo
${BTN_NOVO_DOC}             Pasta de trabalho em branco||ListItem
${CELL_B3}                  \"B\" 3||DataItem
${NAO_SALVAR_DOC}           Não Salvar||Button

*** Keywords ***
# Ações

Clicar botao novo
    pywinauto_click  ${BTN_NOVO}

Clicar botao novo documento
    pywinauto_click  ${BTN_NOVO_DOC}

Digita valor na celcula B3
    [Arguments]          ${text}
    pywinauto_send_keys  ${CELL_B3}  ${text}

Clica nao salvar documento
    pywinauto click  ${NAO_SALVAR_DOC}

Clica nao salvar documento usando sikuli
    Click sikuli custom     nao_salvar_button.png

Clica em formatacao condicional sikuli
    Click sikuli custom     formatacao_condicional_button.PNG

Clica no texto
    [Arguments]          ${text}
    Click on text sikuli custom  ${text}

Fechar aplicacao
    pywinauto_close_application