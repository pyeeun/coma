package coma;

import java.sql.*;
import java.util.*;

public class LoginBean {

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

	
	public int check_login(String id, String passwd)
	{
		connect();
		String db_passwd;
		String sql = "select passwd from users where userid=?";
		int x = -1;
		
		try
		{
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,  id);
			ResultSet rs = pstmt.executeQuery();
			
			if(rs.next())
			{
				db_passwd = rs.getString("passwd");
				if(db_passwd.equals(passwd))
					x = 1; //로그인 성공
				else
					x = 0; //비밀번호 다름
			}
			else
				x = -1;//아이디 없음
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
		finally
		{
			disconnect();
		}
		
		return x;
	}
}
