*** Settings ***
Resource    ../db_steps/usuario_db_steps.robot

*** Test Cases ***
Conectar no banco de dados

    #Insere usuario no banco de dados

    ${resultado_query}=   Consulta usuario no banco de dados  usuario1
    Log To Console    --->Resultado Completo: ${resultado_query}
    Log To Console    --->Resultado específico: ${resultado_query[0][3]}

