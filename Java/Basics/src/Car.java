
class Car implements Vehicle {

    @Override
    public String start() {
        return "Car started";
    }

    public static void main(String[] args) {

        Car car = new Car();        // create object
        String ans = car.start();  // call method using object
        System.out.println(ans);   // print output
    }
}