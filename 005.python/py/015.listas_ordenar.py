
# sort() ordena de forma ASCENDENTE, de menos a más
coches = ['Mercedes Clase A', 'BMW 320', 'Audi A5', 'Skoda']
coches.sort()
print(coches)

precios = [8.77, 4.33, 2.56, 9.31, 4.15]
precios.sort()
print(precios)

# sort(reverse=True) o reverse() ordena de forma DESCENDENTE, de más a menos
coches.reverse()
print(coches)

precios.reverse()
print(precios)
precio_maximo = precios[0] # Al estar ordenado de mas a menos el primero es el más alto
precio_minimo = precios[len(precios) - 1]
precio_minimo = precios[-1]
print(f"El precio máximo es: {precio_maximo}")
print(f"El precio mínimo es: {precio_minimo}")