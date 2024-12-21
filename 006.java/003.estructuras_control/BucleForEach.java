public class BucleForEach {
    
    public static void main(String[] args) {
        
        long[] calificaciones = {4, 8, 3, 10, 3};

        // foreach: obtiene directamente el valor en cada iteración
        for (long calificacion : calificaciones) {
            System.out.println(calificacion);
        }

        // itera de uno en uno
        for (int i = 0; i < calificaciones.length; i ++) {
            System.out.println(calificaciones[i]);
        }

        // itera de dos en dos
        for (int i = 0; i < calificaciones.length; i += 2) {
            System.out.println(calificaciones[i]);
        }
    }
}
