
public class Switch {
    
    public static void main(String[] args) {
        
        int weekDay = 34;
        

        switch (weekDay) {
            case 1:
                System.out.println("Hoy es lunes");
                break;
            case 2:
                System.out.println("Hoy es martes");
                break;
            case 3:
                System.out.println("Hoy es miércoles");
                break;
            case 4:
                System.out.println("Hoy es jueves");
                break;
            case 5:
                System.out.println("Hoy es viernes");
                break;
            case 6:
                System.out.println("Hoy es sábado");
                break;
            case 7:
                System.out.println("Hoy es domingo");
                break;
            default: // caso por defecto si el número no coincide con ninguno de los anteriores
                System.out.println("Valor incorrecto.");
                break;
        }
    }
}
