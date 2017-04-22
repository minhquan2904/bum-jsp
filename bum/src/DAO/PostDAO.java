package DAO;

import java.io.Serializable;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.mysql.jdbc.Statement;

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
	public boolean deletePost(int idpost)
	{
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			System.out.println("can not load jdbc Driver !");
		}
		Connection cons = DBConnect.getConnection();
        String sql = "delete from document where id="+idpost;
        try {
            PreparedStatement ps = (PreparedStatement) cons.prepareStatement(sql);       
            cons.close();
            return ps.executeUpdate()==1;      
        } catch (SQLException e) {
            e.printStackTrace();
        }
        
        return false;
	}
	public boolean updatePost(Document doc)
	{
		Connection cons = DBConnect.getConnection();
        String sql = "update document set title=?, content=?, date=?, view=?, url=?, status=?, category=? where id=?";       
        try {
            PreparedStatement ps = (PreparedStatement) cons.prepareStatement(sql);                      
            ps.setNString(1,doc.getTitle());
            ps.setNString(2,doc.getContent());
            ps.setDate(3,doc.getDate());
            ps.setInt(4,doc.getView());
            ps.setNString(5,doc.getUrl());
            ps.setInt(6,doc.getStatus());
            ps.setInt(7,doc.getCategory());
            ps.setInt(8,doc.getId());
            cons.close();
            return ps.executeUpdate()==1;
          
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
	}
	
	public boolean insertPost(Document doc) throws SQLException
	{
		Connection cons = DBConnect.getConnection();
        String sql = "insert into document (title,content,date,view,url,status,category) values(?,?,?,?,?,?,?) ";       
        try {
            PreparedStatement ps = (PreparedStatement)cons.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);            
            ps.setNString(1,doc.getTitle());
            ps.setNString(2,doc.getContent());
            ps.setDate(3,doc.getDate());
            ps.setInt(4,doc.getView());
            ps.setNString(5,doc.getUrl());
            ps.setInt(6,doc.getStatus());
            ps.setInt(7,doc.getCategory());
            return ps.executeUpdate()==1;
          
        } catch (SQLException e) {
            e.printStackTrace();
        }
        cons.close();
        return false;
	}
	

}
