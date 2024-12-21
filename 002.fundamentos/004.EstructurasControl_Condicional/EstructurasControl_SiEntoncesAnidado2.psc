Algoritmo EstructurasControl_SiEntoncesAnidado2
	
	// Comprobar si un ano es bisisesto
	Escribir "Ingresa un ano: "
	Leer year
	
	// Comprobar si el ano es divisible por 4 (check)
	// Si lo es, comprobar si es divisible por 100, 
	// Verificar si es divisible por 400
	// Si no es divisible por 100, es bisiesto
	// Si todo se cumple, lo consideramos un ano bisiesto
	
	Si year es divisible por 4 Entonces
        Si year es divisible por 100 Entonces
            Si year es divisible por 400 Entonces
                Escribir "El ano SI es bisiesto"
            SiNo
                Escribir "El ano no es bisiesto"
            Fin Si
        SiNo
            Escribir "El ano es bisiesto"
        Fin Si
    SiNo
        Escribir "El ano no es bisiesto"
    Fin Si
	
	
FinAlgoritmo
