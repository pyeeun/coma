package coma;

import java.sql.*;
import java.util.*;
import coma.Users;

public class RegisterBean {
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	//MySQL 연결
	String jdbc_driver = "com.mysql.jdbc.Driver";
	String jdbc_url = "jdbc:mysql://localhost:3306/jspdb?serverTimezone=UTC";
	
	void connect()
	{
		try
		{
			Class.forName(jdbc_driver);
			conn = DriverManager.getConnection(jdbc_url, "root", "1234");
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
	}
	
	void disconnect()
	{
		if(pstmt != null)
		{
			try
			{
				pstmt.close();
			}
			catch (SQLException e)
			{
				e.printStackTrace();
			}
		}
		if(conn != null)
		{
			try
			{
				conn.close();
			}
			catch (SQLException e)
			{
				e.printStackTrace();
			}
		}
	}
	
	public boolean insertDB(Users users)
	{
		connect();
		String sql = "insert into users value(?,?,?,?,?,sysdate(),sysdate(),?,true,null)";
		try
		{
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, users.getUserid());
			pstmt.setString(2, users.getPasswd());
			pstmt.setString(3, users.getBirth());
			pstmt.setString(4, users.getArea());
			pstmt.setString(5, users.getEmail());
			
			if(users.getMaskalarm_yn() == null)
				pstmt.setBoolean(6, false);
			else
				pstmt.setBoolean(6, true);
			pstmt.executeUpdate();
		}
		catch(SQLException e)
		{
			e.printStackTrace();
			return false;
		}
		finally
		{
			disconnect();
		}
		return true;
	}
	
	public ArrayList<Users> getDBList()
	{
		connect();
		ArrayList<Users> users = new ArrayList<Users>();
		String sql = "select * from users order by userid desc";
		
		try
		{
			pstmt = conn.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next())
			{
				Users user = new Users();
				user.setUserid(rs.getString("userid"));
				user.setPasswd(rs.getString("passwd"));
				user.setBirth(rs.getString("birth"));
				user.setArea(rs.getString("area"));
				user.setEmail(rs.getString("email"));
				user.setMaskalarm_yn(rs.getBoolean("maskalarm_yn"));
				users.add(user);
			}
			rs.close();
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
		finally
		{
			disconnect();
		}
		return users;
	}
}
