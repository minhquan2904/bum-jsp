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
import Tools.UnsignURL;

/**
 * Servlet implementation class addNewsController
 */
@WebServlet("/mec/addNewsController")
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
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.getRequestDispatcher("/site/admin/add-News.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		
		try {
			int status = Integer.parseInt(req.getParameter("status"));	
			String title = req.getParameter("title");			
			int category = Integer.parseInt(req.getParameter("category"));
			String content = req.getParameter("content");
			Document doc = new Document();
			doc.setTitle(title);
			doc.setContent(content);
			doc.setCategory(category);
			String url = UnsignURL.ToUnsignString(title);
			doc.setUrl(url);
			doc.setView(0);
			doc.setStatus(status);
			doc.setDate(new java.sql.Date(Calendar.getInstance().getTimeInMillis()));
			PostDAO p = new PostDAO();
			p.insertPost(doc);
			/*if (status == 0) // preview
				// req.getRequestDispatcher("/site/preview.jsp").forward(req, resp);
				resp.sendRedirect("site/preview.jsp");*/

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

}
