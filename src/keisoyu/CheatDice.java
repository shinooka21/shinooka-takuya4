package keisoyu;

public class CheatDice extends Dice {

    // 振る回数が６の倍数の時は必ず６を返す
    @Override
    public int cast() {
        int result;
        if (getRollCount() % 6 == 0) {
            result = 6;
        } else {
            result = super.cast();
        }
        return result;
    }
}
