Sub Main

	MsgBox("Bienvenido a la divisora")
	
	Dim inp As Integer
	
	Dim inp2 As Integer
	
	Dim resultado As Integer
	
	inp = InputBox("Introduce el primer numero")
	inp2 = InputBox("Introduce el segundo numero")
	
	If(inp2 = 0) Then
		MsgBox("Quite el 0!")
		inp2 = InputBox("Introduce el segundo numero")
	End If
	
	resultado = division(inp, inp2)
	
	MsgBox("Su resultado es: " + Str(resultado))



End Sub

Function division(x, y)
	res = x/y
	division = res
End Function



