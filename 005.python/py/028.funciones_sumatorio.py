


def calcular_sumatorio(numeros):
    """Calcula el sumatorio y lo devuelve

    Args:
        numeros (list): lista de números int o float
    """
    sumatorio = 0
    for numero in numeros:
        sumatorio += numero
    
    return sumatorio


# Al utilizar la función vscode muestra su docstring
# INVOCAR LA FUNCIÓN
numeros = [1, 2, 3, 4, 5, 6]
calcular_sumatorio(numeros) # el resultado se está ignorando porque no hacemos nada con el
resultado = calcular_sumatorio(numeros) # el resultado de la función sumatorio lo guardo en una variable
resultado2 = calcular_sumatorio([100, 200, 300, 400])
print(resultado)
print(resultado2)
