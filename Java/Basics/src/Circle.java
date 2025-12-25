
public class Circle extends Shape {
	
	void draw() {
		System.out.println("Drawing cirlce");
	}
	
	public static void main(String args[]) {
		Shape s = new Circle();
		s.draw();
	}

}
