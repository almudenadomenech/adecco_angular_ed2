public class BucleWhile {
    

    public static void main(String[] args) {
        
        int contador = 0;
        while (contador < 10) {
            contador++;
            System.out.println("contador: " + contador);
        }

        // Utilizar bucle para encontrar a Wally, detener el bucle al encontrarlo
        String[] nombres = {"Juan", "Alexandra", "Wally", "Bob"};

        // boolean found
        // while break
        int count = 0;

        while (count < nombres.length) {
            boolean resultado = nombres[count] == "Wally";

            System.out.println(nombres[count] + " igual Wally es " + resultado);
            
            if (resultado) {
                break;
            } else {
                System.out.println("No se ha encontrado a Wally sigo buscando");
            }
            
            count++; // incrementa en 1
            
        }
        // System.out.println(resultado); // resultado existe solo dentro del bucle while

        // count 0 < 4
        // count 1 < 4
        // count 2 < 4
        // count 3 < 4
        // count 4 < 4 se incumple

    }
}
