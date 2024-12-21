Algoritmo EstructuraControl_Segun1
	
	//Determinando el estado civil del usuario
	Escribir "Escribe tu estado civil (C, S, D, V, PH)"
	Leer estado_civil
	
	//Estructura Seg�n
	// Permite seleccionar un bloque de codigo para ejecutar entre varios posibles casos, 
	// cada uno asociado a un valor especifico de la expresion de control.
	
	// La estructura Seg�n evaluar la variable estado_civil
	// ejecutar el conjunto de instrucciones al ingresado
	
	Segun estado_civil Hacer
		"C":
			Escribir "Casado"
		"S":
			Escribir "Separado"
		"D":
			Escribir "Divorciado"
		"V":
			Escribir "Viudo"
		"PH":
			Escribir "Pareja de hecho"
		De Otro Modo:
			Escribir "Introduce un valor valido (C, S, D, V, PH)"
	Fin Segun
	
FinAlgoritmo
