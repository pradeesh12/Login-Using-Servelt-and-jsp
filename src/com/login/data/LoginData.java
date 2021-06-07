package com.login.data;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.DriverManager;
//import java.beans.Statement;
import java.sql.Connection;
	//import java.sql.SQLException;


public class LoginData {
	String url="jdbc:mysql:// localhost:3306/pradeesh";
	String username="root";
	String password="root";
	String sql="select * from login where uname=? and pass=?";
	public boolean check(String uname,String pass)
	{
		try {  
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection(url,username,password);
			PreparedStatement st=con.prepareStatement(sql);
		    st.setString(1,uname);
			st.setString(2,pass);
			ResultSet rs=st.executeQuery();
			if(rs.next()) 
			{
				return true;
			}
			return false;
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		return false;
	}
}
