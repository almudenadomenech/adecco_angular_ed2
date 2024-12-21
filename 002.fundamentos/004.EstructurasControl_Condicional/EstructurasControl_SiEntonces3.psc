Algoritmo EstructurasControl_SiEntonces3
	
	// Leer un salario base por dia
	Escribir "Ingrese el salario base por dia:"
	Leer salario_base
	
	//Leer dias trabajados por mes
	Escribir "Ingrese los dias trabajados en el mes:"
	Leer dias_trabajados
	
	//Calcular el salario total
	salario_total = salario_base * dias_trabajados
	
	//Estructura de Control condicional
	Si salario_total > 1000 Entonces
		Escribir "El salario total es mayor que 1000 euros."
	SiNo
		Escribir "El salario total es igual o menor que 1000 euros."
	Fin Si
	
	
	// Estructuras de control condicional
	// Si Entonces, crea una bifurcacion en el codigo
	// Agregar un Si Entonces anidado para agregar un bonus
	// Si salario_total > 1000 Entonces
		// Escribir "El salario total es mayor que 1000 euros"
		// Agregar un bonus (por ejemplo, 100 euros) si se cumple una condicion
		// Si salario_total > 1500 Entonces
			// bonus = 100
			// salario_total_bonus = salario_total + bonus
			// Escribir "Bonus aplicado: ", + bonus
		//Fin Si
	// SiNo
		// Escribir "El salario total es igual o menor que 1000 euros"
		// No se aplica bonus
		// bonus = 0
		// Escribir "No se aplica bonus."
	// Fin Si
	
	// Escribir "Salario total: ", + salario_total
	// Escribir "Salario total con bonus: ", + salario_total_bonus
	
 FinAlgoritmo

