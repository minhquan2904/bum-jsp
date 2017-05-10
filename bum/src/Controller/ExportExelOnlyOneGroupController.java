package Controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.RegistDAO;
import Model.Member;
import Tools.ExporExel;
import jdk.nashorn.internal.ir.RuntimeNode.Request;

/**
 * Servlet implementation class ExportExelOnlyOneGroupController
 */
@WebServlet("/admin-ExportExel.html")
public class ExportExelOnlyOneGroupController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ExportExelOnlyOneGroupController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String name = request.getParameter("group_name");
		
		RegistDAO dao = new RegistDAO();
		ArrayList<Member> list = new ArrayList<>();
		try {
			list = dao.getListMemberByGroupName(name);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		String location = "";
		String path = ExporExel.ExportMember(list, location);
		request.setAttribute("path", path);
		
		request.getRequestDispatcher("/site/admin/admin-export-member.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
