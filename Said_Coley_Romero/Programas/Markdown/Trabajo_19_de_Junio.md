Inicio

    escribir "Ingrese la cantidad de estudiantes:"
    leer = dattos

    ciclo for i = 1 hasta dattos

        escribir "Diga su nombre acontinuacion:"
        leer = n4m3
        escribir "Diga su municipio acontinuacion:"
        leer = mUn1
        escribir "Diga su placa acontinuacion:"
        leer = plak4

        n4m3cantt = substr(n4m3, Len(n4m3) - 1, 2)
        mUn1cantt = substr(mUn1, 1, 3)
        plak4cantt = substr(plak4, Len(plak4) - 2, 3)
        
        escribir "Su codigo es: " + mUn1cantt + n4m3cantt + plak4cantt

    fin ciclo for

Fin