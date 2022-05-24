*** Variables ***

${url}      https://www.google.com/

*** Settings ***
Resource            ../bases/test_base.robot
Resource            ../pages/google_page.robot
Resource            ../resources/resource.robot
Resource            ../pages/excel_page.robot

*** Test Cases ***

Buscar cotacao e salvar no excel
    Carregar imagens do sikuli  ${EXECDIR}/images/excel
    Abrir o browser  ${url}
    Pesquisar no google  Cotacao dolar americano
    ${cotacao_obtida}=  Obter dados da cotacao
    Fechar o browser
    Abrir o app desktop  C:/Program Files/Microsoft Office/root/Office16/EXCEL.EXE      .*Excel
    Clicar botao novo
    Clicar botao novo documento
    Digitar valor na celula especifica  2  B  A cotação do dia hoje é: {ENTER}
    Clicar na celula especifica  2  B
    Clicar em quebrar texto automaticamente
    Digitar valor na celula especifica  2  C  ${cotacao_obtida}
    Fechar aplicacao
    Clicar nao salvar documento usando sikuli
    Finalizar sessao do sikuli