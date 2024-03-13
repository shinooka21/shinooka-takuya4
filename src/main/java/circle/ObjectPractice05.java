package circle;

public class ObjectPractice05 {
	public static void main(String[] args) {

        Person person1 = new Person("佐藤", "北海道");
        Person person2 = new Person("伊藤", "岩手");
        Person person3 = new Person("渡辺", "福島");
        Person person4 = new Person("小林", "長野");
        Person person5 = new Person("吉田", "新潟");
        Person person6 = new Person("佐々木", "秋田");

        displayPersonInfo(person1);
        displayPersonInfo(person2);
        displayPersonInfo(person3);
        displayPersonInfo(person4);
        displayPersonInfo(person5);
        displayPersonInfo(person6);
    }
	
    private static void displayPersonInfo(Person person) {
        System.out.println("名前: " + person.getName());
        System.out.println("出身: " + person.getHometown());
        System.out.println();
    }
}



