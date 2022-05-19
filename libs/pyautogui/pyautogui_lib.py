import os

import pyautogui
from robot.api.deco import keyword, library


@library
class pyautogui_lib:

    @keyword()
    def pyautogui_customizado(self):
        os.startfile("C:/Program Files/Microsoft Office/root/Office16/EXCEL.EXE")
        pyautogui.sleep(5)
        pyautogui.press(["ctrl", "n"])
        pyautogui.press("enter")
        pyautogui.sleep(1)
        pyautogui.click('images/formatacao_condicional_button.PNG')
        os.system("TASKKILL /F /IM Excel.exe")
