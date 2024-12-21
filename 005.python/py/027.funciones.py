

# Función sin parametros
def saludar():
    print("Hola mundo")
    
saludar() # llamada a la función
saludar()

# Función con un parámetro
def saludar2(nombre):
    print(f"¡Hola, {nombre}!")

# Llamar a la función con diferentes argumentos
saludar2("Ana")
saludar2("Diego")
saludar2("Alexandra")

# Función con múltiples parámetros
def saludar3(nombre, hora_dia):
    print(f"¡Buenas {hora_dia}, {nombre}!")
    
saludar3("Juan", "noches")
saludar3("Almudena", "tardes")
saludar3("Adrián", "tardes")

# Funciones que devuelven un valor
def saludar4(nombre):
    return (f"!Hola, {nombre}!")

mensaje = saludar4("Luisa") # variable que almacena el valor devuelto por la función
print(mensaje) # llamada a la función


# Función que devuelve un valor, en este caso una suma
def sumar(a, b):
    return a + b

resultado = sumar(5, 3)
print("Resultado:", resultado) # imprimir el valor de la variable resultado



# Función para calcular el iva sobre el precio de un producto
def calcular_iva(precio_producto):
    iva = precio_producto * 0.21
    resultado_iva = precio_producto + iva
    print(f"Precio final: {resultado_iva} €")
    return precio_producto + iva

calcular_iva(100)
calcular_iva(500)


    