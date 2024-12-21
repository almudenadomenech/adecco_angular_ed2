
La operación de resto `%`, también conocida como operación módulo, es extremadamente útil en muchos contextos de programación. A continuación, te presento varias situaciones en las que podrías utilizar la operación de resto en un lenguaje como Java:

1. **Comprobación de paridad**: Puedes usar `%` para saber si un número es par o impar.
   ```java
   if (numero % 2 == 0) {
       // El número es par
   } else {
       // El número es impar
   }
   ```

2. **Ciclos en rangos**: Para hacer que un índice se mantenga dentro de un rango, como volver al inicio de un arreglo después de alcanzar el final.
   ```java
   int siguienteIndice = (indiceActual + 1) % arreglo.length;
   ```

3. **Distribución uniforme de elementos**: Por ejemplo, para asignar tareas a trabajadores de manera equitativa.
   ```java
   int trabajador = tareaId % numeroTrabajadores;
   ```

4. **Cálculos de dígitos**: Extraer dígitos de un número (por ejemplo, obtener el último dígito de un número entero).
   ```java
   int ultimoDigito = numero % 10;
   ```

5. **Validaciones de algoritmos**: Como el cálculo de dígitos de control en números de identificación o códigos de barras (ISBN, códigos de cuenta bancaria, etc.).
   ```java
   int digitoControl = calcularDigito(numero % divisor);
   ```

6. **Criptografía**: Algunos algoritmos criptográficos utilizan operaciones módulo para cifrar y descifrar información.

7. **Simulación de comportamientos periódicos**: En simulaciones físicas o matemáticas, donde ciertos fenómenos son cíclicos (como el movimiento de los astros, ondas, etc.).
   ```java
   double angulo = (tiempo % periodo) * (2 * Math.PI / periodo);
   ```

8. **Implementación de algoritmos matemáticos**: En teoría de números, algoritmos de cálculo de MCD, MMC, y en criptografía para algoritmos como RSA donde las operaciones módulo son fundamentales.

9. **Creación de hashes**: Al implementar funciones hash en estructuras de datos como tablas hash, donde el módulo ayuda a limitar el valor dentro del rango del tamaño del arreglo.

10. **Control de flujo en bucles**: Para ejecutar una acción cada cierto número de iteraciones.
    ```java
    for (int i = 0; i < 100; i++) {
        if (i % 10 == 0) {
            // Realizar una acción cada 10 iteraciones
        }
    }
    ```

11. **Animaciones y gráficos**: En el desarrollo de juegos y animaciones, para crear patrones de movimiento o animaciones que se repiten después de cierto tiempo.

12. **Trabajo con fechas y horas**: Por ejemplo, para calcular el día de la semana dado un número de días transcurridos, o para calcular segundos/minutos/horas pasadas dado un número de segundos totales.

13. **Generación de secuencias periódicas**: Como en la generación de números pseudoaleatorios o secuencias de números que siguen un patrón cíclico.



## FUNDAMENTOS DE PROGRAMACIÓN

https://formacion.fundacionadecco.org/courses/fundamentos-de-programacion-front-end-e2


Descargar el programa PSeInt:

https://pseint.sourceforge.net/

Instalador para Windows de 64bit (exe - 9.7MB)

Cuando se abre por primera vez te pide: 

* Seleccionar perfil: Opción 1
* Flexible y seleccionar la opción flexible

Estructura base para cualquier programa en PSeInt:

Algoritmo sin_titulo
	
FinAlgoritmo

Poner un título sin comillas ni espacios:

Algoritmo HolaMundo
	
FinAlgoritmo

## CONFIGURACIÓN

* Configurar
* Opciones del lenguaje (perfiles)
* Buscar Flexible y seleccionarlo

## OPERACIONES BÁSICAS DE CUALQUIER LENGUAJE DE PROGRAMACIÓN

### ESCRIBIR

Esta operación equivale a imprimir por consola un texto o número o cualquier dato.

* PSeInt: Escribir 'Hola mundo'
* Python: print('Hola mundo')
* JavaScript/TypeScript: console.log('Hola mundo')
* Java: System.out.println("Hola mundo")

### LEER

Leer edad

Esta acción permite leer por pantalla un dato que introduzca el usuario y se asignaría a una variable.

### TIPOS DE DATOS

#### TEXTO O STRING

Escribir 'Hola mundo'
Escribir "Hola mundo"
Escribir "Hola mundo", " ", "Adios mundo"

#### NÚMEROS ENTEROS

Escribir 100
Escribir 100, 5

#### NÚMEROS DECIMALES

Escribir 100.50

#### BOOLEANOS

Escribir Verdadero
Escribir Falso

### COMENTARIOS

Se puede escribir un comentario utilizando //

Esto permite agregar texto específico para el desarrollador pero no se ejecuta, es ignorado por el programa.

Permite agregar explicaciones.

RECOMENDACIÓN: escribir el código de forma sencilla y clara con nombres/identificadores descriptivos para que no haga falta escribir comentarios.

### VARIABLES

Una variable es el elemento básico para trabajar con un valor en un programa.

Es normal en todos los programas utilizar variables para trabajar con información en lugar de usar directamente la información.

Ventajas:

* Reutilizar un valor a lo largo de múltiples sentencias de un mismo programa
* Al proporcionar un identificador ayuda a entender mejor el programa y hacerlo más descriptivo

Nombrado de variables (identificadores):

* No pueden empezar por un número
* No pueden tener espacios y no recomedable carácteres especiales ni acentos
* Para separar se puede hacer de variables formas dependiendo del lenguaje:
    * camelCase: telefonoMovil
    * snake_case: telefono_movil


### OPERADORES

Los operadores son caracteres especiales que permiten realizar operaciones con las variables.

Por ejemplo:

Devuelven un resultado numérico:

* suma
* resta
* multiplicación
* división
* resto

Devuelven un booleano (verdadero o falso):

* igual 
* distinto que
* mayor que
* mayor igual que
* menor que
* menor igual que