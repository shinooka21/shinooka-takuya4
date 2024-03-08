package stone1;

public class Utility {
	public static String getStoneDisplayHtml(int totalNum) {
        StringBuilder stoneDisplayHtml = new StringBuilder();

        for (int i = 0; i < totalNum; i++) {
            stoneDisplayHtml.append("●");

            if ((i + 1) % 10 == 0) {
                stoneDisplayHtml.append("<br>");
            }
        }

        return stoneDisplayHtml.toString();
    }

}
