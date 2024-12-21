
def filtrar_precio1(precios):
    for precio in precios:
        print(precio)
    
 
def filtrar_precio2(precios, precio_minimo, precio_maximo):
    for precio in precios:
        if precio_minimo < precio < precio_maximo:
            print(precio)
    
    
def filtrar_precio3(precios, precio_minimo, precio_maximo):
    resultados = [] # lista vacía para almacenar los resultados
    for precio in precios:
        if precio_minimo < precio < precio_maximo:
            resultados.append(precio) # guarda el precio en la lista de resultados
            
    return resultados
        
precios = [20.99, 53.22, 32.77, 55.00, 300.12]
# devuelve la lista de precios filtrados  
resultados = filtrar_precio3(precios, 30, 60) 
    
    
    
    
    
    
    
    
    
    

