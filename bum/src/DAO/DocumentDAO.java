package DAO;

import java.io.Serializable;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import Model.Document;
import Connect.DBConnect;

@SuppressWarnings("serial")
public class DocumentDAO implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public Document getRole() throws SQLException {
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			System.out.println("can not load jdbc Driver !");
		}
		Connection connection = DBConnect.getConnection();
		String sql = "SELECT document.title, document.content FROM `document` WHERE document.category=3";
		Document document = new Document();
		PreparedStatement ps;

		ps = connection.prepareCall(sql);

		ResultSet rs = ps.executeQuery();
		if (rs.next()) {
			document.setTitle(rs.getString("title"));
			document.setContent(rs.getString("content"));
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

}
