package Controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.Calendar;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.PostDAO;
import Model.Document;

/**
 * Servlet implementation class addNewsController
 */
@WebServlet("/addNewsController")
public class addNewsController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public addNewsController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.getRequestDispatcher("/site/admin/add-News.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		
		try {
			String title = req.getParameter("title");
			int category=Integer.parseInt(req.getParameter("category"));
			String content = req.getParameter("content");
			Document doc=new Document();
			doc.setTitle(title);
			doc.setContent(content);
			doc.setCategory(category);
			doc.setUrl("");
			doc.setView(0);
			doc.setStatus(0);
			doc.setDate(new java.sql.Date(Calendar.getInstance().getTimeInMillis()));
			PostDAO p=new PostDAO();
			p.insertPost(doc);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}
