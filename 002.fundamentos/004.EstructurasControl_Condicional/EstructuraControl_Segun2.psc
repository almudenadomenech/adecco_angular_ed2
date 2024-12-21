Algoritmo EstructuraControl_Segun2
	
	// Notas 0-4 insuficiente, 5-6 suficiente, 7-8 notable, 9-10 sobresaliente
	
	Escribir "Escribe tu nota (0-10)"
	Leer nota
	
	Segun nota Hacer
		0 O 1 O 2 O 3 O 4:
			Escribir "Insuficiente"
		5, 6:
			Escribir "Suficiente"
		7 O 8:
			Escribir "Notable"
		9 O 10:
			Escribir "Sobresaliente"
		De Otro Modo:
			Escribir "Valor no valido"
	Fin Segun
	
	
FinAlgoritmo
