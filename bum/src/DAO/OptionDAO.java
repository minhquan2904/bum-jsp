package DAO;

import java.io.Serializable;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import Connect.DBConnect;
import Model.Option;

public class OptionDAO implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	// Get News post
	public Option getOption(int id) throws SQLException {
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			System.out.println("can not load jdbc Driver !");
		}
		Connection connection = DBConnect.getConnection();
		String sql = "SELECT * FROM `option`" + " WHERE option.id='" + id + "'";
		Option document = new Option();
		PreparedStatement ps;

		ps = connection.prepareCall(sql);

		ResultSet rs = ps.executeQuery();
		if (rs.next()) {
			document.setId(rs.getInt("id"));
			document.setName(rs.getString("name"));
			document.setLink(rs.getString("link"));
			rs.close();
			ps.close();
			connection.close();
			return document;
		}
		rs.close();
		ps.close();
		connection.close();

		return null;

	}

	public ArrayList<Option> getListOption() throws SQLException {
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			System.out.println("can not load jdbc Driver !");
		}
		Connection connection = DBConnect.getConnection();
		String sql = "SELECT * FROM `option`";

		ArrayList<Option> list = new ArrayList<>();
		PreparedStatement ps;

		ps = connection.prepareCall(sql);

		ResultSet rs = ps.executeQuery();
		while (rs.next()) {
			Option d = new Option();
			d.setId(rs.getInt("id"));
			d.setName(rs.getString("name"));
			d.setLink(rs.getString("link"));
			list.add(d);

		}
		rs.close();
		ps.close();
		connection.close();
		return list;

	}

	public boolean updateOption(int id, String link) {
		Connection cons = DBConnect.getConnection();
		String sql = "update `option` set link=? where id=?";
		try {
			PreparedStatement ps = (PreparedStatement) cons.prepareStatement(sql);
			ps.setNString(1, link);
			ps.setInt(2, id);

			// cons.close();
			return ps.executeUpdate() == 1;

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}

}
