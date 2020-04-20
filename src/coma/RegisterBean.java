package coma;

import java.sql.*;
import java.util.*;
import coma.Users;
import coma.connection;

public class RegisterBean {
	
	connection con = new connection();
	
	public boolean insertDB(Users users)
	{
		con.connect();
		String sql = "insert into users value(?,?,?,?,?,?,sysdate(),sysdate(),?,true,null)";
		try
		{
			
			con.pstmt = con.conn.prepareStatement(sql);
			con.pstmt.setString(1, users.getUserid());
			con.pstmt.setString(2, users.getPasswd());
			con.pstmt.setString(3, users.getBirth());
			con.pstmt.setDouble(4, 132.62);
			con.pstmt.setDouble(5, 84.12);;
			con.pstmt.setString(6, users.getEmail());
			
			if(users.getMaskalarm_yn() == null)
				con.pstmt.setBoolean(7, false);
			else
				con.pstmt.setBoolean(7, true);
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
	
	public ArrayList<Users> getDBList()
	{
		con.connect();
		ArrayList<Users> users = new ArrayList<Users>();
		String sql = "select * from users order by userid desc";
		
		try
		{
			con.pstmt = con.conn.prepareStatement(sql);
			ResultSet rs = con.pstmt.executeQuery();
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
			con.disconnect();
		}
		return users;
	}
	
	public boolean IDcheck(String id)
	{
		con.connect();
		String sql = "select userid from users where userid=?";
		int answer = 0;
		try
		{
			con.pstmt = con.conn.prepareStatement(sql);
			con.pstmt.setString(1, id);
			ResultSet rs = con.pstmt.executeQuery();
			while(rs.next())
			{
				answer = 1;
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
		
		if(answer == 1)
			return true;
		else
			return false;
	}
}
