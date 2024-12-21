
/**
 * and equivale a && en java
 * or equivale a || en java
 * not equivale a ! en java
 */
public class OperadorLogicoOr {
    
    public static void main(String[] args) {
        
        // disyunción, or, ||. Con que uno sea true ya el resultado es true
        boolean isStudent = false;
        int age = 80;
        boolean isEligible = isStudent || age < 60;
        System.out.println(isEligible);

        // Combinar conjunción y disyunción

        isStudent = true;
        age = 15;
        // age > 20 y age < 80 o isStudent
        isEligible =  age > 20 && age < 80 || isStudent;
        System.out.println(isEligible);

    }
}
