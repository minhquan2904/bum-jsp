package Filter;

import java.io.IOException;
import java.sql.Connection;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;

import Connect.DBConnect;
import Connect.MyUntils;

@WebFilter(urlPatterns = { "/*" })
public class JDBCFilter implements Filter{

	 public JDBCFilter() {
	   }
	 
	   @Override
	   public void init(FilterConfig fConfig) throws ServletException {
	 
	   }
	 
	   @Override
	   public void destroy() {
	 
	   }
	 
	   @Override
	   public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
	           throws IOException, ServletException {
	 
	       HttpServletRequest req = (HttpServletRequest) request;
	      
	       //
	       String servletPath = req.getServletPath();
	     //  System.out.println("JDBC Filter");
	       //
	       // Chỉ mở kết nối đối với các request có đường dẫn đặc biệt cần
	       // connection. (Chẳng hạn đường dẫn tới các servlet, jsp, ..)
	       //
	       // Tránh tình trạng mở connection với các yêu cầu thông thường
	       // (chẳng hạn image, css, javascript,... )
	       //
	       if (servletPath.contains("/specialPath1") || servletPath.contains("/specialPath2")) {
	           Connection conn = null;
	           try {
	        	   System.out.println("if --- JDBC Filter");
	               // Tạo đối tượng Connection kết nối database.
	               conn = DBConnect.getConnection();
	               // Sét tự động commit false, để chủ động điều khiển.
	               conn.setAutoCommit(false);
	 
	               // Lưu trữ vào attribute của request.
	              MyUntils.storeConnection(request, conn);
	 
	               // Cho phép request đi tiếp.
	               chain.doFilter(request, response);
	 
	               // Gọi commit() để commit giao dịch với DB.
	               conn.commit();
	           } catch (Exception e) {
	        	   DBConnect.rollbackQuietly(conn);
	               throw new ServletException();
	           } finally {
	        	   DBConnect.closeQuietly(conn);
	           }
	       }
	       // Với các request thông thường, cho tiếp tục.
	       else {
	           // Cho phép request đi tiếp.
	    	 //  System.out.println("acepted --- JDBC Filter");
	           chain.doFilter(request, response);
	       }
	 
	   }
}
