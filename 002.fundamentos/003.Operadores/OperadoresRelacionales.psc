Algoritmo OperadoresRelacionales
	
	Escribir "Introduce tu edad: "
	Leer edad
	
	esMayorDeEdad <- edad >= 18 // Verdadero o Falso
	Escribir "Es adulto: ", esMayorDeEdad
	
	Escribir "Introduce la edad de un amigo: "
	Leer edad2
	
	// Operador distinto que: <>, <>, !=
	edadesDistintas <- edad != edad2 // Verdadero o Falso
	Escribir "Tienen edad distinta: ", edadesDistintas
	
	// Operador igual que: = 
	// En otros lenguajes suele ser ==
	edadesIguales <- edad = edad2 // Verdadero o Falso
	Escribir "Tienen la misma edad: ", edadesIguales
	
	
FinAlgoritmo
