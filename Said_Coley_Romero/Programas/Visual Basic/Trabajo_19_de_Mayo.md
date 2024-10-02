Sub funcion()

    dattos = InputBox("Diga la cantidad:")

For i = 1 To dattos

    n4m3 = InputBox("Diga su nombre:")
    mUn1 = InputBox("Diga su municipio:")
    plak4 = InputBox("Diga su placa:")
    
    n4m3cantt = Mid(n4m3, Len(n4m3) - 1, 2)
    mUn1cantt = Mid(mUn1, 1, 3)
    plak4cantt = Mid(plak4, Len(plak4) - 2, 3)
    
    MsgBox "Su codigo es: " + mUn1cantt + n4m3cantt + plak4cantt
    
Next i

End Sub