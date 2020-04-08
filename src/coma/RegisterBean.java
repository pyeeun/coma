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
	
	public boolean insertDB()
	{
		connect();
		String sql = "insert into users value(?,?,?,?,?,sysdate,sysdate,?,?,null)";
		try
		{
			pstmt = conn.prepareStatement(sql);
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
}
