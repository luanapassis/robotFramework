*** Variables ***

*** Settings ***
Resource            ../bases/test_base.robot
Resource            ../pages/excel_page.robot
Library             ../libs/pywinauto/pywinauto_base_lib.py
Library             ../libs/pyautogui/pyautogui_lib.py

Test Setup          Carregar imagens do sikuli  ${EXECDIR}/images/excel
Suite Teardown      Finalizar sessao do sikuli

*** Test Cases ***

#Abre o excel com pyautogui
#    pyautogui customizado

Abre o excel com pywinauto
    Abrir o app desktop  C:/Program Files/Microsoft Office/root/Office16/EXCEL.EXE      .*Excel
    Clicar botao novo
    Clicar botao novo documento
    Selecinar formatar numero options
    Selecinar aba de alinhamento
    Selecionar combo de alinhamento  Centro
    Selecionar ok tela de alinhamento
    Digitar valor na celcula B3  texto qualquer {ENTER}
    Clicar no texto  Inserir
    Clicar no texto  Pagina Inicial
    Clicar em formatacao condicional sikuli
    Fechar aplicacao
    #Clicar nao salvar documento
    Clicar nao salvar documento usando sikuli







