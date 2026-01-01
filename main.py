import sys
import PyQt6.QtWidgets as qt6
import numpy as np

#My own Modules
from Ui.mainWindow import MainWindow
from Logic.dbWrapper import dbWrapper

app = qt6.QApplication(sys.argv)

window = MainWindow()

window.show()

dbWrap = dbWrapper()

dbWrap.newCircuit()

app.exec()