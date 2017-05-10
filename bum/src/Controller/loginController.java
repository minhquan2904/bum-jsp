package Controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.UserDAO;
import Model.User;
import Tools.MD5;

/**
 * Servlet implementation class loginController
 */
@WebServlet("/mecute.html")
public class loginController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public loginController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();

		if (session.getAttribute("login") != null) {
			response.sendRedirect("mec/admin-interface.html");
		}
		else
		{
		request.getRequestDispatcher("/site/mecute.jsp").forward(request, response);
		}

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();

		if (session.getAttribute("login") != null) {
			response.sendRedirect("mec/admin-interface.html");
		}
		String usn = request.getParameter("Username");
		String pwd = request.getParameter("Password");
		UserDAO dao = new UserDAO();
		User user = new User();
		try {
			user = dao.login(usn, pwd);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		//System.out.println(user.getUsername());
		if (user != null) {
			session.setAttribute("username", usn);
			session.setAttribute("role", user.getRole());
			session.setAttribute("login", "login");
			response.sendRedirect("mec/admin-interface.html");
		} else {
			request.setAttribute("loginFail", "Please check username or password again!");
			request.getRequestDispatcher("/site/mecute.jsp").forward(request, response);
		}
	}

}
