#!/usr/bin/python3
# -*- coding: utf-8 -*-

''' Edit this module at will to create custom widgets that can send TC or
    receive TM - and do anything you like with the data.
    (c) 2016-2021 European Space Agency / Maxime Perrotin
'''

import sys
import os
import importlib


from PySide2.QtCore import *
from PySide2.QtGui import *
from PySide2.QtWidgets import *

from asn1_value_editor import UserWidgetsCommon

# ** IMPORTANT **
# you must list here the classes you want to expose to the GUI:
__all__ = ['CustomTC_Widget', 'CustomTM_Widget']


class CustomTC_Widget(UserWidgetsCommon.TC):
    ''' Fill / mimick this class to create a custom TC widget '''
    name = 'My TC Widget' # name on the GUI combo button

    def __init__(self, asn1_typename, parent):
        ''' Initialise the widget '''
        super(CustomTC_Widget, self).__init__(asn1_typename, parent)
        self._asn1_typename = asn1_typename

        # examples of widgets
        #self.widget = QListWidget()
        #self.widget.itemClicked.connect(self.select)
        #self.setWidget(self.widget)

        #self.widget = QPushButton(asn1_typename)
        #self.widget.clicked.connect(self.clicked))
        #self.setWidget(self.widget)

        # parent is the ASN.1 value editor
        self.parent = parent
        self.setWindowTitle("My Window")
        self.show()

    @staticmethod
    def applicable():
        ''' Return True to activate this widget '''
        return True

    @staticmethod
    def editorIsApplicable(editor):
        ''' Return true if this particular editor is compatible with this
        widget'''
        # use editor.messageName (string) to identify the PI name
        # e.g. return editor.messageName == "Telecommand"
        return False

    def select(self, item):
        ''' Called when user clicks on a line of the table '''
        #self.parent.asn1Instance.SetData(native_asn1scc._ptr)

    def clicked(self):
        ''' Called when user clicks on the button '''
        # Get the ASN.1 value from the database (in native an1scc format)
        # self.parent.getVariable(dest=self.parent.asn1Instance)

       #self.parent.tmToEditor(emit_msc=False)

    def onUpdateButtonClick(self, lineNb):
        ''' When user clicks on Update, the content of the selected TC will
        be used to feed the main GUI TC editor '''
        #self.update.emit(as_asn1)   # use signal to send data to the GUI

    def onSendButtonClick(self, lineNb):
        ''' When user clicks on Send, the selected TC will be sent to the
        running application '''
        #self.send.emit(as_asn1)   # use signal to send data to the GUI


class CustomTM_Widget(UserWidgetsCommon.TM):
    '''Save telemetries in the database'''
    name = 'My Widget'  # name for the combo button in the GUI

    def __init__(self, parent=None):
        ''' Initialise the widget '''
        super(CustomTM_Widget, self).__init__(parent)
        self.hide()

    @Slot()
    def new_tm(self):
        ''' Slot called when a TM has been received in the editor '''
        # Nothing to do, the update() function does nothing thread-related
        # that would need to be done here
        print('Recorded a new TM in the database')

    def update(self, value):
        ''' Receive ASN.1 value '''
        # use e.g. value.Get().. (see ASN.1 Python API)
        pass

    @staticmethod
    def applicable():
        ''' Return True to enable this widget '''
        return True

    @staticmethod
    def editorIsApplicable(editor):
        ''' Return true if this particular editor is compatible with this
        widget'''
        # e.g. return editor.messageName == "Update_Grid"
        return False


if __name__ == '__main__':
    print('This module can only be imported from the main TASTE guis')
    sys.exit(-1)
