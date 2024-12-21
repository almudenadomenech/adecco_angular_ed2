Algoritmo EstructuraWhile_Menu
	
	// mientras menu de opciones con opción de salir
	// Hacer un bucle Mientras 
	// Imprimir un menú de opciones
	// 1 - Consultar todos los productos
	// 2 - Consultar un producto por Identificador
	// 3 - Crear un nuevo producto
	// 4 - Actualizar un producto
	// 5 - Borrar un producto
	// 6 - Salir: sale del bucle 
	
	// Decirle al usuario que introduzca una opción
	
	// SI Entonces evaluar la opción e imprimir la que ha elegido
	Escribir "Bienvenido/a a la app de productos"
	option <- 0 
	Mientras option <> 6 Hacer
		Escribir "Elige una opción de 1 a 6"
		Escribir "1 - Consultar todos los productos"
		Escribir "2 - Consultar un producto por Identificador"
		Escribir "3 - Crear un nuevo producto"
		Escribir "4 - Actualizar un producto existente"
		Escribir "5 - Borrar un producto"
		Escribir "6 - Salir"
		Leer option
		Escribir "Ha elegido la opcion: ", option
		Segun option Hacer
			1:
				// 1 - CONSULTAR PRODUCTOS
				Escribir "Productos: Ordenador ASUS, raton Logitech, adaptador Kingston"
			2:
				// 2 - CONSULTAR UN SOLO PRODUCTO
				Escribir "Introduce el id del producto que desea consultar"
				Leer id
				// utilizar el id para buscar un producto en un Array o base de datos
				Escribir "Producto encontrado. id: ", id, ", nombre: Silla SteelCase"
			3:
				// 3 - CREAR UN NUEVO PRODUCTO
				Escribir "Introduce los datos del nuevo producto a crear"
				Escribir "Introduce nombre de producto"
				Leer nombreProducto
				Escribir "Introduce el precio de producto"
				Leer precioProducto
				// ....
				// Utilizar todas estas variables para crear un nuevo producto en un Array o base de datos
			4: 
				// 4 - ACTUALIZAR UN PRODUCTO
				Escribir "Introduce el identificador del producto"
				Leer idProducto
				Escribir "Introduce el campo que desea actualizar"
				Leer campoActualizar
				Escribir "Introduce el nuevo valor para el campo ", campoActualizar
				Leer nuevoValor
				// Buscar el producto y modificar el valor del campo indicado
			5: 
				// 5 - BORRAR UN PRODUCTO
				Escribir "Introduce el identificador del producto"
				Leer idProducto
				// Buscar y borrar el producto
				Escribir "Producto con id ", idProducto, " borrado satisfactoriamente"
			6: 
				// SALIR
				Escribir "Ha elegido salir del programa."
			De Otro Modo:
				Escribir "El valor introducido no es una opcion correcta"
		Fin Segun
	Fin Mientras
	Escribir "Gracias por usar nuestra app de productos"
	
FinAlgoritmo
