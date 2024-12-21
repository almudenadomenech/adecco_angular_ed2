
# Operador ternario equivale a if else pero de forma abreviada

numero = -3
numero_absoluto = None

if numero >= 0:
    numero_absoluto = numero
else: 
    numero_absoluto = -numero
    
print(numero_absoluto)

# Equivalente al anterior pero en una sola línea
numero_absoluto = numero if numero >= 0 else -numero
print(numero_absoluto)
