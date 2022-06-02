from pywinauto.application import Application
from robot.api.deco import keyword, library


@library
class pywinauto_base_lib:

    def __init__(self):
        self.app = ""
        self.timeout = 120

    @keyword()
    def pywinauto_abre_aplicacao_desktop(self, path):
        self.app = Application(backend="uia").start(path, timeout=self.timeout)

    @keyword()
    def pywinauto_conecta_aplicacao(self, nome_regex):
        self.app = Application(backend="uia").connect(title_re=nome_regex, timeout=self.timeout)
        self.app = self.app.window(title_re=nome_regex)
        self.app.maximize()

    @keyword()
    def pywinauto_click(self, element):
        control = self.app[element].wait('exists enabled visible ready', timeout=self.timeout)
        control.click_input()

    @keyword
    def pywinauto_send_keys(self, element, text):
        control = self.app[element].wait('exists enabled visible ready', timeout=self.timeout)
        control.click_input()
        control.type_keys(text, pause=0.02, with_spaces=True, with_tabs=True, with_newlines=True,
                          turn_off_numlock=True)

    @keyword
    def pywinauto_select_combo(self, element, text):
        control = self.app[element].wait('exists enabled visible ready', timeout=self.timeout)
        control.select(text)

    @keyword
    def pywinauto_close_application(self):
        # self.app = self.app.window(title_re=".*Excel")
        # self.app.kill()
        self.app.type_keys("%{F4}")


