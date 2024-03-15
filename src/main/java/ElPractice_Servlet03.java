

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ElPractice_Servlet03
 */
@WebServlet("/ElPractice03")
public class ElPractice_Servlet03 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ElPractice_Servlet03() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // 入力値の取得
    	 String birthYearStr = request.getParameter("birthYear");

         //閏年かどうかを判定
         boolean isLeapYear = checkLeapYear(birthYearStr);

         String resultMessage = isLeapYear ? "入力された年は閏年です。" : "入力された年は閏年ではありません。";

         request.setAttribute("resultMessage", resultMessage);
         request.setAttribute("birthYear", birthYearStr);

         request.getRequestDispatcher("/elPractice_result03.jsp").forward(request, response);
     }

     private boolean checkLeapYear(String year) {
         try {
             int birthYear = Integer.parseInt(year);
             return (birthYear % 4 == 0 && (birthYear % 100 != 0 || birthYear % 400 == 0));
         } catch (NumberFormatException e) {
             return false;
         }
     }
}
