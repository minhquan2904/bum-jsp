package DAO;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;

import com.mysql.jdbc.Statement;

import Connect.DBConnect;
import Model.Group_regist;
import Model.Member;

public class RegistDAO {
	
	
	public void insertRegist(Group_regist regist,ArrayList<Member> list) throws SQLException
	{
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {			
			System.out.println("can not load jdbc Driver !");
		}
		
		Connection connection = DBConnect.getConnection();
		String sql = "INSERT INTO "
				+ "`group_regist`(`name`, `foundation`, `leader_name`, `ld_birthday`, "
				+ "`ld_phone`, `ld_identity`, `ld_idStudent`, `email`, `school`, "
				+ "`achievement`, `description`, `status`) "
				+ "VALUES (?,?,?,?,?,?,?,?,?,?,?,?)";
		PreparedStatement ps = connection.prepareStatement(sql,Statement.RETURN_GENERATED_KEYS);
		
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
		
		int group_id = ps.executeUpdate();
		
		
		String sql2 = "INSERT INTO `member`(`name`, `birthday`, `phone`, `email`, `group_id`) "
				+ "VALUES (?,?,?,?,"+group_id+")";
		for (Member member : list) {
			ps= connection.prepareCall(sql2);
			
			ps.setString(1, member.getName());
			ps.setDate(2, member.getBirthday());
			ps.setString(3, member.getPhone());
			ps.setString(4, member.getEmail());
			
			
			ps.executeUpdate();
		}
		ps.close();
		connection.close();
		
		
	}
}
