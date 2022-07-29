package forward;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class BBServlet
 */
@WebServlet("/BBServlet")
public class BBServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
     
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("BBServlet에 get요청 도착함!");
		
		// Ex601b.jsp로 forward방식으로 이동.
		// "request.getRequestDispatcher(다음경로).forward(request, response);
		// "response.sendRedirect(다음페이지경로);"
		request.setAttribute("name", "YG");
		//request.getRequestDispatcher("Ex601b.jsp").forward(request, response);
		response.sendRedirect("Ex601b.jsp");
	}

}
