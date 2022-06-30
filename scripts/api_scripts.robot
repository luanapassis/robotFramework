*** Settings ***
Library         RequestsLibrary
Library         Collections
Library         OperatingSystem
Library         JSONLibrary
Library         String

*** Test Cases ***
Realiza get com query parameters
    create session  serveRest  https://serverest.dev
    ${response}=  GET On Session   serveRest  /usuarios    params=nome=Fulano da Silva

    Log To Console   -->> retorno da pesquisa
    Log To Console   ${response.text}

Realizar Post request
    create session  petStore  https://petstore.swagger.io
    ${header}    Create Dictionary  Content-Type=application/json
    ${json}=   Load JSON From File   ${EXECDIR}/jsons/pet_post.json
    #log to console  ${json}
    ${response}=  POST On Session    petStore    /v2/pet    json=${json}   headers=${header}

    ${id_pet}=    Get from Dictionary     ${response.json()}    id
    Log To Console   -->> Id do pet
    Log To Console   ${id_pet}

    ${category_name}=    Get from Dictionary     ${response.json()['category']}    name
    Log To Console   -->> Nome da categoria
    Log To Console   ${category_name}

Realizar Get request
    create session  petStore  https://petstore.swagger.io
    ${response}=  GET On Session   petStore  /v2/pet/8899
    Log To Console    --->Resultado Completo: ${response.text}

Realizar Put request
    create session  petStore  https://petstore.swagger.io
    ${header}    Create Dictionary  Content-Type=application/json
    ${json}=   Load JSON From File   ${EXECDIR}/jsons/pet_put.json
    ${json}=   Set To Dictionary   ${json}   name=Xuxa

    Log To Console   -->> Nome do pet alterado
    Log To Console   ${json}

    ${response}=  put on session    petStore    /v2/pet    json=${json}   headers=${header}

    ${pet_name}=    Get from Dictionary     ${response.json()}    name
    Log To Console   -->> Nome do pet
    Log To Console   ${pet_name}

Realizar Delete request
    create session  petStore  https://petstore.swagger.io
    ${response}=  delete on session    petStore    /v2/pet/8899

    ${code}=    Get from Dictionary     ${response.json()}    code
    Log To Console   -->> retorno do delete
    Log To Console   ${code}






