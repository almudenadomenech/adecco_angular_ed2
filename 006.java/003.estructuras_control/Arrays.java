public class Arrays {
    
    public static void main(String[] args) {
        
        // tipodato[] identificador = {valor1, valor2, ...};
        double[] precios = {4.33, 13.44, 47.55};
        boolean[] ofertas = {true, false, true};

        // iterar sobre ambos a la vez:
        for (int i = 0; i < ofertas.length; i++) {
            System.out.println("El precio es " + precios[i] 
            + " y tiene oferta " + ofertas[i]);
        }

        // tipo[] identificador = new tipo[longitud];
        String[] nombres = new String[3]; // longitud máxima 3
        nombres[0] = "Susana";
        nombres[1] = "Diego";
        nombres[2] = "Almudena";

        for (int i = 0; i < nombres.length; i++) {
            nombres[i] += " Editado";
            System.out.println(nombres[i]);
        }


    }

}
