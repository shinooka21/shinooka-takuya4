package circle;

public class ObjectPractice02 {
	
	public static void main(String[] args) {
        // 引数あり
        Circle circle = new Circle(10);
        
        double area = circle.getArea();
        System.out.println("半径10の円の面積: " + area);

        double circumference = circle.getCircumference();
        System.out.println("半径10の円の円周: " + circumference);
    }

}
