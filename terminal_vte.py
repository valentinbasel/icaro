#!/usr/bin/env python
# -*- coding: utf-8 -*-
#
#  test_terminal_vte.py
#
#  Copyright 2015 valentin basel <vbasel@localhost.localdomain>
#
#  This program is free software; you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation; either version 2 of the License, or
#  (at your option) any later version.
#
#  This program is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with this program; if not, write to the Free Software
#  Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston,
#  MA 02110-1301, USA.
#
#
import sys
import gtk
import vte
from .utilidades_ventana import UTILIDADES


class TERM_CLEMENTE:
    """ Class doc """

    def __init__(self,prt):
        """ Class initialiser """
        src = sys.path[0]
        cad=prt
        mens = UTILIDADES()
        window = gtk.Window()
        window.set_title("pyshell")
        window.set_default_size(800, 480)
        scroll = gtk.ScrolledWindow()
        shell = vte.Terminal()
        shell.connect("child-exited", gtk.main_quit)
        shell.fork_command()
        shell.feed_child(cad)
        scroll.add(shell)
        window.add(scroll)
        window.connect('delete-event', lambda x: window.hide())
        window.show_all()

#~ gtk.main()
