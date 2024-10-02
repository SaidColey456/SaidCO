Inicio

    escribir "Ingrese cantidad de estudiantes:"
    leer = e

    ciclo for i = 1 hasta e

        escribir "Diga su nombre acontinuacion"
        leer = N4M3
        
        many = Len(N4M3)
        inVert = ""
        
        ciclo for j = many hasta 1 Step -1
            
            z = substr(N4M3, j, 1)
            inVert = inVert + z
        
        fin ciclo for
        
        escribir "Tu nombre es +N4M3+ y la forma inversa es +inVert+"
        
    fin ciclo for

Fin