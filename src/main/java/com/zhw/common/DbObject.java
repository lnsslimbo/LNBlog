package com.zhw.common;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class DbObject {

	public DbObject() {
	}

	public Connection open(){
		Connection cn = null;
		
		try {
//			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			Class.forName("com.mysql.cj.jdbc.Driver");
			
//			String url = "jdbc:sqlserver://localhost\\SQLEXPRESS:1433;user=sa;password=123456;database=Test";
			String url = "jdbc:mysql://localhost:3306/Test";
			String name = "root";
			String pass = "";


			cn = DriverManager.getConnection(url,name,pass);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return cn;
	}
	
	public void close(Connection cn,Statement st,ResultSet rs){
		if(rs != null){
			try {
				rs.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		
		if(st != null){
			try {
				st.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		
		if(cn != null){
			try {
				cn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
}
