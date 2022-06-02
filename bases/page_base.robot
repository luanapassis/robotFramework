*** Settings ***
Library     SeleniumLibrary
Library     SikuliLibrary
Library     ../libs/pywinauto/pywinauto_base_lib.py
Library     ../libs/pyautogui/pyautogui_base_lib.py
Resource    ../resources/resource.robot

*** Keywords ***

#----- ações do selenium -----#

Selenium Wait Until elemet custom
    [Arguments]  ${locator}
    SeleniumLibrary.wait until page contains element    ${locator}  ${TIMEOUT}
    SeleniumLibrary.wait until element is visible   ${locator}  ${TIMEOUT}
    SeleniumLibrary.wait until element is enabled   ${locator}  ${TIMEOUT}

Selenium take screenshot custom
    IF    ${SCREENSHOT_EACH_STEP}
        SeleniumLibrary.Set Screenshot Directory    ${DIR_SCREENSHOT}
        SeleniumLibrary.Capture Page Screenshot
    END

Selenium click custom
    [Arguments]  ${locator}
    Selenium Wait Until elemet custom    ${locator}
    SeleniumLibrary.click element   ${locator}
    Selenium take screenshot custom

Selenium send Keys custom
    [Arguments]  ${locator}  ${text}
    Selenium Wait Until elemet custom    ${locator}
    SeleniumLibrary.input text  ${locator}  ${text}
    Selenium take screenshot custom

Selenium get text custom
    [Arguments]  ${locator}
    Selenium Wait Until elemet custom    ${locator}
    ${result}   SeleniumLibrary.get text    ${locator}
    [return]    ${result}
    Selenium take screenshot custom


#----- ações do sikuli -----#
Sikuli Wait Until elemet custom
    [Arguments]  ${image}
    SikuliLibrary.Wait Until Screen Contain     ${image}   ${TIMEOUT}
    SikuliLibrary.Set Move Mouse Delay  ${MOUSE_DELAY}

Sikuli Take screenshot custom
    IF    ${SCREENSHOT_EACH_STEP}
        SikuliLibrary.Capture Screen
    END

Sikuli click custom
    [Arguments]  ${image}
    Sikuli Wait Until elemet custom     ${image}
    SikuliLibrary.Click  ${image}
    Sikuli Take screenshot custom

Sikuli click on text custom
    [Arguments]  ${text}
    SikuliLibrary.Set Move Mouse Delay  ${MOUSE_DELAY}
    SikuliLibrary.Click Text  ${text}
    Sikuli Take screenshot custom

#----- ações do pywinauto -----#
pywinauto click custom
    [Arguments]  ${locator}
    pywinauto_click  ${locator}
    Sikuli Take screenshot custom

pywinauto send keys custom
    [Arguments]  ${locator}  ${text}
    pywinauto_send_keys  ${locator}  ${text}
    Sikuli Take screenshot custom

pywinauto select combo custom
    [Arguments]  ${locator}  ${text}
    pywinauto_select_combo  ${locator}  ${text}
    Sikuli Take screenshot custom

#----- ações do pyautogui -----#
pyautogui seleep custom
    [Arguments]  ${seconds}
    pyautogui_sleep  ${seconds}

pyautogui press custom
    [Arguments]  ${key}
    pyautogui_press  ${key}
    Sikuli Take screenshot custom

pyautogui click imagem custom
    [Arguments]  ${path_imagem}
    pyautogui_click_imagem     ${path_imagem}
    Sikuli Take screenshot custom

pyautogui click coordenadas custom
    [Arguments]  ${x}  ${y}
    pyautogui_click_coordenadas     ${x}  ${y}
    Sikuli Take screenshot custom

pyautogui send keys custom
    [Arguments]  ${text}
    pyautogui_send_keys  ${text}
    Sikuli Take screenshot custom

