*** Settings ***
Library     DatabaseLibrary
Resource    ../resources/resource.robot

*** Keywords ***
Retorna dados query
    [Arguments]  ${query}
    Conectar no banco
    ${resultado}=  query    selectStatement=${query}
    [return]  ${resultado}
    Desconectar do banco

Executa query
    [Arguments]  ${query}
    Conectar no banco
    Execute SQL Script  ${query}
    Desconectar do banco

Conectar no banco
    Connect To Database   dbapiModuleName=${DB_MODULE_NAME}   dbName=${DB_NAME}   dbUsername=${DB_USER_NAME}   dbPassword=${DB_PASSWORD}   dbHost=${DB_HOST}   dbPort=${DB_PORT}

Desconectar do banco
    disconnect from database
