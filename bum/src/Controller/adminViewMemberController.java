package Controller;

import java.io.IOException;
import java.rmi.server.ExportException;
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

/**
 * Servlet implementation class adminViewMemberController
 */
@WebServlet("/mec/adminViewMember.html")
public class adminViewMemberController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public adminViewMemberController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Integer id = Integer.parseInt(request.getParameter("id")) ;
		
		RegistDAO dao = new RegistDAO();
		ArrayList<Member> list = new ArrayList<>();
		try {
			list = dao.getListMember(id);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if(!list.isEmpty())
		{
			request.setAttribute("list", list);
			String group_name = list.get(0).getGroup_name();
			request.setAttribute("group_name", group_name);
		}
		//String location = "";
		//ExporExel.ExportMember(list, location);
		
		request.getRequestDispatcher("/site/admin/adViewMember.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
