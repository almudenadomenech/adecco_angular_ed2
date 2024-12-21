
# Bucle For

# Se puede utilizar con diferentes colecciones de datos (lista, tupla, diccionarios, conjuntos, etc)
# Estructura iterativa, iterar (repetir un proceso un número determinado de veces)
# Bucle con numero determinado de iteraciones

for i in [1,2,3]:
    print("Hola mundo")
    
numbers = [1, 2, 3, 4, 5]
for n in numbers:
    print("Hola Mundo") # Se imprime 5 veces porque hay 5 elementos en la lista
    
# Una lista puede contener elementos de diferentes tipos
# No tienen que ir ordenados
# Está iterando sobre la cantidad de elementos de la lista, no sobre el tipo de dato, no asigna un valor a cada elemento
for i in [1, 10, 3, "Daniela"]: # contar los elementos de la lista, no el tipo de dato, son 4 elementos
    print("Ejercicio bucle for")

# La lista se puede guardar en una variable
# Se imprime el valor de la variable
coleccion = [5, 10, "Python", 20]
for i in coleccion:
    print(f"Elemento: {i}")
    
# Iterar sobre una lista de frutas
frutas = ["Manzana", "Pera", "Sandia", "Fresa"]
for fruta in frutas:
    print(f"Fruta: {fruta}")
    
# Utilizar la función "range()" para generar una lista de números
for iterador in range(5):
    print(iterador)

# Imprimir "HOLA" 5 veces
for i in range(5):
    print("HOLA")
    
# Iterar sobre una cadena de texto
palabra = "Descanso"
for i in palabra:
    print(i)
    
frase = "Descanso a las 11" # Itera sobre cada caracter, incluyendo los espacios
for i in frase:
    print(i)
    
# Iterar sobre cadena de texto pero sin salto de linea
nombre = "Daniela"
# for i in nombre:
    # print(f"{i}", end="") # end="" es un argumento de la función print que indica que no se haga un salto de linea
    

# Sumar los elementos de una lista
numeros = [1, 2, 3, 4, 5]
# crear variable acumuladora
suma = 0 # inicializar en 0
for num in numeros:
    suma += num # en cada iteración, el valor de num se suma al valor actual de la suma
print("La suma es:", suma)

# Concatenar cadenas de texto de una lista
words = ["Son", "las", "10:45 am"]
sentence = ""

for w in words:
    sentence +=w + " "

print("Frase:", sentence)