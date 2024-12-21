

precio = float(input('Introduce un precio: '))

if precio >= 100: # >= 100 es caro
    print('El producto es caro')
elif precio >= 50:  # >= 50 es medio
    print('El precio es normal/medio')
else: # es barato
    print('El precio es barato')
 
print('fin')   

# RUTINA DIARIA
# Para emojis en windows: Tecla Windows + `
# o buscar en https://emojicopy.com/
hora = int(input('Introduce una hora: '))

if 0 <= hora <= 8:
    print('Durmiendo... zzz.... 😴💤')
elif 8 < hora <= 15:
    print('Curso Angular 💻📚')
elif 15 < hora <= 18:
    print('Comiendo paella 🥘')
elif 18 < hora <= 21:
    print('En el gimnasio 💪🏓')
elif 21 < hora <= 24:
    print('Cenando')
else:
    print('La hora no es correcta')