Algoritmo EstructuraControl_Segun_Mayusculas
	
	Escribir "Escribe un dia de la semana (lunes, martes...)"
	Leer nombreDia
	nombreDia <- Mayusculas(nombreDia) // convierte el texto del usuario a mayusculas
	Escribir "Has elegido: ", nombreDia
	Segun nombreDia Hacer
		"LUNES":
			Escribir "Dia 1"
		"MARTES":
			Escribir "Dia 2"
		"MIERCOLES":
			Escribir "Dia 3"
		"JUEVES":
			Escribir "Dia 4"
		"VIERNES":
			Escribir "Dia 5"
		"SABADO":
			Escribir "Dia 6"
		"DOMINGO":
			Escribir "Dia 7"
		De Otro Modo:
			Escribir "No se ha reconocido el dia"
	Fin Segun
FinAlgoritmo
