

public class OperadorTernario {

    public static void main(String[] args) {
        
        // Calcular impuestos de tu premio de lotería
        // hasta 40k exento, a partir de ahí un 20 %

        double premio = 200_000;
        double impuestos; // declara una variable

        if (premio > 40_000) {
            impuestos = premio * 0.20; // calcula 20 % del premio
        } else {
            impuestos = 0; // exento de impuestos
        }
        System.out.println(impuestos);

        // operador ternario: 
        // condicion/es ? resultadoSiTrue : resultadoSiFalse;
        impuestos = premio > 40_000 ? premio * 0.20 : 0;
        System.out.println(impuestos);
    }
}
