
public class ExceptionDemo {

    static void validate(int age) {
        if (age < 18)
            throw new ArithmeticException("Not eligible");
        else
            System.out.println("Eligible");
    }

    public static void main(String[] args) {
        try {
            validate(15);
        } catch (Exception e) {
            System.out.println(e);
        }
    }
}
