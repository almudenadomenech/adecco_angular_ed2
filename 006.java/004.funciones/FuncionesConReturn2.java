public class FuncionesConReturn2 {
    
    public static void main(String[] args) {
        
        int numero1 = 50;
        int numero2 = 30;

        int resultadoSuma = suma(numero1, numero2);
        System.out.println(resultadoSuma);

        int resultadoResta = resta(numero1, numero2);
        System.out.println(resultadoResta);
        
        // EJEMPLO CON ARRAY
        double[] calificaciones = { 7.4, 5.6, 8.3, 9.1 };
        double calificacionFinal = calcularCalificacion(calificaciones); // calcula la nota media
        System.out.println(calificacionFinal);
    }

    private static double calcularCalificacion(double[] calificaciones) {
        double suma = 0;

        for (double calificacion : calificaciones) {
            suma += calificacion;
        }

        double notaFinal = suma / calificaciones.length;

        return notaFinal;
    }

    private static int resta(int numero1, int numero2) {
        return numero1 - numero2;
    }

    private static int suma(int numero1, int numero2) {
        return numero1 + numero2;
    }

   
}
