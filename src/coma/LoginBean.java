package coma;

import java.sql.*;
import coma.connection;

public class LoginBean {
	connection con = new connection();
	
	public int check_login(String id, String passwd)
	{
		con.connect();
		String db_passwd;
		String sql = "select passwd from users where userid=?";
		int x = -1;
		
		try
		{
			con.pstmt = con.conn.prepareStatement(sql);
			con.pstmt.setString(1,  id);
			ResultSet rs = con.pstmt.executeQuery();
			
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
			con.disconnect();
		}
		
		return x;
	}
}
