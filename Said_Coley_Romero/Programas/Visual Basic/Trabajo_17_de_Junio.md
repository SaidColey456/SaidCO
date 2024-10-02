Sub funcion()

MsgBox "Ingrese cantidad de estudiantes:"
e = InputBox("Estudiantes")

For i = 1 To e

    MsgBox "Digite su nombre acontinuacion"
    N4M3 = InputBox("nombre")

    many = Len(N4M3)
    inVert = ""

    For j = many To 1 Step -1
        
        b = Mid(N4M3, j, 1)
        inVert = inVert + b

    Next j

    MsgBox "Tu nombre es " + N4M3 + " y la forma inversa es " + inVert

Next i

End Sub
