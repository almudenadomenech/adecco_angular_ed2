

def contar_vocales(texto):
    num_vocales = 0

    for caracter in texto:
        if caracter in 'aeiouáéíóúAEIOUÁÉÍÓÚ':
            num_vocales += 1

    return num_vocales
    
    
    
num_vocales1 = contar_vocales("Alan")
print(num_vocales1) # 2


num_vocales2 = contar_vocales("Hola mundo")
print(num_vocales2) # 4

