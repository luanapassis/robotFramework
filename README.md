## <center>Arquitetura do Projeto</center>
<h3><center>Python + Robot Framework: </center></h3>
<h3> Libraries Robot: </h3>

* Seleniumlibrary

* Sikulilibrary

* RequestsLibrary

<h3> Libraries Robot: </h3>

* Pywinauto

* Pyautogui

---------------------------------------------------
<h3> Características: </h3>

Projeto construído em Python para suportar automação 
de sistemas Web, Desktop e interações com o sistema operacial.

- Linguagem de desenvolvimento - Python

- Versão do Python - 3.10

- Ambiente de desenvolvimento - PyCharm Community

- Gerenciamento de dependência - PipEnv

- Framework de automação - Robot Framework

---------------------------------------------------
<h3> Documentações relevantes: </h3>

* Documentação do Robot Framework: https://robotframework.org/ 
* Documentação do Pywinauto: https://pywinauto.readthedocs.io/en/latest/contents.html
* Documentação do Pyautogui: https://pyautogui.readthedocs.io/en/latest/
* Documentação do Sikuli Library: http://rainmanwy.github.io/robotframework-SikuliLibrary/doc/SikuliLibrary.html
* Documentação do Selenium Library: https://robotframework.org/SeleniumLibrary/SeleniumLibrary.html
* Documentação do Requests Library: https://marketsquare.github.io/robotframework-requests/doc/RequestsLibrary.html

---------------------------------------------------
<h3> Atualização do Driver do navegador: </h3>

webdrivermanager firefox --linkpath  C:\caminho do projeto

webdrivermanager chrome --linkpath  C:\caminho do projeto

webdrivermanager opera --linkpath  C:\caminho do projeto

Edge e Ie recomenda-se o download manual

---------------------------------------------------
<h3> Execução dos testes por linha de comando: </h3>

* **robot -T -d "./reports" scripts** : Executa todos os testes contidos no diretório scripts

* **robot -T -d "./reports" scripts/excel_scripts.robot** : Executa uma classe de scripts específica.


* O parametro -T (--timestampoutputs) gera o nome do relatório nativo do Robot com data e hora da execução.
* O parametro -d (--outputdir) define um diretório para todos os artefatos gerados na execução dos scripts.