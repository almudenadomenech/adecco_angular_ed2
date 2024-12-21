# Bucle while con break
# Se utiliza para ejecutar un bloque de código repetidamente 
# siempre que se cumpla una condición dada.

# Bucle que imprima ciertos números hasta que se cumpla una condición
contador = 0 # inicializamos el contador
while contador <10:
    print(contador)
    contador += 1
    if contador == 5:
        break
    