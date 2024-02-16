public class MethodPractice {
	
	//問題①
    public static int addTwoNumbers(int num1, int num2) {
        return num1 + num2;
        
    }
        
    //問題② 新しいメソッド: String型の引数を標準出力し、0を返す
    public static int printAndReturnZero(String inputString) {
    System.out.println("入力された文字列: " + inputString);
        return 0;
    
    }
    
    //問題③
    public static int repeatString(String inputString, int repeatCount) {
        for (int i = 0; i < repeatCount; i++) {
            System.out.print(inputString);
        }
        System.out.println();  // 改行
        return repeatCount;
    }
    
    // 問題④HelloWorld!を戻り値voidでだす。
    public static void printHelloWorld() {
        System.out.println("HelloWorld!");
    }
    
    //問題⑤doubleをString型に型変換
    public static String convertDoubleToString(double inputDouble) {
        return String.valueOf(inputDouble);
    }
    
    //問題⑥任意の２つの引数の割り算結果
    public static double divideValues(double dividend, double divisor) {
        if (divisor != 0) {
            return dividend / divisor;
        } else {
            System.out.println("Error: Division by zero is undefined.");
            return Double.NaN;
        }
    }
        
    //問題⑦自分の名前を引数なしで返す
     public static String getMyName() {
		    return "篠岡拓也";
	}
     
    //問題⑧
     public static boolean isZero(int number) {
         return number == 0;
     }
     
     //問題⑨文字の連結
     public static String concatenateChars(char char1, char char2) {
         return String.valueOf(char1) + String.valueOf(char2);
     }
     
     //問題⑩
     public static int processInput(int input) {
         if (input >= 0 && input <= 299) {
             return 5;
         } else if (input >= 300 && input <= 999) {
             return 15;
         } else if (input >= 1000 && input <= 4999) {
             return 30;
         } else {
             return 50;
         }
         
     }
     
     //問題⑪
      public static boolean isLeapYear(int year) {
             if ((year % 4 == 0 && year % 100 != 0) || (year % 400 == 0)) {
                 return true;
             } else {
                 return false;
             }
         
     }
}

