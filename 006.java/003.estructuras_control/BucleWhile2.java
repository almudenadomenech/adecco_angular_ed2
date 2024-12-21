public class BucleWhile2 {
    public static void main(String[] args) {
       
        String[] nombres = {"Juan", "Alexandra", "Wally", "Bob"};

        // se usa esta variable dentro del bucle while
        boolean encontrado = false; 
        int count = 0;

        while (count < nombres.length) {
            encontrado = nombres[count] == "Wally"; // comparación devuelve boolean

            System.out.println(nombres[count] + " igual Wally es " + encontrado);
            if (encontrado) {
                break;
            } else {
                System.out.println("No se ha encontrado a Wally sigo buscando");
            }
            count++; // incrementa en 1
        }
        // ahora sí se puede usar la variable fuera del bucle porque se creó fuera del bucle
        System.out.println(encontrado); 
    }
}
