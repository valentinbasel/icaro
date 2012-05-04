import os, os.path
import sys
import pygtk
pygtk.require ('2.0')

import gtk
if gtk.pygtk_version < (2,10,0):
    print "PyGtk 2.10 or later required for this example"
    raise SystemExit

import gtksourceview2
import pango
class visor_codigo():
    def __init__(self):
        # create buffer
        lm = gtksourceview2.LanguageManager()
        buffer = gtksourceview2.Buffer()
        buffer.set_data('languages-manager', lm)
        view = gtksourceview2.View(buffer)

        self.window = gtk.Window(gtk.WINDOW_TOPLEVEL)
        self.window.set_border_width(0)
        self.window.set_title('codigo fuente generado por el sistema')
        #windows.append(window) # this list contains all view windows
        self.window.set_default_size(500, 500)
        self.window.show()
        
        vbox = gtk.VBox(0, True)
        self.window.add(vbox)
        
        sw = gtk.ScrolledWindow()
        sw.set_shadow_type(gtk.SHADOW_IN)
        sw.add(view)
        vbox.pack_start(sw, fill=True, expand=True)

        toolbar = gtk.HBox(spacing=0)
        vbox.pack_start(toolbar,False,False)
        button = gtk.Button('salir')
        button.connect('clicked',self.close)
        toolbar.pack_start(button,False,False,0)
        vbox.show_all()
        # main loop
        self.open_file(buffer,sys.path[0]+ "/source/user.c")
    def open_file(self,buffer, filename):
        # get the new language for the file mimetype
        manager = buffer.get_data('languages-manager')

        if os.path.isabs(filename):
            path = filename
        else:
            path = os.path.abspath(filename)

        language = manager.guess_language(filename)
        if language:
            buffer.set_highlight_syntax(True)
            buffer.set_language(language)
        else:
            print 'No language found for file "%s"' % filename
            buffer.set_highlight_syntax(False)

        #remove_all_marks(buffer)
        self.load_file(buffer, path) # TODO: check return
        return True
    def load_file(self,buffer, path):
        buffer.begin_not_undoable_action()
        try:
            txt = open(path).read()
        except:
            return False
        buffer.set_text(txt)
        buffer.set_data('filename', path)
        buffer.end_not_undoable_action()

        buffer.set_modified(False)
        buffer.place_cursor(buffer.get_start_iter())
        return True
    def close(self,arg):
        #~ gtk.main_quit()
        self.window.hide()

    
#~ VI= visor_codigo()
#~ VI.window.show_all()
#~ gtk.main()        

#if __name__ == '__main__':
#    
#    if '--debug' in sys.argv:
#        import pdb
#        pdb.run('main(sys.argv)')
#    else:
#        main(sys.argv)
