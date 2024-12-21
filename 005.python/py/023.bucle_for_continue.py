# Bucle for con continue
# Se utiliza para omitir el resto del código dentro del bucle
# y continuar con la siguiente iteración.
# No se termina el bucle como con el continue, solo se omite ese elemento
# particular y se continua con el siguiente.

# Omitir elementos no deseados de una lista de palabras
palabras =["hola", "", "mundo", "", "angular"]
for i in palabras: 
    if i == "":
        continue
    print(i)
    
# Imprimir solo los números impares de una lista de números
numeros = [1, 2, 3, 4, 5]
for i in numeros:
    if i % 2==0: # verifica si un número es par (divisible por 2) 
        continue
    print(i)
    
# Al imprimir ignorar las letras minúsculas en una cadena de texto 
cadena = "Hola Mundo"
for i in cadena:
    if i.islower():
        continue
    print(i, end="") 