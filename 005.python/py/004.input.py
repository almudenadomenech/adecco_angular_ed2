
# input lee todos los datos como string siempre por defecto

nombre = input('Por favor introduce tu nombre: ')
print("El nombre es", nombre)

# leer edad número entero int()
edad = input('Introduce edad: ')
print("Edad es", edad)
edad_num = int(edad) # convierte de texto a número entero int
print(edad_num + 1) # probamos una operación aritmética cualquiera

# leer peso con decimales float()
peso = input('Introduce tu peso: ')
peso_num = float(peso)
print(peso_num - 5)

# leer si está de alta True o False no bool()
print(bool()) # False
print(bool(1)) # True
print(bool(0)) # False
print(bool("")) # Texto vacío False
print(bool("Hola")) # Texto con contenido True
emails = ['u1@gmail.com', 'u2@gmail.com']
print(bool(emails)) # La lista tiene elementos, True
mensajes = [] # Lista vacía
print(bool(mensajes)) # False

alta = input('Introduce si está dado de alta (1 o 0): ')
alta_bool = bool(int(alta))
print('Está dado de alta', alta_bool)

alta_bool = input('Introduce si está dado de alta 1 o 0') == '1' # True o False
print('Está dado de alta', alta_bool)
