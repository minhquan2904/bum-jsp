package DAO;

import java.security.acl.Group;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.mysql.jdbc.Statement;

import Connect.DBConnect;
import Model.Group_regist;
import Model.Member;

public class RegistDAO {

	public void insertRegist(Group_regist regist, ArrayList<Member> list) throws SQLException {
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			System.out.println("can not load jdbc Driver !");
		}

		Connection connection = DBConnect.getConnection();
		String sql = "INSERT INTO " + "`group_regist`(`name`, `foundation`, `leader_name`, `ld_birthday`, "
				+ "`ld_phone`, `ld_identity`, `ld_idStudent`, `email`, `school`, "
				+ "`achievement`, `description`, `status`) " + "VALUES (?,?,?,?,?,?,?,?,?,?,?,?)";
		PreparedStatement ps = connection.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);

		ps.setString(1, regist.getName());
		ps.setDate(2, regist.getFoundation());
		ps.setString(3, regist.getLeader_name());
		ps.setDate(4, regist.getLd_birthday());
		ps.setString(5, regist.getLd_phone());
		ps.setInt(6, regist.getLd_identity());
		ps.setString(7, regist.getLd_idStudent());
		ps.setString(8, regist.getEmail());
		ps.setString(9, regist.getSchool());
		ps.setString(10, regist.getAchivement());
		ps.setString(11, regist.getDescription());
		ps.setInt(12, 0);

		ps.executeUpdate();
		int group_id;
		ResultSet rs = ps.getGeneratedKeys();
		rs.next();
		group_id = rs.getInt(1);
		System.out.println(group_id);
		String group_name = regist.getName();

		String sql2 = "INSERT INTO `member`(`name`, `birthday`, `phone`, `email`, `group_id`,`group_name`)"
				+ "VALUES (?,?,?,?,?,?)";
		for (Member member : list) {
			ps = connection.prepareCall(sql2);

			ps.setString(1, member.getName());
			ps.setDate(2, member.getBirthday());
			ps.setString(3, member.getPhone());
			ps.setString(4, member.getEmail());
			ps.setInt(5,group_id);
			ps.setString(6, group_name);
			
			ps.executeUpdate();
		}
		ps.close();
		connection.close();

	}

	public ArrayList<Group_regist> getListGroupRegist() throws SQLException {
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			System.out.println("can not load jdbc Driver !");
		}
		Connection conn = DBConnect.getConnection();
		String sql = "SELECT * FROM `group_regist`";
		ArrayList<Group_regist> list = new ArrayList<>();

		PreparedStatement ps = conn.prepareCall(sql);
		ResultSet rs = ps.executeQuery();
		while (rs.next()) {
				Group_regist regist = new Group_regist();
				regist.setId(rs.getInt("id"));
				regist.setName(rs.getString("name"));
				regist.setFoundation(rs.getDate("foundation"));
				regist.setLeader_name(rs.getString("leader_name"));
				regist.setLd_birthday(rs.getDate("ld_birthday"));
				regist.setLd_phone(rs.getString("ld_phone"));
				regist.setLd_identity(rs.getInt("ld_identity"));
				regist.setLd_idStudent(rs.getString("ld_idStudent"));
				regist.setEmail(rs.getString("email"));
				regist.setSchool(rs.getString("school"));
				regist.setAchivement(rs.getString("achievement"));
				regist.setDescription(rs.getString("description"));
				regist.setStatus(rs.getInt("status"));
				
				list.add(regist);
		}
		conn.close();
		ps.close();
		rs.close();
		return list;
	}
	
	public ArrayList<Member> getListMember(Integer id) throws SQLException
	{
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			System.out.println("can not load jdbc Driver !");
		}
		
		Connection conn = DBConnect.getConnection();
		String sql = "SELECT * FROM `member` WHERE member.group_id = "+id+"";
		
		PreparedStatement ps =conn.prepareCall(sql);
		ResultSet rs = ps.executeQuery();
		ArrayList<Member> list = new ArrayList<>();
		while(rs.next())
		{
			Member member = new Member();
			member.setId(rs.getInt("id"));
			member.setName(rs.getNString("name"));
			member.setBirthday(rs.getDate("birthday"));
			member.setPhone(rs.getString("phone"));
			member.setEmail(rs.getString("email"));
			member.setGroup_id(rs.getInt("group_id"));
			member.setGroup_name(rs.getString("group_name"));
			
			list.add(member);
		}
		conn.close();
		ps.close();
		rs.close();
		return list;
		
	}
	public ArrayList<Member> getListMemberByGroupName(String name) throws SQLException
	{
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			System.out.println("can not load jdbc Driver !");
		}
		
		Connection conn = DBConnect.getConnection();
		String sql = "SELECT * FROM `member` WHERE member.group_name = "+name+"";
		
		PreparedStatement ps =conn.prepareCall(sql);
		ResultSet rs = ps.executeQuery();
		ArrayList<Member> list = new ArrayList<>();
		while(rs.next())
		{
			Member member = new Member();
			member.setId(rs.getInt("id"));
			member.setName(rs.getNString("name"));
			member.setBirthday(rs.getDate("birthday"));
			member.setPhone(rs.getString("phone"));
			member.setEmail(rs.getString("email"));
			member.setGroup_id(rs.getInt("group_id"));
			member.setGroup_name(rs.getString("group_name"));
			
			list.add(member);
		}
		conn.close();
		ps.close();
		rs.close();
		return list;
		
	}
	
	public ArrayList<Member> getAllMember() throws SQLException
	{
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			System.out.println("can not load jdbc Driver !");
		}
		
		Connection conn = DBConnect.getConnection();
		String sql = "SELECT * FROM `member`";
		
		PreparedStatement ps =conn.prepareCall(sql);
		ResultSet rs = ps.executeQuery();
		ArrayList<Member> list = new ArrayList<>();
		while(rs.next())
		{
			Member member = new Member();
			member.setId(rs.getInt("id"));
			member.setName(rs.getNString("name"));
			member.setBirthday(rs.getDate("birthday"));
			member.setPhone(rs.getString("phone"));
			member.setEmail(rs.getString("email"));
			member.setGroup_id(rs.getInt("group_id"));
			member.setGroup_name(rs.getString("group_name"));
			
			list.add(member);
		}
		conn.close();
		ps.close();
		rs.close();
		return list;
		
	}
}
