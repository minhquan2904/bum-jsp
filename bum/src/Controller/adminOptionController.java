package Controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.OptionDAO;
import Model.Option;

/**
 * Servlet implementation class adminOptionController
 */
@WebServlet("/mec/adminOption.html")
public class adminOptionController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public adminOptionController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		OptionDAO od = new OptionDAO();

		try {
			request.setAttribute("dsanh", od.getListOption());
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		request.getRequestDispatcher("/site/admin/admin-option.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		try{
			OptionDAO od=new OptionDAO();
			for(int i=1;i<=5;i++){
				String link = req.getParameter(String.valueOf(i));
			
				if(od.updateOption(i, link))
					System.out.println("thanh cong");
				else
					System.out.println("that bai");	
			}
			
		}catch(Exception e){
			e.getStackTrace();
		}
		
		
	}

}
