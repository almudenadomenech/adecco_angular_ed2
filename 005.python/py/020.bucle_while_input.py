

password_correct = "admin"
password = ""

while password != password_correct:
    password = input('Introduce la password: ').replace(" ", "")
    
print('Credenciales correctas.')


# mientras que el departamento escrito por el usuario no esté
# en la lista de departamentos posibles entonces le seguimos
# preguntando por el departamento
departamentos = ['marketing', 'desarrollo', 'soporte', 'ia']
departamento = ''

while departamento not in departamentos:
    departamento = input('Introduce el departamento: ')
    
print('Departamento correcto.')