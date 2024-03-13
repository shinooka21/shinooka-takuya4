package circle;

public class ObjectPractice04 {
	
	public static void main(String[] args) {
        // Parsonクラスのインスタンスを作成し、引数を用いて初期化
        Person person = new Person("John", "Tokyo");

        // getSelfIntroductionメソッドを呼び出して自己紹介を表示
        String introduction = person.getSelfIntroduction();
        System.out.println(introduction);
    }
}

class Person {
    private String name;
    private String hometown;

    // コンストラクタで名前と出身を初期化
    public Person(String name, String hometown) {
        this.name = name;
        this.hometown = hometown;
    }

    // 自己紹介を取得するメソッド
    public String getSelfIntroduction() {
        return "私の名前は" + name + "です。" + hometown + "出身です。";
    }
    

        //05で使う
        public String getName() {
            return name;
        }

        public String getHometown() {
            return hometown;
        }

}
