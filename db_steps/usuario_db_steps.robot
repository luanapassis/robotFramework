*** Settings ***
Library     OperatingSystem
Library     String
Resource    ../utils/db_utils.robot

*** Keywords ***
Consulta usuario no banco de dados
    [Arguments]  ${usuario}
    ${query}=   OperatingSystem.Get File  ${EXECDIR}/queries/consultar_usuario.sql
    ${query}=   Replace String   ${query}   $username   ${usuario}
    ${resultado_query}=  Retorna dados query  ${query}
    [Return]  ${resultado_query}


Insere usuario no banco de dados
    Executa query  ${EXECDIR}/queries/inserir_usuario.sql