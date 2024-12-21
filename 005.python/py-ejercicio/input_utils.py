
# Funciones para leer por consola con input con GESTIÓN DE EXCEPCIONES

def read_int(prompt):
    while True:
        try:
            resultado = int(input(prompt))
            return resultado # sale del bucle y devuelve el resultado
        except Exception: # captura cualquier tipo de error
            print('Error al leer la entrada. Inténtalo de nuevo.')

# edad = read_int('Introduce tu edad: ')
# altura = read_int('Introduce tu altura: ')
# peso = read_int('Introduce tu peso: ')
# print(f'Tu edad es {edad}')
# print(f'Tu altura es {altura}')
# print(f'Tu peso es {peso}')

def read_float(prompt):
    while True:
        try:
            resultado = float(input(prompt))
            return resultado
        except Exception:
            print('Error al leer la entrada. Inténtalo de nuevo.')

# salario = read_float('Introduce salario: ')
# precio = read_float('Introduce precio: ')
# print(f'El salario es {salario}')
# print(f'El precio es {precio}')


def read_bool(prompt):
    while True:
        try:
            resultado = input(prompt)
            if resultado == 'si':
                return True # sale del bucle con True
            elif resultado == 'no':
                return False # sale del bucle con False
            else: # no sale del bucle, lo repite
                print('Valor no reconocido, inténtalo de nuevo.')
        except Exception:
            print('Error al leer la entrada. Inténtalo de nuevo.')

    
    
# alta = read_bool('Está dado de alta si/no: ')
# print(f'alta {alta}')

def read_email():
    pass

