
class Student {
   
	int id;         
    String name;    

    void display() {
        System.out.println("ID: " + id);
        System.out.println("Name: " + name);
    }

    public static void main(String[] args) {
        
    	Student s = new Student(); // object
        s.id = 101;
        s.name = "Vedant";
       
        s.display();
    }
}
