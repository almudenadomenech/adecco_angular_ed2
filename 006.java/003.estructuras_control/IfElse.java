
public class IfElse {

    public static void main(String[] args) {

        double precio = 56.44;

        if (precio >= 50) {
            System.out.println("Precio igual o superior a 50 €");
        } else {
            System.out.println("Precio inferior a 50 €");
        }

        // múltiples condiciones
        int hora = 12;

        if (hora > 0 && hora <= 8) {
            System.out.println("Hora en 0 y 8, durmiendo");
        } else if (hora > 8 && hora <= 15) {
            System.out.println("Curso Angular");
        } else if (hora > 15 && hora <= 24) {
            System.out.println("Curso de Java");
        } else {
            System.out.println("Valor incorrecto");
        }

        // Si SOLO HAY UNA SENTENCIA dentro de las estructuras if else entonces se
        // pueden omitir las llaves {}
        if (hora > 0 && hora <= 8)
            System.out.println("Hora en 0 y 8, durmiendo");
        else if (hora > 8 && hora <= 15)
            System.out.println("Curso Angular");
        else if (hora > 15 && hora <= 24)
            System.out.println("Curso de Java");
        else
            System.out.println("Valor incorrecto");

    }
}
