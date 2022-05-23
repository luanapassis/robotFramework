*** Settings ***
Library             SeleniumLibrary
Library             ../libs/pywinauto/pywinauto_base_lib.py
Library             SikuliLibrary

*** Keywords ***

#----- ações do selenium -----#
Abrir o browser
    [Arguments]         ${url}
    seleniumLibrary.open browser  browser=chrome
    seleniumLibrary.Go To               ${url}

Fechar o browser
    #Capture Page Screenshot
    seleniumLibrary.Close Browser

Abrir o app desktop
    [Arguments]         ${path}  ${nome_regex}
    pywinauto_abre_aplicacao_desktop  ${path}
    pywinauto_conecta_aplicacao   ${nome_regex}


#----- ações do sikuli -----#
Carregar imagens do sikuli
    [Arguments]         ${path}
    SikuliLibrary.Add Image Path  ${path}

Finalizar sessao do sikuli
    SikuliLibrary.Stop Remote Server
