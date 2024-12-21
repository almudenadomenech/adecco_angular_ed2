public class FuncionesSobrecarga {
    
    /*
     * Sobrecarga:
     * 
     * mecanismo que permite tener múltiples funciones que se llaman igual
     * pero con distintos parámetros / tipos de parámetros.
     * 
     * Como los parámetros son distintos entonces no hay problema
     * 
     * Si los parámetros fueran igual entonces daría error de duplicado.
     */
    public static void main(String[] args) {
        

        int numero1 = 5;
        int numero2 = 10;

        int resultado1 = suma(numero1, numero2);
        System.out.println(resultado1);

        double numero3 = 10.99;
        double numero4 = 15.23;
        double resultado2 = suma(numero3, numero4);
        System.out.println(resultado2);

        String nombre = "Alan";
        String apellido = "Sastre";
        String nombreCompleto = suma(nombre, apellido);
        System.out.println(nombreCompleto);

    }

    private static String suma(String nombre, String apellido) {
        return nombre + " " + apellido;
    }
    private static double suma(double numero3, double numero4) {
        return numero3 + numero4;
    }
    private static int suma(int numero1, int numero2) {
        return numero1 + numero2;
    }

    private static int suma(int numero1, int numero2, int numero3) {
        return numero1 + numero2 + numero3;
    }
}
