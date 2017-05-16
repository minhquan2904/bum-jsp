package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

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
	
		String sql = "SELECT * FROM `user` WHERE user.username = ? AND user.password = ?";
		PreparedStatement ps = connection.prepareCall(sql);
		ps.setString(1,usn);
		ps.setString(2, pwd);
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
	
	public boolean insertUser(String usn,String pwd,Integer role,Integer status) throws SQLException
	{
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			System.out.println("can not load jdbc Driver !");
		}
		Connection connection = DBConnect.getConnection();
		String password = MD5.encryption(pwd);
		String sql="INSERT INTO `user`(`username`, `password`, `role`,`status`) VALUES (?,?,?,?)";
		try {
			PreparedStatement ps = connection.prepareCall(sql);
			ps.setString(1, usn);
			ps.setString(2, password);
			ps.setInt(3, role);
			ps.setInt(4, status);
			
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
	public ArrayList<User> getAllUser() throws SQLException
	{
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			System.out.println("can not load jdbc Driver !");
		}
		
		Connection connection = DBConnect.getConnection();
		String sql = "SELECT * FROM `user`";
		PreparedStatement ps = connection.prepareCall(sql);
		ArrayList<User> list = new ArrayList<>();
		ResultSet rs = ps.executeQuery();
		while(rs.next())
		{
			User user = new User();
			user.setId(rs.getInt("id"));
			user.setUsername(rs.getString("username"));
			user.setRole(rs.getInt("role"));
			user.setStatus(rs.getInt("status"));
			list.add(user);
		}
		rs.close();
		connection.close();
		ps.close();
		return list;
		
	}
	public boolean hasUser(String usn) throws SQLException
	{
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			System.out.println("can not load jdbc Driver !");
		}
		
		Connection connection = DBConnect.getConnection();
		String sql = "SELECT * FROM `user` WHERE username=?";
		
		PreparedStatement ps = connection.prepareCall(sql);
		ps.setString(1, usn);
		ResultSet rs = ps.executeQuery();
		if(rs.next())
		{
			rs.close();
			ps.close();
			connection.close();
			return true;
		}
		rs.close();
		ps.close();
		connection.close();
		return false;
	}
	public boolean checkPWD(String usn,String pwd) throws SQLException
	{
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			System.out.println("can not load jdbc Driver !");
		}
		Connection connection = DBConnect.getConnection();
		String sql = "SELECT user.username FROM `user` WHERE user.username =? AND  user.password =?";
		
		PreparedStatement ps = connection.prepareCall(sql);
		ps.setString(1, usn);
		ps.setString(2, pwd);
		ResultSet rs = ps.executeQuery();
		if(rs.next())
		{
			rs.close();
			ps.close();
			connection.close();
			return true;
		}
		rs.close();
		ps.close();
		connection.close();
		return false;
	}
	public void changePass(String usn,String newpwd) throws SQLException
	{
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			System.out.println("can not load jdbc Driver !");
		}
		Connection connection = DBConnect.getConnection();
		String sql = "UPDATE `user` SET password=? WHERE user.username =?";
		PreparedStatement ps = connection.prepareCall(sql);
		ps.setString(1, newpwd);
		ps.setString(2, usn);
		ps.executeUpdate();
		connection.close();
		ps.close();
	}
}
