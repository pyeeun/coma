package coma;

import java.sql.*;
import java.util.*;
import coma.Notices;
import coma.connection;

public class NoticesBean {
	
	connection con = new connection();
	
	public boolean insertDB(Notices notice)
	{
		con.connect();
		String sql1 = "select noticeid from notices order by noticeid desc";
		String sql2 = "insert into notices value(?,?,?,sysdate(),null,null,?,0,?,?)";
		try
		{
			con.pstmt = con.conn.prepareStatement(sql1);
			con.pstmt.executeUpdate();
			ResultSet rs = con.pstmt.executeQuery();
			int notice_id = rs.getInt("noticeid") + 1;
			con.pstmt.setInt(1, notice_id);
			
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
		String sql = "select * from notices where noticeid = ?";
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
	
	public Notices getDB(int id)
	{
		con.connect();
		Notices notice = new Notices();
		String sql = "select * from notices where noticeid = ?";
		
		try
		{
			con.pstmt = con.conn.prepareStatement(sql);
			con.pstmt.setInt(1, id);
			ResultSet rs = con.pstmt.executeQuery();
			rs.next();
			notice.setNoticeid(rs.getInt("noticeid"));
			notice.setTitle(rs.getString("title"));
			notice.setContent(rs.getString("content"));
			notice.setRegister_date(rs.getString("register_date"));
			notice.setUpdate_date(rs.getString("update_date"));
			notice.setDelete_date(rs.getString("delete_date"));
			notice.setWriter(rs.getString("writer"));
			notice.setViews(rs.getInt("views"));
			notice.setFile1(rs.getString("file1"));
			notice.setFile2(rs.getString("file2"));
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
		finally
		{
			con.disconnect();
		}
		return notice;
	}
	
	public ArrayList<Notices> getDBList()
	{
		con.connect();
		ArrayList<Notices> noticeList = new ArrayList<Notices>();
		String sql = "select * from notices order by noticeid desc";
		
		try
		{
			con.pstmt = con.conn.prepareStatement(sql);
			ResultSet rs = con.pstmt.executeQuery();
			while(rs.next())
			{
				Notices notice = new Notices();
				notice.setNoticeid(rs.getInt("noticeid"));
				notice.setTitle(rs.getString("title"));
				notice.setContent(rs.getString("content"));
				notice.setRegister_date(rs.getString("register_date"));
				notice.setUpdate_date(rs.getString("update_date"));
				notice.setDelete_date(rs.getString("delete_date"));
				notice.setWriter(rs.getString("writer"));
				notice.setViews(rs.getInt("views"));
				notice.setFile1(rs.getString("file1"));
				notice.setFile2(rs.getString("file2"));
				if(notice.getDelete_date() == null)
					noticeList.add(notice);
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
		return noticeList;
	}
	
}
