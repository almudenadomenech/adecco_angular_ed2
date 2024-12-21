
texto = "Hola curso Angular"

# Calcular la longitud de un texto con el método len()

longitud = len(texto)
print("Longitud texto:", longitud)

# Convertir a mayúsculas upper()

print(texto.upper())

texto_mayusculas = texto.upper()
print(texto_mayusculas)


# Convertir a minúsculas lower()

print(texto.lower())

# Partir un texto en base a un caracter split()
# Genera como resultado una lista de strings

palabras = texto.split() # por defecto divide por espacios
print(palabras) # ['Hola', 'curso', 'Angular']
print(len(palabras)) # calcula la longitud de la lista, 3
print(palabras[0]) # accede a la primera palabra, Hola
print(palabras[1]) # curso
print(palabras[2]) # Angular
# print(palabras[3]) # Error, IndexError: list index out of range

# Reemplazar texto dentro de un string, replace()

texto_python = texto.replace("Angular", "Python") # devuelve un nuevo string
print(texto_python) # Hola curso Python

# Extraer y convertir un número de una frase
precio_producto = "53.99 dólares"

# paso 1: split()
precio_elementos = precio_producto.split()
print(precio_elementos[0]) # 53.99 en texto

# paso 2: convertir texto a número float()
precio_num = float(precio_elementos[0])
print(precio_num) # 53.99 en número

# paso 3: + 5
precio_num = precio_num + 5
print(precio_num) # 58.99

descripcion_producto = 'El producto textil {} tiene un precio de {} €.'


print(descripcion_producto.format("Abrigo lana", 100))
print(descripcion_producto.format("Bufanda", 40))
print(descripcion_producto.format("Zapatos", 150))