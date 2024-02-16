
public class Test {

	public static void main(String[] args) {
		
		//問題①
        int result = MethodPractice.addTwoNumbers(3, 7);
        System.out.println("問題①の２つの数を足した結果: " + result);
        
        // 問題②
        int result2 = MethodPractice.printAndReturnZero("Hello, World!");
        System.out.println("問題②: " + result2);
        
        //問題③
        int result3 = MethodPractice.repeatString("Hello, ", 3);
        System.out.println("問題③の結果: " + result3);
        
        //問題④
        MethodPractice.printHelloWorld();
        
        //問題⑤
        double inputDouble = 3.14;
        String result4 = MethodPractice.convertDoubleToString(inputDouble);
        System.out.println("問題⑤の結果: " + result4);
        
        //問題⑥
        double result5 = MethodPractice.divideValues(10.0, 2.0);
        System.out.println("問題⑥の結果: " + result5);
        
        //問題⑦
        String myName = MethodPractice.getMyName();
        System.out.println("問題⑦の結果: " + myName);
        
        //問題⑧
     // 新しいメソッド5を呼び出して引数が０ならtrue、それ以外ならfalseを出力
        int inputNumber = 0;
        boolean result8 = MethodPractice.isZero(inputNumber);
        System.out.println("問題⑧の結果: " + result8);
        
        //問題⑨
        char char1 = 'A';
        char char2 = 'B';
        String result9 = MethodPractice.concatenateChars(char1, char2);
        System.out.println("問題⑨の結果: " + result9);
        
        //問題⑩
        int input = 4000;
        int result10 = MethodPractice.processInput(input);
        System.out.println("問題⑩の結果: " + result10);
        
        //問題⑪
        int inputYear = 2024;
        boolean result11 = MethodPractice.isLeapYear(inputYear);
        System.out.println(inputYear + "年はうるう年かどうか: " + result11);
    }
	

	}


