import java.util.ArrayList;

public class ArrayListEjemplo3 {
    public static void main(String[] args) {
        
        // Crear una lista de productos
        ArrayList<String> productos = new ArrayList<>();
        productos.add("Carcasa iPad");
        productos.add("Telefono fijo Motorola");
        productos.add("iPhone 15");
        productos.add("Xiaomi 13 Pro");

        // modificar el producto llamado iPhone 15 y ponerle iPhone 15T Plus

        // Averiguar el índice/posición del elemento "iPhone 15" utilizando indexOf
        int index = productos.indexOf("iPhone 15");
        
        // Modificar el elemento "iPhone 15" utilizando set
        String nuevoIPhone = "iPhone 15T Plus";
        String antiguoIPhone = productos.set(index, nuevoIPhone);

        for (String producto : productos) {
            System.out.println(producto);
        }
    }
}
