
nombre = "Alan"

# Crear String utilizando constructor

apellido = str("Sastre")

# Convertir de número a string:
edad = 18
print(edad + 1) # 19


# TypeError: can only concatenate str (not "int") to str
edad_txt = str(edad) # 18 pero en texto
# print(edad_txt + 1)
print(edad_txt + str(1)) # 181 concatena los textos

print(nombre, apellido, edad)
print(nombre, apellido, edad_txt)