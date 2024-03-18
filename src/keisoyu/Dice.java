package keisoyu;

import java.util.Random;

public class Dice {

	private int lastRoll = 0;
	private int rollCount = 0;

    // １～６のランダムな値を戻り値として返す
    public int cast() {
        Random rand = new Random();
        lastRoll = rand.nextInt(6) + 1;
        return lastRoll;
    }

    // 最後に振った目を戻り値として返し、一度も振ったことのないときは1を返す
    public int see() {
        return (lastRoll == 0) ? 1 : lastRoll;
    }
    //振られた回数を返す
    public int getRollCount() {
        return rollCount;
    }

}
