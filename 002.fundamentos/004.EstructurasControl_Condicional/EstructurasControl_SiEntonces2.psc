Algoritmo EstructurasControl_SiEntonces2
	
	// Leer un precio de producto con decimales
	Escribir "Introduce un precio:"
	Leer precio
	
	// Si Entonces precio es mayor 50 con 30 centimos
	// establecer una variable envío a 0 euros
	// si no, el envío cuesta 3 con 99
	envio = 3.99
	Si precio > 50.30 Entonces
		Escribir "El envio es GRATIS."
		envio = 0
	SiNo
		Escribir "El envio cuesta 3,99 euros"
	Fin Si
	// Luego calcular coste total: precio + envío
	precioTotal = precio + envio
	Escribir "Precio total: ", precioTotal
	
FinAlgoritmo
