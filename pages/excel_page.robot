*** Settings ***

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
${QUEBRA_TEXTO_BUTTON}      Quebrar Texto Automaticamente||Button


*** Keywords ***
# Ações

Clicar botao novo
    pywinauto click custom  ${BTN_NOVO}

Clicar botao novo documento
    pywinauto click custom  ${BTN_NOVO_DOC}

Digitar valor na celcula B3
    [Arguments]          ${text}
    pywinauto send keys custom  ${CELL_B3}  ${text}

Obter Celular especifica
    [Arguments]          ${coluna}  ${linha}
    ${celula}=  Set Variable  \"${coluna}\" ${linha}||DataItem
    [return]  ${celula}

Digitar valor na celula especifica
    [Arguments]          ${linha}  ${coluna}  ${text}
    ${celula}=   Obter Celular especifica  ${coluna}  ${linha}
    pywinauto send keys custom  ${celula}  ${text}

Clicar na celula especifica
    [Arguments]          ${linha}  ${coluna}
    ${celula}=   Obter Celular especifica  ${coluna}  ${linha}
    pywinauto click custom  ${celula}

Clicar nao salvar documento
    pywinauto click custom  ${NAO_SALVAR_DOC}

Clicar nao salvar documento usando sikuli
    Sikuli click custom     nao_salvar_button.png

Clicar em formatacao condicional sikuli
    Sikuli click custom    formatacao_condicional_button.PNG

Clicar no texto
    [Arguments]          ${text}
    Sikuli click on text custom  ${text}

Selecinar formatar numero options
    pywinauto click custom  ${FORMATAR_NUMERO_OPTIONS}

Selecinar aba de alinhamento
    pywinauto click custom  ${ALINHAMENTO_ABA}

Selecionar combo de alinhamento
    [Arguments]  ${text}
    pywinauto select combo custom  ${COMBO_ALINHAMENTO}  ${text}

Selecionar ok tela de alinhamento
    pywinauto click custom  ${OK_BUTTON}

Clicar em quebrar texto automaticamente
    pywinauto click custom  ${QUEBRA_TEXTO_BUTTON}

Fluxo com Pyautogui
    #não é boa prática incluir valores na page nem construir fluxos completos, mas é só um teste
    pyautogui click coordenadas custom   ${21}   ${747}
    pyautogui send keys custom  excel
    pyautogui press custom  enter
    pyautogui seleep custom  ${5}
    pyautogui press custom  ["ctrl", "n"]
    pyautogui press custom  enter
    pyautogui seleep custom  ${5}
    #pyautogui click imagem custom  ${EXECDIR}/images/excel/formatacao_condicional_button.PNG
    Clicar em formatacao condicional sikuli
    pyautogui seleep custom  ${5}
