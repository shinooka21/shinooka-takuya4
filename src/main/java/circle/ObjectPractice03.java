package circle;

public class ObjectPractice03 {
	
	public static void main(String[] args) {
        // 引数なし、半径を２０に更新
        Circle circle = new Circle();
        circle.radius = 20;

        double area = circle.getArea();
        System.out.println("半径20の円の面積: " + area);

        double circumference = circle.getCircumference();
        System.out.println("半径20の円の円周: " + circumference);
        
	}

}
