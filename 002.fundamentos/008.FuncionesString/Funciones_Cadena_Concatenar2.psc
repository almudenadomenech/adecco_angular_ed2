Algoritmo Funciones_Cadena_Concatenar2
	
	// Solicitar al usuario nombre y apellido por separado
	Escribir "Ingrese su nombre: "
	Leer nombre
	
	Escribir "Ingrese su apellido: "
	Leer apellido
	
	// Concatenar para formar un saludo
	mensaje <- Concatenar(nombre + " " +apellido, ", bienvenid@ a nuestra aplicacion.")
	
	// Salida de resultados
	Escribir mensaje
	
FinAlgoritmo
