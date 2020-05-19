package coma;

import java.sql.*;
import java.util.*;
import coma.qa;
import coma.connection;

public class qaBean {
	
	connection con = new connection();
	
	public boolean insertDB(qa text)
	{
		con.connect();
		String sql1 = "select q_a_id from Q_A order by q_a_id desc";
		String sql2 = "insert into Q_A value(?,?,?,sysdate(),null,null,?,0,?,?,?,?)";
		try
		{
			con.pstmt = con.conn.prepareStatement(sql1);
			ResultSet rs = con.pstmt.executeQuery();
			rs.next();
			int qa_id = rs.getInt("q_a_id") + 1;
			
			con.pstmt = con.conn.prepareStatement(sql2);
			con.pstmt.setInt(1, qa_id);
			con.pstmt.setString(2, text.getTitle());
			con.pstmt.setString(3, text.getContent());
			con.pstmt.setString(4, "writer");
			con.pstmt.setString(5, null);
			con.pstmt.setString(6, null);
			con.pstmt.setString(7, text.getPasswd());
			con.pstmt.setString(8, "category");
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
	
	
	public Boolean updateDB(qa text, int id)
	{
		con.connect();
		String sql = "update q_a set title = ?, content = ?, update_date = sysdate() where q_a_id = ?";

		try
		{
			con.pstmt = con.conn.prepareStatement(sql);
			con.pstmt.setString(1, text.getTitle());
			con.pstmt.setString(2, text.getContent());
			con.pstmt.setInt(3, id);
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
	public void updateViews(int id)
	{
		con.connect();
		String sql1 = "select views from Q_A where q_a_id = ?";
		String sql2 = "update Q_A set views = ? where q_a_id = ?";
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
	
	public qa getDB(int id)
	{
		con.connect();
		qa text = new qa();
		String sql = "select * from q_a where q_a_id = ?";
		
		try
		{
			con.pstmt = con.conn.prepareStatement(sql);
			con.pstmt.setInt(1, id);
			ResultSet rs = con.pstmt.executeQuery();
			rs.next();
			text.setQa_id(rs.getInt("q_a_id"));
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
	
	public ArrayList<qa> getDBList()
	{
		con.connect();
		ArrayList<qa> q_a_List = new ArrayList<qa>();
		String sql = "select * from Q_A order by q_a_id desc";
		
		try
		{
			con.pstmt = con.conn.prepareStatement(sql);
			ResultSet rs = con.pstmt.executeQuery();
			while(rs.next())
			{
				qa text = new qa();
				text.setQa_id(rs.getInt("q_a_id"));
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
	
	public boolean deleteDB(int id)
	{
		con.connect();
		String sql = "delete from q_a where q_a_id = ?";
		try
		{
			con.pstmt = con.conn.prepareStatement(sql);
			con.pstmt.setInt(1, id);
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
}
