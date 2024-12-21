/*
 Las funciones que devuelven algo deben:

 1. especificar el tipo de retorno distinto a void
 2. Incluir una o varias sentencias return dentro de la función

 */
public class FuncionesConReturn {
    /** Constante:
     * private: hace que solamente pueda usarse la constante dentro de esta clase y no en otras clases
     * static: pertenece a la clase y no hace falta crear objeto
     * final: indica que no se puede modificar, que es final
     */
    static final double IVA_TIPO_GENERAL = 0.21; // variable constante
    static final double IVA_TIPO_REDUCIDO = 0.10;

    // main se ejecuta siempre al ejecutar el programa sí o sí
    // no confundir con ramas de git, son totalmente independientes
    public static void main(String[] args) {
        
        // No se puede modificar una constante
        // IVA_TIPO_GENERAL = 0.25;
        
        // Si no se guarda se ignora
        calcularIVA(100);

        // Se asigna con = el resultado en una variable nueva
        double precioConIVA = calcularIVA(100);
        System.out.println(precioConIVA);
    }

    public static double calcularIVA(double precio) {
        double iva = precio * IVA_TIPO_GENERAL;
        return precio + iva;
    }
}
