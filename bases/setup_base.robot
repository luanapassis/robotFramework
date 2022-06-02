*** Settings ***
Library             SeleniumLibrary
Library             SikuliLibrary
Library             ../libs/pywinauto/pywinauto_base_lib.py
Library             ../libs/pyautogui/pyautogui_base_lib.py
Resource            ../resources/resource.robot

*** Keywords ***

#----- ações do selenium -----#
Abrir o browser
    [Arguments]         ${url}
    seleniumLibrary.open browser  browser=${BROWSER}
    seleniumLibrary.Go To               ${url}

Fechar o browser
    #Capture Page Screenshot
    seleniumLibrary.Close Browser


#----- ações do sikuli -----#
Carregar imagens do sikuli
    [Arguments]         ${path}
    SikuliLibrary.Add Image Path  ${path}

Finalizar sessao do sikuli
    SikuliLibrary.Stop Remote Server

#----- ações do pywinauto -----#
Abrir o app desktop
    [Arguments]         ${path}  ${nome_regex}
    pywinauto_abre_aplicacao_desktop  ${path}
    pywinauto_conecta_aplicacao   ${nome_regex}

Conectr ao app desktop
    [Arguments]        ${nome_regex}
    pywinauto_conecta_aplicacao   ${nome_regex}

Fechar aplicacao com pywinauto
    pywinauto close application


#----- ações do pyautogui -----#

Abrir o app desktop com pyautogui
    [Arguments]         ${path}
    pyautogui_abrir_app  ${path}

Fechar aplicacao com pyautogui
    [Arguments]         ${processo}
    pyautogui_fecha_aplicacao  ${processo}