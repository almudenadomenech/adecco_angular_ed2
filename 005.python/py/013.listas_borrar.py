
# MÉTODO remove()
names = ['Ana', 'Diego', 'Gemma', 'Alan']
names.remove('Alan')
# names.remove('Alan') # Da un error ValueError: list.remove(x): x not in list
print(names)

# MÉTODO pop(): elimina y devuelve un elemento de la lista por su índice, por defecto el último
names = ['Ana', 'Diego', 'Gemma', 'Alan', 'Albora', 'Raquel']
ultimo = names.pop() # sin indice te devuelve el último
print(names)
diego = names.pop(1)
print(names)

# PALABRA RESERVADA del
names = ['Ana', 'Diego', 'Gemma', 'Alan', 'Albora', 'Raquel']
del names[0]
print(names)