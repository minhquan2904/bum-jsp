package DAO;

import java.io.Serializable;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import Model.Document;
import Connect.DBConnect;

@SuppressWarnings("serial")
public class PostDAO implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	//Get News post
	public Document getPost(int idpost) throws SQLException {
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			System.out.println("can not load jdbc Driver !");
		}
		Connection connection = DBConnect.getConnection();
		String sql = "SELECT * FROM `document`"
				+ " WHERE document.category=1 and document.id='"+idpost+"'";
		Document document = new Document();
		PreparedStatement ps;

		ps = connection.prepareCall(sql);

		ResultSet rs = ps.executeQuery();
		if (rs.next()) {
			document.setId(rs.getInt("id"));
			document.setTitle(rs.getString("title"));
			document.setDate(rs.getDate("date"));
			document.setView(rs.getInt("view"));
			document.setUrl("url");
			document.setContent(rs.getString("content"));
			document.setStatus(rs.getInt("status"));
			document.setCategory(rs.getInt("category"));
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
	public ArrayList<Document> getListPost() throws SQLException {
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			System.out.println("can not load jdbc Driver !");
		}
		Connection connection = DBConnect.getConnection();
		String sql = "SELECT document.title,document.date,document.view,document.url, document.content FROM `document`"
				+ " WHERE document.category=1";
		ArrayList<Document> list = new ArrayList<>();
		PreparedStatement ps;

		ps = connection.prepareCall(sql);

		ResultSet rs = ps.executeQuery();
		while(rs.next()) {
			Document d=new Document();
			d.setId(rs.getInt("id"));
			d.setTitle(rs.getString("title"));
			d.setDate(rs.getDate("date"));
			d.setView(rs.getInt("view"));
			d.setUrl("url");
			d.setContent(rs.getString("content"));
			d.setStatus(rs.getInt("status"));
			d.setCategory(rs.getInt("category"));
			list.add(d);
			
		}
		rs.close();
		ps.close();
		connection.close();
		return list;

	}

}
