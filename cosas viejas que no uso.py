valor_x=10
boton_inicial=boton_inic(valor_x,10,fon,ventana_principal,texto)
menu.add(boton_inicial)
valor_x+=110
boton_pausa=boton_comp_un_arg(valor_x,10,
                                "pausa ",(20,124,195),
                                fon,ventana_principal,texto)
menu.add(boton_pausa)
valor_x+=110

boton_repetir=boton_comp_instruc_uno(valor_x,
                                    10,
                                    "repetir ",
                                    "fin ",
                                    (00,150,80),
                                    fon,
                                    ventana_principal,
                                    texto)
menu.add(boton_repetir)
valor_x+=110


boton_mientras=boton_comp_instruc_uno(valor_x,
                                    10,
                                    "mientras ",
                                    "fin ",
                                    (00,50,80),
                                    fon,
                                    ventana_principal,
                                    texto)
menu.add(boton_mientras)
valor_x+=110
boton_dos_arg=boton_comp_dos_arg(valor_x,10,"activar ",
                                (120,14,95),
                                fon,ventana_principal,texto)
menu.add(boton_dos_arg)
valor_x+=110

boton_dos_arg=boton_comp_dos_arg(valor_x,10,"servo ",
                                (20,14,195),
                                fon,ventana_principal,texto)
menu.add(boton_dos_arg)
valor_x+=110

boton_dos_arg=boton_comp_un_tres_arg(valor_x,10,
                                    "si ","fin ",(10,50,180),
                                    fon,ventana_principal,texto)
menu.add(boton_dos_arg)
valor_x+=110


boton_pausa=boton_comp_cero_arg(valor_x,10,
                                "sig ",(20,124,195),
                                fon,ventana_principal,texto)
menu.add(boton_pausa)
valor_x+=110






for a in range (1,6):
    sensor="sens an"+str(a)+" "
    sensor2="an"+str(a)+" "
    sensor3="sensor("+str(a+12)+") "
    boton_dat=boton_un_dat(valor_x
                            ,10
                            ,sensor
                            ,(100,10,18)
                            ,sensor2
                            ,sensor3
                            ,fon
                            ,ventana_principal
                            ,texto)
    menu.add(boton_dat)
    valor_x+=110

valor_x=10
boton_dat=boton_un_dat(valor_x,80,
                        "= ",(100,160,18),"= "," == ",
                        fon,ventana_principal,texto)
menu.add(boton_dat)
valor_x+=110
boton_dat=boton_un_dat(valor_x,
                        80,
                        "< ",
                        (100,160,18),
                        "< ",
                        " < ",
                        fon,
                        ventana_principal,
                        texto)
menu.add(boton_dat)
valor_x+=110

boton_dat=boton_un_dat(valor_x,
                        80,
                        "> ",
                        (100,160,18),
                        "> ",
                        " > ",
                        fon,
                        ventana_principal,
                        texto)
menu.add(boton_dat)
valor_x+=110

boton_dat=boton_un_dat(valor_x,
                        80,
                        "!= ",
                        (100,160,18),
                        "!= ",
                        " != ",
                        fon,
                        ventana_principal,
                        texto)
menu.add(boton_dat)
valor_x+=110
boton_dat=boton_un_dat(valor_x,
                        80,
                        "sens dig1",
                        (100,10,180),
                        "dig1 ",
                        "digitalread(10) ",
                        fon,
                        ventana_principal,
                        texto)
menu.add(boton_dat)
valor_x+=110

boton_dat=boton_un_dat(valor_x,
                        80,
                        "sens dig2",
                        (100,10,180),
                        "dig2 ",
                        "digitalread(11) ",
                        fon,ventana_principal,
                        texto)
menu.add(boton_dat)
valor_x+=110

boton_dat=boton_un_dat(valor_x,80,
                        "sens dig3",
                        (100,10,180),
                        "dig3 ",
                        "digitalread(12) ",
                        fon,
                        ventana_principal,
                        texto)
menu.add(boton_dat)
valor_x+=110

boton_dat=boton_un_dat(valor_x,
                        80,
                        "sens dig4",
                        (100,10,180),
                        "dig4 ",
                        "digitalread(21) ",
                        fon,
                        ventana_principal,
                        texto)
menu.add(boton_dat)
valor_x+=110

boton_dat=boton_un_dat(valor_x,
                        80,
                        "sens dig5",
                        (100,10,180),
                        "dig4 ",
                        "digitalread(22) ",
                        fon,
                        ventana_principal,
                        texto)
menu.add(boton_dat)
valor_x+=110


boton_dat=boton_un_dat_numerico(valor_x,    #x
                        80,                 #y
                        "numero",           #texto que va en el boton
                        (00,170,30),        #color del componente
                        "0 ",               #texto del componente
                        "0 ",               # que va al compilador
                        fon,                #fondo
                        ventana_principal,  #ventana pygtk
                        texto)              #clase texto
menu.add(boton_dat)
valor_x+=110
for a in range (4):
        
    boton_dat=boton_un_dat(valor_x,             #x
                            80,                 #y
                            "servo "+str(a),          #texto que va en el boton
                            (100,100,18),       #color del componente
                            "srv"+str(a)+" ",          #texto del componente
                            str(a+13),               # que va al compilador
                            fon,                #fondo
                            ventana_principal,  #ventana pygtk
                            texto)              #clase texto
    menu.add(boton_dat)
    valor_x+=110
    


    for i in range(len(obj)):
        file.writelines("<componente>")
        file.write("\n")
        file.writelines(str(fondo.tipo_obj[i]))
        file.write("\n")
        file.writelines(str(obj[i].ide))
        file.write("\n")
        for a in range(4):
            file.writelines(str(obj[i].rectan[a]))
            file.write("\n")
        for a in range(4):
            file.writelines(str(obj[i].conector_m[a]))
            file.write("\n")

        if int(fondo.tipo_obj[i])<> 6 and int(fondo.tipo_obj[i])<> 3:
            for a in range(4):
                file.writelines(str(obj[i].conector_h[a]))
                file.write("\n")
        file.writelines("</componente>")
        file.write("\n")
