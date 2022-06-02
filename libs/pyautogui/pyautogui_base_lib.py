import os

import pyautogui
from robot.api.deco import keyword, library


@library
class pyautogui_base_lib:

    @keyword()
    def pyautogui_abrir_app(self, path):
        os.startfile(path)

    @keyword()
    def pyautogui_sleep(self, seconds):
        pyautogui.sleep(seconds)

    @keyword()
    def pyautogui_press(self, keys):
        pyautogui.press(keys)

    @keyword()
    def pyautogui_click_imagem(self, path_imagem):
        pyautogui.click(path_imagem)

    @keyword()
    def pyautogui_click_coordenadas(self, x, y):
        pyautogui.click(x, y)

    @keyword()
    def pyautogui_send_keys(self, text):
        pyautogui.write(text)

    @keyword()
    def pyautogui_fecha_aplicacao(self, processo):
        os.system("TASKKILL /F /IM " + processo)  # Excel.exe

    @keyword()
    def retorna_x_y(self):
        # Deixar o mouse sobre o local desejado e executar a função
        # utilizando Ctrl + Shft + F10
        # o resultado sairá no console
        print(pyautogui.position())
