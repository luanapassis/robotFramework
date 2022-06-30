*** Variables ***

*** Settings ***
Resource            ../bases/setup_base.robot
Resource            ../pages/excel_page.robot

Test Setup          Carregar imagens do sikuli  ${EXECDIR}/images
Suite Teardown      Finalizar sessao do sikuli

*** Test Cases ***

#
#Abre o excel com pyautogui
#    FOR    ${i}    IN RANGE    2
#        Fluxo com Pyautogui
#        Fechar aplicacao com pyautogui  Excel.exe
#    END

Abre o excel com pywinauto
    FOR    ${i}    IN RANGE    30
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
        Fechar aplicacao com pywinauto
        #Clicar nao salvar documento
        Clicar nao salvar documento usando sikuli
    END

Teste sikuli
    FOR    ${i}    IN RANGE    30
        Abrir o app desktop  C:/Program Files/Microsoft Office/root/Office16/EXCEL.EXE      .*Excel
        Fluxo com sikuly
        Fechar aplicacao com pywinauto
        Clicar nao salvar documento usando sikuli
    END






