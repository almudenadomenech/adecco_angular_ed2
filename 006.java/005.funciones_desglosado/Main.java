public class Main {
    public static void main(String[] args) {
        
        int numero1 = 5;
        int numero2 = 10;

        // 1 - ACCEDER A MÉTODOS static. Se accede a través de la clase.
        int resultado1 = CalculadoraBasica.suma(numero1, numero2);
        double resultado2 = CalculadoraBasica.suma(10.5, 20.5);
        double[] calificaciones = {5, 7, 9, 3, 5, 8};
        double media = CalculadoraAvanzada.media(calificaciones);
        String numero5 = String.valueOf(5);


        // 2 - ACCEDER A MÉTODOS NO static. Se accede a través de un objeto/variable.
        String texto = new String("Hola mundo");
        texto.length();
        String frase = "Hola muy buenas";
        frase.isEmpty();
    }
}
