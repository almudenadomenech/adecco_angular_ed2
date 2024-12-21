public class ArraysEjemplo {
    public static void main(String[] args) {

        // Array es una estructura de datos

        int[] numeros = new int[5];
        numeros[0] = 10;
        numeros[1] = 20;
        numeros[2] = 30;
        numeros[3] = 40;
        numeros[4] = 50;
        // numeros[5] = 60; // ArrayIndexOutOfBoundsException: Index 5 out of bounds for
        // length 5

        // IMPRIMIR LA LONGITUD DEL ARRAY, 5 ELEMENTOS
        System.out.println(numeros.length);
        System.out.println(numeros[2]); // 30

        String[] nombres = new String[3]; // Longitud 3
        nombres[0] = "Alexandra";
        nombres[1] = "Gemma";
        nombres[2] = "Luis";

        // más directo, asigna y crea a la vez
        double[] precios = { 2.37, 4.99, 10.22 };
        System.out.println(precios[0]);
        System.out.println(precios[1]);
        System.out.println(precios[2]);
        // System.out.println(precios[-1]); // ArrayIndexOutOfBoundsException: Index -1 out of bounds for length 3
        System.out.println(precios); // [D@4617c264 Para mostrar todos los precios, se puede usar un bucle for
    }
}
