package keisoyu;

public class DiceTest {
    
    public static void main(String[] args) {
        Dice dice = new Dice();

        System.out.println("Dice.javaのテスト");
     // 30回実施
        for (int i = 0; i < 30; i++) {
            int result = dice.cast();
            int lastResult = dice.see();

            System.out.println("投げた結果: " + result + "  最後に投げた目: " + lastResult);
        }
        
        System.out.println("CheatDiceのテスト");
        Dice cheatDice = new CheatDice();

        // 30回実施
        for (int i = 0; i < 30; i++) {
            int result = cheatDice.cast();
            int lastResult = cheatDice.see();

            System.out.println("投げた結果: " + result + "  最後に投げた目: " + lastResult);
        }
    }
}
