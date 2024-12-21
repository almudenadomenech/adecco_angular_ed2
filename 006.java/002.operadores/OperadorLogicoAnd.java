

public class OperadorLogicoAnd {

    public static void main(String[] args) {
        
        double precio = 50.55;
        double peso = 25;

        // Conjunción, and, &&. Todas las condiciones deben ser true para obtener true
            // Opción 1: todo en una línea
        boolean isPrice100And200 = precio > 20 && precio < 100 && peso > 5 && peso < 30;
        System.out.println(isPrice100And200);

            // Opción 2 desglosar condiciones en variables independientes
        boolean isCorrectPrice = precio > 20 && precio < 100;
        boolean isCorrectWeight = peso > 5 && peso < 30;
        boolean isCorrectProduct = isCorrectPrice && isCorrectWeight;
        System.out.println(isCorrectProduct);


    }
}