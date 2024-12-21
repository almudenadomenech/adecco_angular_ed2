Algoritmo Array3
	//Instrucciones:
	// 1. Crear un array con nombre "edades" 
	// array con 3 datos
	// 2. (Bucle PARA) Solicitar al usuario 3 edades y 
	// guardarlas en el array
	// 3. (Bucle PARA) Mostrar las edades
	// No son bucles anidados
	
	Dimension edades[3]
	
	Para indice<-1 Hasta 3 Con Paso 1 Hacer
		Escribir "Ingresa una edad: "
		Leer edades[indice]
	Fin Para
	
	Para indice<-1 Hasta 3 Con Paso 1 Hacer
		Escribir "la edad es: ", edades[indice]
	Fin Para
	
FinAlgoritmo
