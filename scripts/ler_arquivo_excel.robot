*** Settings ***
Library    RPA.Tables
Library    RPA.Excel.Files
Library    RPA.HTTP
Library    OperatingSystem


*** Test Cases ***

Teste ler excel rpa

    Download   https://www.rpachallenge.com/assets/downloadFiles/challenge.xlsx   overwrite=True   target_file=downloads

    ${file} =	List Files In Directory	 path=${EXECDIR}/downloads   pattern=*.xlsx
    Log   ${file}

    Open Workbook     ${EXECDIR}/downloads/${file[0]}

    #exemplo buscando uma celula específica
    ${column1}=    Get cell value    1    A

    #lê toda aba da planilha  com cabeçalho
    ${table}=    read_worksheet_as_table   name=Sheet1   header=True
    Log  ${table}
    ${count}=   Get Length   ${table}
    Log   ${count}
    FOR  ${item}  IN  @{table}
        Log to console  ${item}[First Name]
        Log to console  ${item}[Last Name]
        Log to console  ${item}[Company Name]
        Log to console  ${item}[Address]
        Log to console  ${item}[Email]
        Log to console  ${item}[Phone Number]
    END

