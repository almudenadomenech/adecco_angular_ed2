
# Saltarnos el número 5 en un conteo del a 1 al 10
# Utilizando continue

contador = 0
while contador <10:
    contador += 1
    if contador == 5:
        continue
    print(contador)
    
# Imprimir solo los numeros impares entre 1 y 10
contador2 = 0
while contador2 < 10:
    contador2 += 1
    if contador2 % 2 == 0:
        continue
    print(contador2)
    
