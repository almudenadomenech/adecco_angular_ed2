import java.util.ArrayList;

public class ArrayListEjemplo1 {
    
    /*
     * Ejemplo de cómo crear objetos/variables de tipo ArrayList
     */
    public static void main(String[] args) {
        
        String nombre = new String("Hola");

        ArrayList caja1 = new ArrayList();
        caja1.add("Hola");
        caja1.add(100);
        caja1.add(true);

        ArrayList caja2 = new ArrayList();
        caja2.add("Lámpara");
        caja2.add(500.32);
        caja2.add(false);
        caja2.add(caja1); // el otro arraylist


        // <> operador diamante disponible a partir de la versión Java 7
        ArrayList<Double> precios = new ArrayList<>();
        precios.add(500.33);
        // precios.add("Producto nuevo"); // No deja agregar String porque es de tipo Double

        // Crear un ArrayList de String y agregar emails a ese arraylist
        ArrayList<String> emails = new ArrayList<>();
        emails.add("prueba1@gmail.com");
        emails.add("prueba2@gmail.com");
        emails.add("prueba3@gmail.com");


        ArrayList<Boolean> aprobados = new ArrayList<>();
        aprobados.add(true);
        aprobados.add(false);
        aprobados.add(true);
        aprobados.add(false);

        ArrayList<Integer> edades = new ArrayList<>();
        edades.add(15);
        edades.add(20);
        edades.add(15);

        
    }
}
