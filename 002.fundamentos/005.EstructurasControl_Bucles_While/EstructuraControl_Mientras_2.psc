Algoritmo EstructuraControl_Mientras_2
	Escribir "Indique su edad"
	Leer edad
	Mientras edad < 18 Hacer
		Escribir "¿Viene acompañado de un tutor? (S o N)"
		Leer respuesta
		Si respuesta = "S" Entonces
			edad = 18
		SINO
			escribir "No puede pasar sin compañía con " edad " años"
			edad <- edad + 1
		FinSi
	Fin Mientras
	Si edad >=18 Entonces
		escribir "puede pasar"
	FinSi
FinAlgoritmo
