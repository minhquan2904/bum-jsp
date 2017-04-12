package Controller;

import java.io.IOException;
import java.sql.SQLException;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.RegistDAO;
import Model.Group_regist;
import Model.Member;

/**
 * Servlet implementation class registController
 */
@WebServlet("/regist.html")
public class registController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public registController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("/site/regist.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */

	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		String foo= null;
		
		String[] availableDate = req.getParameterValues("foundation");
		String[] leaderbirthdayArray = req.getParameterValues("leader-birthday");
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		Group_regist regist = new Group_regist();
		ArrayList<Member> list = new ArrayList<>();
		try {
			String group_name = req.getParameter("group_name");
			
			String leadername = req.getParameter("leader-name");
			
			Date foundation =  dateFormat.parse(availableDate[0]);
			java.sql.Date sqlFoundation = new java.sql.Date(foundation.getTime());
			
			Date leaderbirthday = dateFormat.parse(leaderbirthdayArray[0]);
			java.sql.Date sqlLeaderbirthday = new java.sql.Date(leaderbirthday.getTime());
			
			String leaderphone = req.getParameter("leader-phone");
			
			Integer leaderindentity = Integer.parseInt(req.getParameter("leader-indentity"));
			
			String leaderemail = req.getParameter("leader-email");
			
			String leaderidStudent = req.getParameter("leader-idStudent");
			
			String schoolname = req.getParameter("school-name");
			
			String achivement = req.getParameter("achivement");
			
			String description = req.getParameter("description");
			
			regist.setName(group_name);
			regist.setLeader_name(leadername);
			regist.setFoundation(sqlFoundation);
			regist.setLd_birthday(sqlLeaderbirthday);
			regist.setLd_phone(leaderphone);
			regist.setLd_identity(leaderindentity);
			regist.setEmail(leaderemail);
			regist.setLd_idStudent(leaderidStudent);
			regist.setSchool(schoolname);
			if(!achivement.equals(foo))
			{
				regist.setAchivement(achivement);
			}			
			regist.setDescription(description);
			
			for(int i=1;i<8;i++)
			{
				Member member = new Member();
				
				String name = req.getParameter("member-name-"+i+"");
				//System.out.println("KT "+ name + "\n");
				
				if(!name.equals(""))
				{			
					String[] abirthday = req.getParameterValues("member-birthday-"+i+"");
					Date birthday = dateFormat.parse(abirthday[0]);
					java.sql.Date sqlBirthday = new java.sql.Date(birthday.getTime());
					
					String phone = req.getParameter("member-phone-"+i+"");
					
					String email = req.getParameter("member-email-"+i+"");
					member.setName(name);
					member.setBirthday(sqlBirthday);
					member.setPhone(phone);
					member.setEmail(email);
					
					list.add(member);
					System.out.println(member.getName() + " " + member.getBirthday() +" " + member.getPhone() +" "+ member.getEmail());
				}		
							
				
			}
			
			RegistDAO dao = new RegistDAO();
			dao.insertRegist(regist, list);
			
		} catch (ParseException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
		
		//System.out.println("KT "+group_name);
	}

}
