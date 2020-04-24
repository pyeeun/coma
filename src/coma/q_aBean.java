package coma;

import java.sql.*;
import java.util.*;
import coma.q_a;
import coma.connection;

public class q_aBean {
	
	connection con = new connection();
	
	public boolean insertDB(q_a text)
	{
		con.connect();
		String sql1 = "select q_a_id from Q_A order by q_a_id desc";
		String sql2 = "insert into Q_A value(?,?,?,sysdate(),null,null,?,0,?,?)";
		try
		{
			con.pstmt = con.conn.prepareStatement(sql1);
			con.pstmt.executeUpdate();
			ResultSet rs = con.pstmt.executeQuery();
			int q_a_id = rs.getInt("q_a_id") + 1;
			con.pstmt.setInt(1, q_a_id);
			
			con.pstmt = con.conn.prepareStatement(sql2);
			con.pstmt.executeUpdate();
		}
		catch(SQLException e)
		{
			e.printStackTrace();
			return false;
		}
		finally
		{
			con.disconnect();
		}
		return true;
	}
	
	
	public void updateDB()
	{
		con.connect();
		String sql = "select * from q_a where q_a_id = ?";
		try
		{
			con.pstmt = con.conn.prepareStatement(sql);
			
			con.pstmt.executeUpdate();
		}
		catch(SQLException e)
		{
			e.printStackTrace();
			return;
		}
		finally
		{
			con.disconnect();
		}
	}
	
	public void updateViews(int id)
	{
		con.connect();
		String sql1 = "select views from Q_A where q_a_id = ?";
		String sql2 = "update Q_A set views = ? where noticeid = ?";
		try
		{
			con.pstmt = con.conn.prepareStatement(sql1);
			con.pstmt.setInt(1, id);
			ResultSet rs = con.pstmt.executeQuery();
			rs.next();
			int views = rs.getInt("views") + 1;
			con.pstmt = con.conn.prepareStatement(sql2);
			con.pstmt.setInt(1, views);
			con.pstmt.setInt(2,  id);
			con.pstmt.executeUpdate();
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
		finally
		{
			con.disconnect();
		}
	}
	
	public q_a getDB(int id)
	{
		con.connect();
		q_a text = new q_a();
		String sql = "select * from q_a where q_a_id = ?";
		
		try
		{
			con.pstmt = con.conn.prepareStatement(sql);
			con.pstmt.setInt(1, id);
			ResultSet rs = con.pstmt.executeQuery();
			rs.next();
			text.setQ_a_id(rs.getInt("q_a_id"));
			text.setTitle(rs.getString("title"));
			text.setContent(rs.getString("content"));
			text.setRegister_date(rs.getString("register_date"));
			text.setUpdate_date(rs.getString("update_date"));
			text.setDelete_date(rs.getString("delete_date"));
			text.setWriter(rs.getString("writer"));
			text.setViews(rs.getInt("views"));
			text.setFile1(rs.getString("file1"));
			text.setFile2(rs.getString("file2"));
			text.setPasswd(rs.getString("passwd"));
			text.setCategory(rs.getString("category"));
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
		finally
		{
			con.disconnect();
		}
		return text;
	}
	
	public ArrayList<q_a> getDBList()
	{
		con.connect();
		ArrayList<q_a> q_a_List = new ArrayList<q_a>();
		String sql = "select * from Q_A order by q_a_id desc";
		
		try
		{
			con.pstmt = con.conn.prepareStatement(sql);
			ResultSet rs = con.pstmt.executeQuery();
			while(rs.next())
			{
				q_a text = new q_a();
				text.setQ_a_id(rs.getInt("q_a_id"));
				text.setTitle(rs.getString("title"));
				text.setContent(rs.getString("content"));
				text.setRegister_date(rs.getString("register_date"));
				text.setUpdate_date(rs.getString("update_date"));
				text.setDelete_date(rs.getString("delete_date"));
				text.setWriter(rs.getString("writer"));
				text.setViews(rs.getInt("views"));
				text.setFile1(rs.getString("file1"));
				text.setFile2(rs.getString("file2"));
				if(text.getDelete_date() == null)
					q_a_List.add(text);
			}
			rs.close();
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
		finally
		{
			con.disconnect();
		}
		return q_a_List;
	}
	
}
