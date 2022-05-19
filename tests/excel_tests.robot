*** Variables ***

*** Settings ***
Resource            ../bases/test_base.robot
Resource            ../pages/excel_page.robot
Library             ../libs/pywinauto/pywinauto_base_lib.py
Library             ../libs/pyautogui/pyautogui_lib.py

Test Setup          Carrega imagens do sikuli  ${EXECDIR}/images/excel
Suite Teardown      Finaliza sessao do sikuli

*** Test Cases ***

#Abre o excel com pyautogui
#    pyautogui customizado

Abre o excel com pywinauto
    Abrir o app desktop  C:/Program Files/Microsoft Office/root/Office16/EXCEL.EXE      .*Excel
    Clicar botao novo
    Clicar botao novo documento
    Digita valor na celcula B3  texto qualquer {ENTER}
    Clica no texto  Inserir
    Clica no texto  Pagina Inicial
    Clica em formatacao condicional sikuli
    Fechar aplicacao
    #Clica nao salvar documento
    Clica nao salvar documento usando sikuli







