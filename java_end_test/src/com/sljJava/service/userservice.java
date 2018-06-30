package com.lrxhqujavaee.service;

import java.sql.ResultSet;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import com.student.model.usertable;

public class userservice {
	private Connection connection;
	private PreparedStatement pstmt;
	
	public userservice(){
		connection=new com.lrxhqujavaee.conn.connect().getCon();
	}
	
	public boolean vailUser(usertable user){
		try {
			pstmt=(PreparedStatement) connection.prepareStatement("select * from usertable where username=? and password=?");
			pstmt.setString(1,user.getUsername());
			pstmt.setString(2,user.getPassword());
			ResultSet rs=pstmt.executeQuery();
			if(rs.next())
				return true;
			else {
				return false;
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return false;
		}
	}
}
