*** Settings ***
Library         RequestsLibrary

*** Keywords ***
Conectar API
    [Arguments]   ${alias}   ${base_url}
    create session  ${alias}   ${base_url}
