Algoritmo EstructurasControl_Mientras
	
	// bucle infinito
	// Mientras Verdadero Hacer
	//	Escribir "Hola mundo"
	// 	Fin Mientras
	
	// Mientras contador sea menor que 10 imprimir hola mundo 10 veces
//	contador <- 1
//	Mientras contador <= 10 Hacer
//		Escribir 'Hola mundo: ', contador
//		contador <- contador + 1
//	Fin Mientras
	
	// Mientras edad sea menor que 18 y no tenga un tutor
		// imprimir no puede pasar e incrementar la edad
	// si ya es mayor de edad
		// imprimir ya puede pasar y salir del bucle 
	edad <- 10
	tieneTutor <- Falso
	
	Mientras edad < 18 Y NO tieneTutor Hacer
		Escribir "no puede pasar"
		edad <- edad + 1 // incremento
		Escribir "incrementando edad ", edad
		
		Escribir "Introduce si viene con Tutor (Verdadero o Falso)"
		Leer tieneTutor
		
	Fin Mientras
	
	Mientras edad < 18 Hacer
		Escribir "no puede pasar"
		edad <- edad + 1 // incremento
		Escribir "incrementando edad ", edad
		
		Escribir "Introduce si viene con Tutor (Verdadero o Falso)"
		Leer tieneTutor
		
		Si tieneTutor Entonces
			edad <- 18 // rompe el bucle
		FinSi
		
	Fin Mientras
	
	
	
	
	

	

	
FinAlgoritmo
