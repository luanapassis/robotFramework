from pywinauto.application import Application

#https://pywinauto-recorder.readthedocs.io/en/latest/

#abre aplicação
app = Application(backend="uia").start("C:/Program Files/Microsoft Office/root/Office16/EXCEL.EXE", timeout=50)
#conecta na aplicação
app = Application(backend="uia").connect(title_re=".*Excel", timeout=50)
app = app.window(title_re=".*Excel")

#passos até chegar na tela onde deseja listar os elementos da arvore
btnNovo = app.child_window(title="Novo", control_type="ListItem").wrapper_object()
btnNovo.click_input()
btnNovoDoc = app["Pasta de trabalho em branco||ListItem"].wait('exists enabled visible ready', timeout=30)
btnNovoDoc.click_input()

#lista no console os elementos da arvore na tela atual
app.print_control_identifiers()





