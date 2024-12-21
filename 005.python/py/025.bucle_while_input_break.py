
# Continuación del ejercicio 020.bucle_while_input.py
# Lo mismo pero con un máximo de 3 reintentos
# Utilizando break

password= 'admin'
password_user =''
intento = 1 # contador para el número de intentos
max_intentos = 3

while intento <= 3:
    password_user = input('Introduce tu contraseña: ')
    if password_user == password:
        print('Credenciales correctas.')
        break
    intento += 1
    
if intento > max_intentos:
    print('Alcanzaste el número máximo de intentos (3)')
    
print('Fin del programa.')