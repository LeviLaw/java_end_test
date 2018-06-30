package com.lrxhqujavaee.service;

import java.security.cert.TrustAnchor;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.mysql.jdbc.Blob;
import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import com.student.model.stuInfo;

public class stuInfoservice {
	private Connection connection;
	private PreparedStatement pstmt;
	
	public stuInfoservice(){
		connection=new com.lrxhqujavaee.conn.connect().getCon();
	}
	
	public boolean addstu(stuInfo stu){
		try {
			pstmt=(PreparedStatement) connection.prepareStatement("insert into studentinfo"+"(nicheng,truename,xb,csrq,zy,kc,xq,bz)"+"values(?,?,?,?,?,?,?,?)");
			pstmt.setString(1,stu.getNicheng());
			pstmt.setString(2,stu.getTruename());
			pstmt.setByte(3,stu.getXb());
			pstmt.setString(4,stu.getCsrq());
			pstmt.setString(5,stu.getZy());
			pstmt.setString(6,stu.getKcs());
			pstmt.setString(7,stu.getXqs());
			pstmt.setString(8,stu.getBz());
			pstmt.executeUpdate();
			return true;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return false;
		}
	}
	public List<stuInfo> queryAllStu(){
		List<stuInfo> stus=new ArrayList<stuInfo>();
		try {
			pstmt=(PreparedStatement)connection.prepareStatement("select * from studentinfo");
			ResultSet rs=pstmt.executeQuery();
			while(rs.next())
			{
				stuInfo stu=new stuInfo();
				stu.setId(rs.getInt(1));
				stu.setNicheng(rs.getString(2));
				stu.setTruename(rs.getString(3));
				stu.setXb(rs.getByte(4));
				if(rs.getString(5)!=null)
				stu.setCsrq(rs.getString(5));
				stu.setZy(rs.getString(6));
				if(rs.getString(7)!=null)
				stu.setKc(rs.getString(7).split("&"));
				if(rs.getString(8)!=null)
				stu.setXq(rs.getString(8).split("&"));
				stu.setBz(rs.getString(9));
				stus.add(stu);	
			}
			return stus;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return null;
		}
	}
	
	public stuInfo queryStubyID(int id){
		//List<stuInfo> stus=new ArrayList<stuInfo>();
		try {
			pstmt=(PreparedStatement)connection.prepareStatement("select * from studentinfo where id=?");
			pstmt.setInt(1,id);
			ResultSet rs=pstmt.executeQuery();
			if(rs.next())
			{
				stuInfo stu=new stuInfo();
				stu.setId(rs.getInt(1));
				stu.setNicheng(rs.getString(2));
				stu.setTruename(rs.getString(3));
				stu.setXb(rs.getByte(4));
				if(rs.getString(5)!=null)
				stu.setCsrq(rs.getString(5));
				stu.setZy(rs.getString(6));
				if(rs.getString(7)!=null)
				stu.setKc(rs.getString(7).split("&"));
				if(rs.getString(8)!=null)
				stu.setXq(rs.getString(8).split("&"));
				stu.setBz(rs.getString(9));
				//stu.add(stu);
				return stu;
			}
			return null;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return null;
		}
	}
	public boolean updatestu(stuInfo stu){
		try {
			pstmt=(PreparedStatement)connection.prepareStatement("update studentinfo set nicheng=?,truename=?,xb=?,csrq=?,zy=?,kc=?,xq=?,bz=? where id=?");
			pstmt.setString(1,stu.getNicheng());
			pstmt.setString(2,stu.getTruename());
			pstmt.setByte(3,stu.getXb());
			pstmt.setString(4,stu.getCsrq());
			pstmt.setString(5,stu.getZy());
			pstmt.setString(6,stu.getKcs());
			pstmt.setString(7,stu.getXqs());
			pstmt.setString(8,stu.getBz());
			pstmt.setInt(9, stu.getId());
			pstmt.executeUpdate();
			return true;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return false;
		}
	}
	public boolean deletestu(int id){
		try {
			pstmt=(PreparedStatement) connection.prepareStatement("delete from studentinfo where id=?");
			pstmt.setInt(1,id);
			pstmt.executeUpdate();
			return true;
		} catch (Exception e) {
			// TODO: handle exception
			e.getStackTrace();
			return false;
		}
	}
}
