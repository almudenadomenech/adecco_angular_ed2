
# Operadores lógicos permiten combinar varias condiciones

# and equivalente a Y
# Restrictivo obliga a que las condiciones sean todas verdaderas

usuario_correcto = "admin"
password_correcta = "1234"

usuario = input('Introduce tu usuario: ')
password = input('Introduce tu contraseña: ')

if usuario == usuario_correcto and password == password_correcta:
    print('Las credendiales son correctas')
else:
    print('Credenciales incorrectas')
    
# or equivalente O
# Flexible, con que una de las condiciones sea True el resultado es True

es_estudiante = input('¿Es estudiante? (si/no): ').lower() == 'si'
precio_total = float(input('Introduce precio de compra: '))

if es_estudiante or precio_total > 100:
    # precio_total = precio_total * 0.80 # quitar 20 %
    # precio_total *= 0.80
    precio_total = round(precio_total * 0.80, 2)
    print(f'Tienes un descuento, precio: {precio_total}')
else:
    print(f'No tienes descuento, precio: {precio_total}')

## not para invertir un valor boolean , es útil cuando quieres ejecutar 
# un código cuando una condición no se cumple

edad_usuario = int(input('Introduce tu edad'))

if not edad_usuario >= 18:
    print('No tiene acceso')
else:
    print('Tiene acceso')
    
    
# Combinar not con or

email = input('Introduce tu email: ')
password = input('Introduce tu password: ')

if not email or not password:
    print('Todos los campos son obligatorios.')
else:
    print('Registro completado.')