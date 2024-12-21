public class TiposDeDatos {
    public static void main(String[] args) {

        // Números enteros
        int miNumero1 = 200;
        int miNumero2 = 300;
        // int miNumero2 = 300; // Intenta volver a crearla pero falla porque ya existe
        miNumero2 = 500; // sobreescribe el valor de la variable

        long miNumero3 = 500;

        System.out.println(miNumero1);
        System.out.println(miNumero2);
        System.out.println(miNumero3);


        // Números decimales
        float numeroDecimal = 5.99f; // Hay que especificar con una f que se trata de un float
        double numeroDecimal2 = 10.99; // No es obligatorio poner una d
        double numeroDecimal3 = 10.99d; // La letra d indica que es un double, pero no es obligatorio

        System.out.println(numeroDecimal);
        System.out.println(numeroDecimal2);
        System.out.println(numeroDecimal3);
  
        // Booleanos
        boolean isActive = true;
        boolean isStudent = false;
        boolean isWorker = true;

        // Caracteres con comilla simple. Menos común de utilizar.
        char letter = 'A';
        // char letter2 = 'AL'; // No deja añadir más de un caracter.
        // char letter3 = "A"; // No deja usar comilla doble para char porque son para String

        // Texto
        String texto = "Hola mundo";
        boolean esVacio = texto.isBlank(); // Método de string para comprobar si un string está vacío

        String descripcion = "Producto desechable ecológico " + 
        "duradero y respetable con el medio ambiente";

        /* Sin cerrar comillas dobles en cada línea da fallo:
        String descripcion2 = "texto muy largo de varias lineas
        otra linea
        otra linea";
        */

        // String bloque de texto multilínea
        String textoLargo = """
                Esto es una línea
                Esto es otra línea
                y otra más
                """;

        System.out.println(textoLargo);

    }
}
