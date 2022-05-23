*** Settings ***
Library     SeleniumLibrary
Library     SikuliLibrary
Resource    ../resources/resource.robot

*** Keywords ***

#----- ações do selenium -----#

Wait Until elemet selenium custom
    [Arguments]  ${locator}
    SeleniumLibrary.wait until page contains element    ${locator}  ${TIMEOUT}
    SeleniumLibrary.wait until element is visible   ${locator}  ${TIMEOUT}
    SeleniumLibrary.wait until element is enabled   ${locator}  ${TIMEOUT}

Take screenshot
    IF    ${SCREENSHOT_EACH_STEP}
        SeleniumLibrary.Set Screenshot Directory    ${DIR_SCREENSHOT}
        SeleniumLibrary.Capture Page Screenshot
    END

Click selenium custom
    [Arguments]  ${locator}
    Wait Until elemet selenium custom    ${locator}
    SeleniumLibrary.click element   ${locator}
    Take screenshot

Send Keys selenium custom
    [Arguments]  ${locator}  ${text}
    Wait Until elemet selenium custom    ${locator}
    SeleniumLibrary.input text  ${locator}  ${text}
    Take screenshot

Get Text selenium custom
    [Arguments]  ${locator}
    Wait Until elemet selenium custom    ${locator}
    ${result}   SeleniumLibrary.get text    ${locator}
    [return]    ${result}
    Take screenshot


#----- ações do sikuli -----#
Wait Until elemet sikuli custom
    [Arguments]  ${image}
    SikuliLibrary.Wait Until Screen Contain     ${image}   ${TIMEOUT}
    SikuliLibrary.Set Move Mouse Delay  ${MOUSE_DELAY}

Click sikuli custom
    [Arguments]  ${image}
    Wait Until elemet sikuli custom     ${image}
    SikuliLibrary.Click  ${image}
    SikuliLibrary.Capture Screen

Click on text sikuli custom
    [Arguments]  ${text}
    SikuliLibrary.Set Move Mouse Delay  ${MOUSE_DELAY}
    SikuliLibrary.Click Text  ${text}
    SikuliLibrary.Capture Screen
