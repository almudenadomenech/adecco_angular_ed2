
import java.util.ArrayList;

public class ArrayListEjemplo2 {
    
    public static void main(String[] args) {
        // Crear una estructura de datos para almacenar datos dentro
        ArrayList<String> productos = new ArrayList<>();

        // Agregar elementos al ArrayList
        productos.add("PC Asus");
        productos.add("PC MSI");
        productos.add("SmartPhone OnePlus");

        // Mostrar todos los elementos
        System.out.println(productos);
        
        // Mostrar elementos uno a uno
        for (String producto : productos) {
            System.out.println(producto);
        }

        // Acceder a un elemento por posición
        String pcAsus = productos.get(0);
        String pcMSI = productos.get(2);

        // Calcular longitud de ArrayList
        System.out.println(productos.size()); // 3

        // Borrar un elemento
        productos.remove(0); // borra el producto que está en la posición 0
        productos.remove("SmartPhone OnePlus");

        // Calcular longitud de ArrayList
        System.out.println(productos.size()); // 1

        // Comprobar si un elemento existe dentro de la lista
        // Guardar el resultado en una variable e imprimirlo
        boolean pcExist = productos.contains("PC MSI");
        System.out.println(pcExist);
        // Imprimir el resultado directamente sin crear una variable
        System.out.println(productos.contains("PC MSI"));

        boolean isEmpty = productos.isEmpty();
        System.out.println("La lista esta vacia: " + isEmpty);

    }
}
