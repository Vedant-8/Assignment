
class Exam {
  
	final int MAX_MARKS = 100; // constant
    int marks;

    Exam(int marks) {          // constructor
        this.marks = marks;
    }

    void result() {
        if (marks >= 40)
            System.out.println("Pass");
        else
            System.out.println("Fail");
    }

    public static void main(String[] args) {
       
    	Exam e = new Exam(75);
        e.result();
    }
}
