

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ElPractice_Servlet04
 */
@WebServlet("/ElPractice04")
public class ElPractice_Servlet04 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ElPractice_Servlet04() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		String userInput = request.getParameter("userInput");
        request.setAttribute("userInput", userInput);

        // elPractice_result04へ画面遷移
        request.getRequestDispatcher("/elPractice_result04.jsp").forward(request, response);
	}

}
