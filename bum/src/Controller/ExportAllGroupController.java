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
import Model.Group_regist;
import Model.Member;
import Tools.ExporExel;

/**
 * Servlet implementation class ExportAllGroupController
 */
@WebServlet("/mec/ExportAllGroup.html")
public class ExportAllGroupController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ExportAllGroupController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RegistDAO dao = new RegistDAO();
		ArrayList<Group_regist> list = new ArrayList<>();
		
		try {
			list = dao.getListGroupRegist();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		String location = "";
		String path = ExporExel.ExportAllGroup(list, location);
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
