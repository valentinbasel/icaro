#!/usr/bin/env python
# -*- coding: utf-8 -*-

"""-------------------------------------------------------------------------
 pinguino

             (c) 2008-2009 Jean-Pierre MANDON <jp.mandon@gmail.com> 

    This library is free software; you can redistribute it and/or
    modify it under the terms of the GNU Lesser General Public
    License as published by the Free Software Foundation; either
    version 2.1 of the License, or (at your option) any later version.

    This library is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
    Lesser General Public License for more details.

    You should have received a copy of the GNU Lesser General Public
    License along with this library; if not, write to the Free Software
    Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301  USA
-------------------------------------------------------------------------"""

# $Id: pinguino.py,v beta 2008/09/05 21:36:00 mandon
# ----------------------------------------------------
# $Id: pinguino.py,v beta 1 2008/09/06 15:03:00 mandon
# replaced splittext by split on save in module editeur
# bug 02 replaced sys.path[0] by sys.path[0].replace(" ","\\ ") for path with spaces only for the linker !!
# jean-pierre mandon / guillaume stagnaro
# ----------------------------------------------------
# $Id: pinguino.py,v beta 2 2008/09/19 22:45:00 mandon
# added support of analogRead instruction in ReplaceWord
# ----------------------------------------------------
# $Id: pinguino.py,v beta 3 2008/10/12 22:45:00 mandon
# added support of USB
# modified digitalWrite, digitalRead and pinMode for better compatibility
# ----------------------------------------------------
# $Id: pinguino.py,v beta 3.1 2008/10/17 22:45:00 mandon
# coorected a bug on analogRead for MAC OS X
# ----------------------------------------------------
# $Id: pinguino.py,v beta 4 2008/11/02 21:40:00 mandon
# full support of USB Bulk
# modified buffer for USB up to 2 MBytes/second
# ----------------------------------------------------
# $Id: pinguino.py,v beta 5 2009/03/08 19:41:00 mandon
# full support of User Interrupt
# About dialog modified
# possibility to include libraries #include "mylib.c" work now
# implementation of millis() instruction
# implementation of fast analogWrite on output 11 and 12 ( 3khz PWM ) with 10 bits resolution ( 0..1023 )
# variable initialisation is now possible in the head of the program
# ----------------------------------------------------
# $Id: pinguino.py,v beta 6 2009/08/12 19:41:00 mandon
# full support of UTF8
# I2C functions
# eeprom write and read function
# support of 4800 bauds for serial
# added CTRL-ESC for inline help in editor
# ----------------------------------------------------
# $Id: pinguino.py,v beta 7 2009/08/22 17:01:00 mandon
# full support of 18F4550 with #define PIC18F4550 in source
  
import wx
import editeur
import os
import shutil
from subprocess import Popen,PIPE,STDOUT
import sys
import gettext          # to activate multi-language support
import locale           # to access system localization functionalities

