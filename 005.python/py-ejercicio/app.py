'''
Aplicación python de consola para gestión de contactos utilizando
una lista en Python y operaciones CRUD:

Create
Retrieve/Read/Leer/Ver/consultar
Update
Delete

Crear una lista de contactos con al menos 3 contactos.

Bucle while infinito que imprima un menú de opciones:
1 - Ver todos los contactos
2 - Ver un contacto
3 - Insertar/crear nuevo contacto
4 - Actualizar contacto existente
5 - Borrar contacto
6 - Salir (break)

Utilizar los métodos de input_utils para leer de consola.
'''

from input_utils import read_int, read_float, read_bool

contactos = ['Antonio@gmail.com', 'Diego@gmail.com', 'Alexandra@gmail.com', 'Diana@gmail.com']
while True:
    print('''
Elige una opción:
1 - Ver todos los contactos
2 - Ver un contacto
3 - Insertar/crear nuevo contacto
4 - Actualizar contacto existente
5 - Borrar contacto
6 - Borrar todos los contactos
7 - Salir (break)
          ''')
    
    opcion = read_int('Introduce una opción válida (1 - 7): ')
    if opcion == 1:
        print('Ha elegido ver todos los contactos')
        print(contactos)
    elif opcion == 2:
        print('Ha elegido ver un contacto')
        # al indice le restamos 1 para que empiece en 0 como las listas
        indice = read_int(f'Introduce la posicion de contacto (1 a {len(contactos)}): ') - 1
        #acceder al indice de la lista e imprimir el elemento
        print(contactos[indice])
    elif opcion == 3:
        print('Ha elegido crear un nuevo contacto')
        email = input('Introduce el email del nuevo contacto: ')
        contactos.append(email)   
    elif opcion == 4:
        print('Ha elegido editar un contacto existente')
        indice = read_int(f'Introduce la posicion de contacto (1 a {len(contactos)}): ') - 1
        print(f'La posición introducida corresponde al contacto: {contactos[indice]}')
        email = input('Introduce el email del contacto ya actualizado: ')
        contactos[indice] = email
    elif opcion == 5:
        print('Ha elegido borrar un contacto')
        # indice = read_int(f'Introduce la posicion de contacto (1 a {len(contactos)}): ') - 1
        # email_borrado = contactos.pop(indice) # extrae/saca un elemento de la lista y lo retorna
        # print(f'se ha borrado el contacto {email_borrado}')
        # otra opción: del
        # otra opción: .remove()
        print(f'Contactos: {contactos}')
        email_para_borrar = input('Introduce el email del contacto que quieres borrar: ')
        # comprobar si existe ante de borrar utilizando operador de membresía:
        if email_para_borrar in contactos:
            contactos.remove(email_para_borrar)
        else:
            print('no existe el contacto a borrar')
    elif opcion == 6:
        print('Ha elegido limpiar todos los contactos, se vaciará la lista.')
        # si/no está de acuerdo
        confirmacion = read_bool('Introduce si está de acuerdo (si/no): ')
        if confirmacion:
            contactos = []
            # contactos.clear()
            
    elif opcion == 7:
        print('Elegiste la opción salir')
        salir = read_bool('¿Estas seguro? (si/no) : ')
        if salir:
            print('Hasta pronto')
            break
        else:
            print('Continue su busqueda')

    else: 
        print('Opción incorrecta.')