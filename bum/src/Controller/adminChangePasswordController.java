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
import Tools.MD5;

/**
 * Servlet implementation class adminChangePasswordController
 */
@WebServlet("/mec/change-password.html")
public class adminChangePasswordController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public adminChangePasswordController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.getRequestDispatcher("/site/admin/admin-change-password.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		HttpSession session = req.getSession();
		String usn = (String) session.getAttribute("username");
		String curpwd = req.getParameter("curpwd");
		UserDAO dao = new UserDAO();
		try {
			curpwd = MD5.encryption(curpwd);
			if (!dao.checkPWD(usn, curpwd)) {
				session.setAttribute("mess", "Mật khẩu hiện tại không đúng");
			} else {
				// check confirm
				String newpwd = req.getParameter("newpwd");

				String rewpwd = req.getParameter("rewpwd");

				if (!newpwd.equals(rewpwd)) {
					session.setAttribute("mess", "Mật khẩu xác nhận không đúng");
				} else {
					newpwd = MD5.encryption(newpwd);
					dao.changePass(usn, newpwd);
					session.setAttribute("mess", "Đổi mật khẩu thành công");
				}

			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		doGet(req, resp);
	}

}
