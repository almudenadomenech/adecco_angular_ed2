
# Resultado de todos los operadores comparación será True o False

# Igual == 

print("Hola" == "Hola") # True
print("Hola" == "Ola") # False

edad = int(input('Introduce tu edad: '))
print(edad == 18)

alta = bool(int(input("Está dado de alta? (1 o 0): ")))
print(alta == True)


## Distinto que !=

password = "1234"
input_password = input('Introduce la contraseña: ')
print(password != input_password) # 1234 != 1234 False
print(password == input_password) # 1234 == 1234 True

if password != input_password:
    print('Contraseña incorrecta.')
    
respuesta_correcta = "madrid"
respuesta_usuario = input("¿Cuál es la capital de España?: ").lower()

if respuesta_usuario != respuesta_correcta:
    print('Resultado incorrecto')
else:
    print('Resultado correcto, acertaste')


# Mayor qué: num1  >  num2 (Greater than GT)
# Mayor o igual que: num1 >= num2 (Greater than or Equals GTE)

print(50 > 20) # True
print(50 > 50) # False
print(50 >= 50) # True
print(50 > 100) # False

# Menor que: num1 < num2 (Less than LT)
# Menor o igual que: num1 <= num2 (Less than or equals LTE)

print(50 < 20) # False
print(50 < 50) # False
print(50 <= 50) # True
print(50 < 100) # True