class Pinguino(wx.Frame):
    debug_output=0
    noname=0
    processor="18f2550"
    reservedword=("digitalWrite","digitalRead","pinMode",
                "analogWrite","analogRead","delay","delayMicroseconds","millis",
                "Serial","USB","UserInterrupt",
                "millis","HIGH","LOW","INPUT","OUTPUT",
                "setup","loop")
    rw=("analogWrite","analogRead","delay","delayMicroseconds","digitalWrite",
        "digitalRead","loop","millis","pinMode","Serial.available","Serial.flush",
        "Serial.print","Serial.read","setup","USB.available","USB.read","USB.send",
        "UserInterrupt","init_I2C","I2C_write","I2C_read","ee_read","ee_write")

    def __init__(self, *args, **kwds):
        kwds["style"] = wx.DEFAULT_FRAME_STYLE
        wx.Frame.__init__(self, *args, **kwds)

        loc = locale.getdefaultlocale()[0][0:2]
        lang = gettext.translation('pinguino', './locale', languages=[loc])
        lang.install()
        
        self.menu = wx.MenuBar()
        wxglade_tmp_menu = wx.Menu()
        self.NEW = wx.MenuItem(wxglade_tmp_menu, 20, _("New"), "", wx.ITEM_NORMAL)
        wxglade_tmp_menu.AppendItem(self.NEW)
        self.OPEN = wx.MenuItem(wxglade_tmp_menu, 21, _("Open"), "", wx.ITEM_NORMAL)
        wxglade_tmp_menu.AppendItem(self.OPEN)
        self.SAVE = wx.MenuItem(wxglade_tmp_menu, 22, _("Save"), "", wx.ITEM_NORMAL)
        wxglade_tmp_menu.AppendItem(self.SAVE)
        wxglade_tmp_menu.AppendSeparator()
        self.CLOSE = wx.MenuItem(wxglade_tmp_menu, 23, _("Close"), "", wx.ITEM_NORMAL)
        wxglade_tmp_menu.AppendItem(self.CLOSE)
        self.EXIT = wx.MenuItem(wxglade_tmp_menu, 24, _("Exit"), "", wx.ITEM_NORMAL)
        wxglade_tmp_menu.AppendItem(self.EXIT)
        self.menu.Append(wxglade_tmp_menu, _("File"))

        self.LANGUAGE = wx.Menu()
        self.ENGLISH = wx.MenuItem(self.LANGUAGE, 26, _("English"), "", wx.ITEM_NORMAL)
        self.LANGUAGE.AppendItem(self.ENGLISH)
        self.FRENCH = wx.MenuItem(self.LANGUAGE, 27, _("French"), "", wx.ITEM_NORMAL)
        self.LANGUAGE.AppendItem(self.FRENCH)
        self.SPANISH = wx.MenuItem(self.LANGUAGE, 28, _("Spanish"), "", wx.ITEM_NORMAL)
        self.LANGUAGE.AppendItem(self.SPANISH)
        self.PORTUGUESE = wx.MenuItem(self.LANGUAGE, 29, _("Portuguese"), "", wx.ITEM_NORMAL)
        self.LANGUAGE.AppendItem(self.PORTUGUESE)
        self.DANISH = wx.MenuItem(self.LANGUAGE, 30, _("Danish"), "", wx.ITEM_NORMAL)
        self.LANGUAGE.AppendItem(self.DANISH)
        self.CROATIAN = wx.MenuItem(self.LANGUAGE, 31, _("Croatian"), "", wx.ITEM_NORMAL)
        self.LANGUAGE.AppendItem(self.CROATIAN)
        self.ITALIAN = wx.MenuItem(self.LANGUAGE, 32, _("Italian"), "", wx.ITEM_NORMAL)
        self.LANGUAGE.AppendItem(self.ITALIAN)
        self.GERMANY = wx.MenuItem(self.LANGUAGE, 33, _("Germany"), "", wx.ITEM_NORMAL)
        self.LANGUAGE.AppendItem(self.GERMANY)
        
        self.menu.Append(self.LANGUAGE, _("Language"))
        self.HELP = wx.Menu()
        self.ABOUT = wx.MenuItem(self.HELP, 25, _("About"), "", wx.ITEM_NORMAL)
        self.HELP.AppendItem(self.ABOUT)
        self.menu.Append(self.HELP, _("Help"))
        
        self.SetMenuBar(self.menu)
        
        self.frame_1_statusbar = self.CreateStatusBar(1, 0)
        
        self.frame_1_toolbar = wx.ToolBar(self, -1)
        self.SetToolBar(self.frame_1_toolbar)
        self.frame_1_toolbar.AddLabelTool(100, _("Verify"), wx.Bitmap(sys.path[0]+"/runw5050.png", wx.BITMAP_TYPE_ANY), wx.NullBitmap, wx.ITEM_NORMAL, _("Verify"), "")
        self.frame_1_toolbar.AddLabelTool(101, _("Close"), wx.Bitmap(sys.path[0]+"/stop5050.png", wx.BITMAP_TYPE_ANY), wx.NullBitmap, wx.ITEM_NORMAL, _("Close"), "")
        self.frame_1_toolbar.AddSeparator()
        self.frame_1_toolbar.AddSeparator()
        self.frame_1_toolbar.AddSeparator()
        self.frame_1_toolbar.AddLabelTool(102, _("New"), wx.Bitmap(sys.path[0]+"/new5050.png", wx.BITMAP_TYPE_ANY), wx.NullBitmap, wx.ITEM_NORMAL, _("New"), "")
        self.frame_1_toolbar.AddLabelTool(103, _("Save"), wx.Bitmap(sys.path[0]+"/save5050.png", wx.BITMAP_TYPE_ANY), wx.NullBitmap, wx.ITEM_NORMAL, _("Save"), "")
        self.frame_1_toolbar.AddLabelTool(104, _("Open"), wx.Bitmap(sys.path[0]+"/open5050.png", wx.BITMAP_TYPE_ANY), wx.NullBitmap, wx.ITEM_NORMAL, _("Open"), "")
        self.frame_1_toolbar.AddLabelTool(105, _("Upload"), wx.Bitmap(sys.path[0]+"/dwn5050.png", wx.BITMAP_TYPE_ANY), wx.NullBitmap, wx.ITEM_NORMAL, _("Upload"), "")
        
        self.editor = editeur.editeur(self, -1)
        self.logwindow = wx.TextCtrl(self, -1, "", style=wx.TE_MULTILINE|wx.TE_READONLY)

        self.__set_properties()
        self.__do_layout()

        self.Bind(wx.EVT_MENU, self.New, self.NEW)
        self.Bind(wx.EVT_MENU, self.Open, self.OPEN)
        self.Bind(wx.EVT_MENU, self.Save, self.SAVE)
        self.Bind(wx.EVT_MENU, self.Close, self.CLOSE)
        self.Bind(wx.EVT_MENU, self.Exit, self.EXIT)
        self.Bind(wx.EVT_MENU,self.About,self.ABOUT)
        
        self.Bind(wx.EVT_TOOL, self.Verify, id=100)
        self.Bind(wx.EVT_TOOL, self.Close, id=101)
        self.Bind(wx.EVT_TOOL, self.New, id=102)
        self.Bind(wx.EVT_TOOL, self.Save, id=103)
        self.Bind(wx.EVT_TOOL, self.Open, id=104)
        self.Bind(wx.EVT_TOOL, self.Upload, id=105)
        
        self.Bind(wx.EVT_SIZE,self.onresize)
        
        

    def __set_properties(self):
        
        self.SetTitle("Pinguino")
        _icon = wx.EmptyIcon()
        _icon.CopyFromBitmap(wx.Bitmap(sys.path[0]+"/logo.png", wx.BITMAP_TYPE_ANY))
        self.SetIcon(_icon)           
        self.SetSize((600, 600))
        self.frame_1_statusbar.SetStatusWidths([-1])
        
        frame_1_statusbar_fields = ["Pinguino"]
        for i in range(len(frame_1_statusbar_fields)):
            self.frame_1_statusbar.SetStatusText(frame_1_statusbar_fields[i], i)
        self.frame_1_toolbar.SetToolBitmapSize((50, 50))
        self.frame_1_toolbar.Realize()
        self.editor.SetMinSize((392, 109))
        self.logwindow.SetMinSize((392, 120))
        self.logwindow.SetBackgroundColour(wx.Colour(0, 0, 0))
        self.logwindow.SetForegroundColour(wx.Colour(255, 0, 0))
        

    def __do_layout(self):
        
        sizer_1 = wx.BoxSizer(wx.VERTICAL)
        sizer_1.Add(self.editor, 1, wx.EXPAND|wx.FIXED_MINSIZE, 0)
        sizer_1.Add(self.logwindow, 0, wx.EXPAND, 0)
        self.SetSizer(sizer_1)
        self.Layout()
        self.Centre()
        

    def onresize(self,event):
        self.editor.Resize()
        event.Skip()
        
    def Verify(self, event):
        if self.editor.GetPath()==-1:
            dlg = wx.MessageDialog(self,
            _('Open file first !!'),_('Warning'),
            wx.OK | wx.ICON_WARNING
            )
            result=dlg.ShowModal()
            dlg.Destroy()            
            return
        self.displaymsg("",1)
        self.editor.SaveDirect()
        filename=self.editor.GetPath()
        filename,extension=os.path.splitext(filename)
        if os.path.exists(filename+".hex"):
            os.remove(filename+".hex")
        if os.path.exists(sys.path[0]+"/source/user.c"):
            os.remove(sys.path[0]+"/source/user.c")
        retour=self.preprocess(filename)
        if retour=="error":
            return
        retour=self.compile()
        if retour!=0:
            self.displaymsg(_("error while compiling file ")+filename,0)
        else:
            retour=self.link()
            if os.path.exists(sys.path[0]+"/source/main.hex")!=True:
                self.displaymsg(_("error while linking ")+filename+".o",0)
            else:
                self.cp(sys.path[0]+"/source/main.hex",filename+".hex")
                self.displaymsg(_("compilation done"),0)
                os.remove(sys.path[0]+"/source/main.hex")
                os.remove(filename+".c")         

    def Close(self, event): 
        self.editor.Close()
        

    def Save(self, event): 
        self.editor.Save(_("Pde Files"),"pde")

    def Open(self, event): 
        self.editor.Open(_("Pde Files"),"pde",self.rw)
        

    def Upload(self, event):
        if self.editor.GetPath()!=-1:
            filename=self.editor.GetPath()
            filename,extension=os.path.splitext(filename)
            if os.path.exists(filename+".hex"):
                self.displaymsg("",1)
                fichier = open(sys.path[0]+"/tmp/stdout", 'w+')
                sortie=Popen([sys.path[0]+"/tools/bin/docker", "-v", "04d8", "write", filename+".hex"], stdout=fichier,stderr=STDOUT)
                sortie.communicate()
                fichier.seek(0)
                self.displaymsg(fichier.read(),0)
                fichier.close()                     
            else:
                dlg = wx.MessageDialog(self, _('File must be verified before upload'), _('Warning!'), wx.OK | wx.ICON_WARNING)
                result=dlg.ShowModal()
                dlg.Destroy()                      
        else:
            dlg = wx.MessageDialog(self, _('File must be saved before upload'), _('Warning!'), wx.OK | wx.ICON_WARNING)
            result=dlg.ShowModal()
            dlg.Destroy()            
        event.Skip()

    def New(self, event): 
        self.editor.New("NoName"+str(self.noname),self.reservedword,self.rw)
        self.noname+=1
        

    def Exit(self, event):
        sys.exit(0)
    
    def About(self,event):
        description = """Pinguino is an Arduino like built with a Microchip
        18F2550 microcontroller. It is an open software 
        and open hardware project. Its main goal is to build a real USB system without USB to serial 
        converter.
        """

        licence = """Pinguino is free software; you can redistribute it and/or modify it 
        under the terms of the GNU General Public License as published by the Free Software Foundation; 
        either version 2 of the License, or (at your option) any later version.

        Pinguino is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; 
        without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  
        See the GNU General Public License for more details. You should have received a copy of 
        the GNU General Public License along with File Hunter; if not, write to 
        the Free Software Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA"""


        info = wx.AboutDialogInfo()

        info.SetIcon(wx.Icon(sys.path[0]+'/logo.png', wx.BITMAP_TYPE_PNG))
        info.SetName('Pinguino')
        info.SetVersion('beta 7')
        info.SetDescription(description)
        info.SetCopyright('2008 jean-pierre mandon')
        info.SetWebSite('http://www.hackinglab.org')
        info.SetLicence(licence)
        info.AddDeveloper('Jean-Pierre Mandon')
        info.AddDocWriter('Benoit Espinola')
        info.AddDocWriter('Sebastien Koechlin')
        info.AddDocWriter('Joan Espinoza')
        info.AddArtist('france Cadet')
        info.AddArtist('Laurent Costes')
        info.AddTranslator('Benoit Espinola')
        info.AddTranslator('Jean-Pierre Mandon')
        info.AddTranslator('Joan Espinoza')
        wx.AboutBox(info)   

    def displaymsg(self,message,clearpanel):
        """ display message in the log window """
        if clearpanel==1:
            self.logwindow.Clear()
        self.logwindow.WriteText(message)
        return    

    def cp(self,file1,file2):
        fichier = open(sys.path[0]+"/tmp/stdout", 'w+')
        sortie=Popen(["cp", file1, file2], stdout=fichier,stderr=STDOUT)
        sortie.communicate()
        return sortie.poll()      
    
    def preprocess(self,filename):
    	self.processor="18f2550"
        defineword={}
        index=0
        fileline={}
        path,name=os.path.split(filename)
        self.cp(filename+".pde",sys.path[0]+"/tmp/"+name+".c")
        # find #define in source file
        fichier=open(sys.path[0]+"/tmp/"+name+".c","r")
        for line in fichier:
            if line.find("#define")!=-1:
            	if line.find("PIC18F4550")!=-1:
            		self.processor="18f4550"
                line=line.replace(chr(9),chr(32))
                line=line.replace("#define","")
                line=line.lstrip(" ")
                line=line.rstrip(" \n")
                defineword[index]=line[0:line.find(" ")]
                defineword[index+1]=line[line.rfind(" ")+1:len(line)]
                defineword[index+1]=defineword[index+1].rstrip("\r")
                index+=2                
        fichier.close()
        # replace define in source file and create user file
        fichiersource=open(sys.path[0]+"/tmp/"+name+".c","r")
        fichierdest=open(sys.path[0]+"/tmp/temp.c","w")
        fichierdest.writelines("#include \""+sys.path[0]+"/tmp/define.h\"\n")
        for line in fichiersource:
            if line.find("#define")==-1:
                for j in range(0,index,2):
                    if (line.find(defineword[j])!=-1):
                        line=line.replace(defineword[j],defineword[j+1])
                        line=line+"\n"
            fichierdest.writelines(line)
        fichiersource.close()
        fichierdest.close()
        #clear old define.h file
        if os.path.exists(sys.path[0]+"/tmp/define.h"):
            os.remove(sys.path[0]+"/tmp/define.h")
        # insert standart define for arduino
        self.adddefine("#define INPUT 1")
        self.adddefine("#define OUTPUT 0")
        self.adddefine("#define HIGH 1")
        self.adddefine("#define LOW 0")
        if self.processor=="18f4550":
        	self.adddefine("#define PIC18F4550")
        # research and replace arduino keywords in file
        swap=True
        i=0
        startcomment=False
        while swap:
            swap=False
            fichier=open(sys.path[0]+"/tmp/"+'temp.c','r')
            nblines=0
            for line in fichier:
            	if line.find('//')!=-1:				# delete comments
            		line=line[0:line.find('//')]
            	if line.find('/*')!=-1:				# beginning multiline comment
            		startcomment=True
            	if line.find('*/')!=-1:				# ending multiline comment
            		startcomment=False
            		line=" "
            	if startcomment==False:
					for i in range(0,len(self.reservedword)-6):
						if line.find(self.reservedword[i])!=-1:
							resultline=self.replaceword(line)
							swap=True
							if resultline.find("error")==-1:
								line=resultline
							else:
								if self.reservedword[i]!=resultline.lstrip("error "):
									self.displaymsg("error "+self.reservedword[i]+" "+resultline.lstrip("error "),1)
								else:
									self.displaymsg("error "+self.reservedword[i],1)    
								return "error"
					fileline[nblines]=line
					nblines+=1        
            fichier.close()
            # save new tmp file
            fichier=open(sys.path[0]+"/tmp/temp.c",'w')
            for i in range(0,nblines):
                fichier.writelines(fileline[i])
            fichier.writelines("\r\n")
            fichier.close()
        i+=1
        if i==100:
            swap=False
        #copy tmp file to file directory
        self.cp(sys.path[0]+"/tmp/temp.c",filename+".c")
        self.cp(sys.path[0]+"/tmp/temp.c",sys.path[0]+"/source/user.c")                 
        return
        
    def adddefine(self,chaine):
        """ add #define in define.h file """
        fichier=open(sys.path[0]+"/tmp/define.h",'a')
        fichier.writelines(chaine+"\n")
        fichier.close()

    def notindefine(self,chaine):
        """ verify if #define exists in define.h file """
        fichier=open(sys.path[0]+"/tmp/define.h",'r') 
        for line in fichier:
            if line.find(chaine)!=-1:
                fichier.close()
                return(0)
        fichier.close()
        return(1)          

    def replaceword(self,ligne):
        """ convert arduino langage in C langage """
        insruction=""
        line=ligne
        # delete space and tabs
        ligne=ligne.replace(" ","")
        ligne=ligne.replace(chr(9),"")
        if ligne[0:2]=="//":
            ligne="//\r\n"
            return ligne
        if ligne.find("//")!=-1:
            ligne=ligne[0:ligne.find("/")]
            line=ligne+"\r\n"
        
        """--------------digitalWrite instruction-------------------"""        
        
        if ligne.find("digitalWrite")!=-1:
            if self.notindefine("#include <digitalw.c>")==1:
                self.adddefine("#include <digitalw.c>")
            ligne=ligne.replace("digitalWrite"," digitalwrite")    
            return ligne
            
            """--------------digitalRead instruction-------------------"""        
        
        elif ligne.find("digitalRead")!=-1:
            if self.notindefine("#include <digitalw.c>")==1:
                self.adddefine("#include <digitalw.c>")
            ligne=ligne.replace("digitalRead"," digitalread")    
            return ligne
                    
            """--------------pinMode instruction-------------------"""   
            
        elif ligne.find("pinMode")!=-1:
            if self.notindefine("#include <digitalw.c>")==1:
                self.adddefine("#include <digitalw.c>")
            ligne=ligne.replace("pinMode"," pinmode")    
            return ligne            
            
            """--------------delay instruction-------------------"""
            
        elif ligne.find("delay")!=-1:
            ligne=ligne[ligne.find("delay"):len(ligne)]
            ligne=ligne.lstrip("delay")
            if ligne.find("Microseconds")!=-1:
                ligne=ligne.lstrip("Microseconds")
                if ligne[0]!="(":
                    line="error delay microseconds"
                    return line
                else:
                    line=line.replace("delayMicroseconds","Delayus")
                    if self.notindefine("#include <arduinodelay.c>")==1:
                        self.adddefine("#include <arduinodelay.c>")    
                    return line
            else:
                if ligne[0]!="(":
                    line="error delay"
                    return line
                line=line.replace("delay","Delayms")
                if self.notindefine("#include <arduinodelay.c>")==1:
                    self.adddefine("#include <arduinodelay.c>")
                return line 
            
            """--------------Serial instructions-------------------"""
            
            """--------------Serial.begin-------------------"""
            
        if ligne.find("Serial.begin")!=-1:
            ligne=ligne[ligne.find("Serial.begin"):len(ligne)]
            ligne=ligne.lstrip("Serial.begin")
            if ligne[0]!="(":
                line="error Serial.begin brackets"
                return line
            ligne=ligne.lstrip("(")
            output=ligne[0:ligne.find(")")]
            if output=="300":
                line=line.replace("Serial.begin(300)","setup_UART(B300)")
            elif output=="1200":
                line=line.replace("Serial.begin(1200)","setup_UART(B1200)")
            elif output=="2400":
                line=line.replace("Serial.begin(2400)","setup_UART(B2400)")
            elif output=="4800":
            	line=line.replace("Serial.begin(4800)","setup_UART(B4800)")                       
            elif output=="9600":
                line=line.replace("Serial.begin(9600)","setup_UART(B9600)")
            elif output=="19200":
                line=line.replace("Serial.begin(19200)","setup_UART(B19200)")
            elif output=="57600":
                line=line.replace("Serial.begin(57600)","setup_UART(B57600)")
            elif output=="115200":
                line=line.replace("Serial.begin(115200)","setup_UART(B115200)")
            else:
                return "error Serial.begin speed"
            if self.notindefine("#include <uart18f2550.c>")==1:
                self.adddefine("#include <uart18f2550.c>")
            return line
        
            """--------------Serial.available-------------------"""
            
        elif line.find("Serial.available()")!=-1:
            line=line.replace("Serial.available()","charreceived")
            if self.notindefine("#include <uart18f2550.c>")==1:
                self.adddefine("#include <uart18f2550.c>")
            return line
        
            """--------------Serial.read-------------------"""
            
        elif line.find("Serial.read()")!=-1:
            line=line.replace("Serial.read","getch")
            if self.notindefine("#include <uart18f2550.c>")==1:
                self.adddefine("#include <uart18f2550.c>")
            return line
        
            """--------------Serial.flush-------------------"""
            
        elif line.find("Serial.flush()")!=-1:
            line=line.replace("Serial.flush","clear_buffer")
            if self.notindefine("#include <uart18f2550.c>")==1:
                self.adddefine("#include <uart18f2550.c>")
            return line
        
            """--------------Serial.print-------------------"""
        
        elif ligne.find("Serial.print")!=-1:
            ligne=ligne[ligne.find("Serial.print"):len(ligne)]
            ligne=ligne.lstrip("Serial.print")
            if ligne[0]!="(":
                line="error Serial.print"
                return line
            ligne=ligne.lstrip("(")
            if self.notindefine("#include <uart18f2550.c>")==1:
                self.adddefine("#include <uart18f2550.c>")            
            if ligne[0]=='"':
                line=line.replace("Serial.print","Print_str")
                return line
            if ligne.find(",")==-1:
                line=line.replace("Serial.print","Print_dec")
                return line
            ligne=ligne[ligne.find(",")+1:ligne.find(")")]
            if ligne=="DEC":
                line=line.replace("Serial.print","Print_dec")
                line=line.replace(",DEC","")
                return line
            if ligne=="HEX":
                line=line.replace("Serial.print","Print_hex")
                line=line.replace(",HEX","")
                return line               
            if ligne=="BYTE":
                line=line.replace("Serial.print","Print_byte")
                line=line.replace(",BYTE","")
                return line
            return "error Serial.print "+ligne+" not yet implemented"

        
            """--------------analogRead instruction-------------------"""
            
        elif ligne.find("analogRead")!=-1:
            ligne=ligne.replace("analogRead","analogread")
            if self.notindefine("#include <analog.c>")==1:
                self.adddefine("#include <analog.c>")            
            return ligne        


            """--------------USB.available-------------------"""
            
        elif ligne.find("USB.available()")!=-1:
            ligne=ligne.replace("USB.available()","(usbavailable)")
            return ligne

            """------------- USB.read-------------------"""
            
        elif ligne.find("USB.read")!=-1:
            ligne=ligne.replace("USB.read","usbread")
            return ligne

            """------------- USB.send-------------------"""
            
        elif ligne.find("USB.send")!=-1:
            ligne=ligne.replace("USB.send","usbsend")
            return ligne

            """------------- USB.sendint-------------------"""
            
        elif ligne.find("USB.sendint")!=-1:
            ligne=ligne.replace("USB.sendint","usbsendint")
            return ligne
          
            """------------- UserInterrupt -------------------""" 
            
        elif ligne.find("UserInterrupt()")!=-1:
            if self.notindefine("#define USERINT 1")==1:
                self.adddefine("#define USERINT 1")
            line=line.replace("UserInterrupt"," userinterrupt")
            return line
            
            """------------- millis -------------------"""            
        
        elif ligne.find("millis()")!=-1:
            if self.notindefine("#include <millis.c>")==1:
                self.adddefine("#include <millis.c>")
            line=line.replace("millis","Millis")
            return line

            """------------- analogWrite -------------------"""   
                    
        elif ligne.find("analogWrite")!=-1:
            if self.notindefine("#include <pwm.c>")==1:
                self.adddefine("#include <pwm.c>")
            line=line.replace("analogWrite","set_PWM")
            return line         
                        
        else:        
            line="error not yet implemented"
        return line

    def compile(self):
    	if (self.debug_output==1):
    		print("compile "+self.processor)
    	else:
			filename = self.editor.GetPath()
			chemin = os.path.dirname(filename)
			fichier = open(sys.path[0]+"/tmp/stdout", 'w+')
			sortie=Popen([sys.path[0]+"/tools/bin/sdcc",
						"-mpic16",
						"--optimize-goto",
						"--denable-peeps",
						"--obanksel=9",
						"--opt-code-size",
						"--optimize-cmp",
						"--optimize-df",
						"--fstack",
						"-p"+self.processor,
						"-I"+sys.path[0]+"/include",
						"-I"+chemin+"/",
						"-c",
						"-c",
						"-o"+sys.path[0]+"/source/main.o",
						sys.path[0]+"/source/main.c"],
						stdout=fichier,stderr=STDOUT)
			sortie.communicate()
			fichier.seek(0)
			self.displaymsg(fichier.read(),0)
			fichier.close()
			return sortie.poll()
    
    def link(self):
        # bug 02 replaced sys.path[0] by sys.path[0].replace(" ","\\ ") for path with spaces
        # jean-pierre mandon / guillaume stagnaro 2008/09/06
        # only for the linker !!
        if (self.debug_output==1):
        	print("link "+self.processor)
        else:
			fichier = open(sys.path[0]+"/tmp/stdout", 'w+')
			sortie=Popen([sys.path[0]+"/tools/bin/sdcc",
						"-o"+sys.path[0].replace(" ","\\ ")+"/source/main.hex",
						"--optimize-goto",
						"--denable-peeps",
						"--obanksel=9",
						"--opt-code-size",
						"--optimize-cmp",
						"--optimize-df",
						"--fstack",
						"--no-crt",
						"-Wl-s"+sys.path[0].replace(" ","\\ ")+"/lkr/18f2550.lkr,-m",
						"-mpic16",
						"-p"+self.processor,
						"-l"+sys.path[0].replace(" ","\\ ")+"/lib/libpuf.lib",
						"-llibio"+self.processor+".lib",
						"-llibc18f.lib",
						sys.path[0].replace(" ","\\ ")+"/obj/application_iface.o",
						sys.path[0].replace(" ","\\ ")+"/obj/usb_descriptors.o",
						sys.path[0].replace(" ","\\ ")+"/obj/crt0ipinguino.o",
						sys.path[0].replace(" ","\\ ")+"/source/main.o"],
						stdout=fichier,stderr=STDOUT)
			sortie.communicate()
			fichier.seek(0)
			self.displaymsg(fichier.read(),0)
			fichier.close()        
			return sortie.poll()
                             


if __name__ == "__main__":
    app = wx.PySimpleApp(0)
    wx.InitAllImageHandlers()
    frame_1 = Pinguino(None, -1, "")
    app.SetTopWindow(frame_1)
    frame_1.Show()
    app.MainLoop()
