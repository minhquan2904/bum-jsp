package Controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;


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
 * Servlet implementation class adminAddEditorController
 */
@WebServlet("/mec/add-editor.html")
public class adminAddEditorController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public adminAddEditorController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		ArrayList<User> list = new ArrayList<>();
		UserDAO dao = new UserDAO();
		try {
			list =dao.getAllUser();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if(!list.isEmpty())
		{
			request.setAttribute("list", list);
		}
		request.getRequestDispatcher("/site/admin/admin-add-editor.jsp").forward(request, response);
		session.removeAttribute("mess");
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		String username = req.getParameter("usn");
		String password = req.getParameter("pwd");
		String rewpassword = req.getParameter("rewpwd");
		Integer role = Integer.parseInt(req.getParameter("role"));
		HttpSession session = req.getSession();
		
		if(!password.equals(rewpassword))
		{
			session.setAttribute("mess", "Mật khẩu xác nhận không chính xác!!!!");
		}
		else
		{
			password = MD5.encryption(password);
			UserDAO dao = new UserDAO();
			try {
				if(dao.hasUser(username))
				{
					session.setAttribute("mess", "Insert thất bại, tài khoản đã tồn tại!!!!");
					System.out.println("tài khoản đã tồn tại!!!!");
				}
				else
				{
					try {
						dao.insertUser(username, password, role,1);
						session.setAttribute("mess", "Insert thành công!!!");
					} catch (SQLException e) {
						// TODO Auto-generated catch block
						session.setAttribute("mess", "Insert thất bại, tài khoản đã tồn tại hoặc lỗi hệ thống, liên hệ bộ phận kỹ thuật để báo lỗi!!!!");
						e.printStackTrace();
					}
				}
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
			
		}
		doGet(req, resp);
	}

}
