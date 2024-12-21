public class FuncionesString {
    
    /*
     * La clase String proporciona una serie de métodos/funciones ya listos
     * para ser utilizados sobre una variable de tipo String
     */
    public static void main(String[] args) {
        
        String nombre = "Ambrosio developer";
        int nombreLongitud = nombre.length(); // 18
        System.out.println(nombreLongitud);

        char primeraLetra = nombre.charAt(0);
        char ultimaLetra = nombre.charAt(nombreLongitud - 1); // 17
        System.out.println(primeraLetra);
        System.out.println(ultimaLetra);

        boolean isDeveloper = nombre.contains("developer"); // true
        if (isDeveloper) {

            int beginIndex = 0;
            // int endIndex = 8;
            int endIndex = nombre.indexOf(" "); // Le pasamos el espacio que separa las dos palabras
    

            String firstName = nombre.substring(beginIndex, endIndex); // Ambrosio

            System.out.println(firstName + " es desarrollador de software a jornada completa.");
        }

        System.out.println(nombre.startsWith("A")); // true
        System.out.println(nombre.endsWith("developer")); // true

    }
}
