Algoritmo EstructurasControl_SiEntoncesAnidado1
	
	//Ejemplo de estructuras condicionales anidadas,
	// Un Si Entonces dentro de otro, su ejecucion depende ambas condiciones
	
	// Verificar la hora y el dia de la semana
	Escribir "Ingresa la hora (0-23): "
	Leer hora
	
	Escribir "Ingresa el dia de la semana (1-7, donde 1 es Lunes):"
	Leer dia
	
	// Verifica el dia de la semana, y si es igual a 1 (Lunes), se verifica la
	// hora dentro de la condicion de Lunes.
	Si dia = 1 Entonces
		Si hora < 12 Entonces
			Escribir "Es Lunes por la mañana."
		SiNo
			Escribir "Es Lunes por la tarde."
		Fin Si
	SiNo
		Escribir "No es Lunes."
	Fin Si
	
FinAlgoritmo
