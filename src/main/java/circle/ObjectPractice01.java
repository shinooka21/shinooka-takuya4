package circle;

public class ObjectPractice01 {
	
	public static void main(String[] args) {
        //引数なし
        Circle circle = new Circle();

        double area = circle.getArea();
        System.out.println("半径5の円の面積: " + area);

        double circumference = circle.getCircumference();
        System.out.println("半径5の円の円周: " + circumference);
    }

}
