package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import Connect.DBConnect;
import Model.User;
import Tools.MD5;

public class UserDAO {
	
	public User login(String usn,String pwd) throws SQLException
	{
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			System.out.println("can not load jdbc Driver !");
		}
		Connection connection = DBConnect.getConnection();
		String password = MD5.encryption(pwd);
		String sql = "SELECT * FROM `user` WHERE user.username = '"+usn+"' AND user.password = '"+password+"'";
		PreparedStatement ps = connection.prepareCall(sql);
		ResultSet rs = ps.executeQuery();
		if(rs.next())
		{
			User user = new User();
			user.setUsername(rs.getString("username"));
			user.setRole(rs.getInt("role"));
			
			return user;
		}
		connection.close();
		ps.close();
		rs.close();
		return null;
		
	}
	
	public boolean insertUser(String usn,String pwd,Integer role) throws SQLException
	{
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			System.out.println("can not load jdbc Driver !");
		}
		Connection connection = DBConnect.getConnection();
		String password = MD5.encryption(pwd);
		String sql="INSERT INTO `user`(`username`, `password`, `role`) VALUES (?,?,?)";
		try {
			PreparedStatement ps = connection.prepareCall(sql);
			ps.setString(1, usn);
			ps.setString(2, password);
			ps.setInt(3, role);
			
			ps.executeUpdate();
			connection.close();
			ps.close();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			connection.close();
			
			e.printStackTrace();
			return false;
		}
		
		return false;
		
	}

}
