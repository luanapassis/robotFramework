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
${FORMATAR_NUMERO_OPTIONS}  Formatar Número da Célula||Button
${ALINHAMENTO_ABA}          Alinhamento||TabItem
${COMBO_ALINHAMENTO}        Horizontal:||ComboBox  Centro
${OK_BUTTON}                OK||Button



*** Keywords ***
# Ações

Clicar botao novo
    pywinauto_click  ${BTN_NOVO}

Clicar botao novo documento
    pywinauto_click  ${BTN_NOVO_DOC}

Digitar valor na celcula B3
    [Arguments]          ${text}
    pywinauto_send_keys  ${CELL_B3}  ${text}

Clicar nao salvar documento
    pywinauto click  ${NAO_SALVAR_DOC}

Clicar nao salvar documento usando sikuli
    Click sikuli custom     nao_salvar_button.png

Clicar em formatacao condicional sikuli
    Click sikuli custom     formatacao_condicional_button.PNG

Clicar no texto
    [Arguments]          ${text}
    Click on text sikuli custom  ${text}

Fechar aplicacao
    pywinauto_close_application

Selecinar formatar numero options
    pywinauto click  ${FORMATAR_NUMERO_OPTIONS}

Selecinar aba de alinhamento
    pywinauto click  ${ALINHAMENTO_ABA}

Selecionar combo de alinhamento
    [Arguments]  ${text}
    pywinauto select combo  ${COMBO_ALINHAMENTO}  ${text}

Selecionar ok tela de alinhamento
    pywinauto click  ${OK_BUTTON}

