## <center>Arquitetura do Projeto</center>
<h3><center>Python + Robot Framework: </center></h3>
<h3> Libraries Robot: </h3>

* Seleniumlibrary

* Sikulilibrary

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

---------------------------------------------------
<h3> Atualização do Driver do navegador: </h3>
webdrivermanager chrome 

---------------------------------------------------
<h3> Execução dos testes por linha de comando: </h3>

* **robot -T -d "./reports" tests** : Executa todos os testes contidos no diretório tests

* **robot -T -d "./reports" tests/excel_tests.robot** : Executa uma classe de teste específica.


* O parametro -T (--timestampoutputs) gera o nome do relatório nativo do Robot com data e hora da execução.
* O parametro -d (--outputdir) define um diretório para todos os artefatos gerados na execução dos testes.