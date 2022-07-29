package forward;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 * Servlet implementation class AAServlet
 */

@WebServlet("/AAServlet")
public class AAServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("AAServlet에 get요청이 도착함!");
		
		// Ex601b.jsp로 forward방식으로 이동.
		request.setAttribute("name", "YG");
		request.getRequestDispatcher("Ex601b.jsp").forward(request, response);
	}

}
