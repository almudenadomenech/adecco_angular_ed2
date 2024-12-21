
# Sistema puntuación 

puntos = 35
nivel = 2


if nivel == 1:
    
    if puntos < 20:
        print('Tienes que mejorar')
    else:
        print('¡Buen comienzo!')
        
elif nivel == 2:
    
    if puntos < 30:
        print('Podría hacerse mejor para un nivel 2')
    else:
        print('¡Gran avance de nivel!')
        
elif nivel == 3:
    
    if puntos < 40:
        print('Mejorable para un nivel avanzado')
    else:
        print('Impresionante')
        
else: 
    print('Majestuoso, sigue así')