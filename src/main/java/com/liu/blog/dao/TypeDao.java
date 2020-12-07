package com.liu.blog.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.liu.blog.common.DbObject;
import com.liu.blog.entity.Type;

public class TypeDao {

	public TypeDao() {
	}

	public String add(Type type){
		DbObject db = new DbObject();
		Connection cn = null;
		PreparedStatement st = null;
		String success = "";
		
		
		try {
			cn = db.open();
			
			if(type.getTypeName() != ""){
				
				String sql = "insert into ArticleType(TypeName,UserName) values(?,?);";
				System.out.println(sql);
			
				st = cn.prepareStatement(sql);
			
				st.setString(1, type.getTypeName());
				st.setString(2, type.getUserName());
			
				int ret = st.executeUpdate();
				if(ret>0){
					return success;
				}
			}else{
				success += "�������Ͳ���Ϊ�գ����������룡";
			}	
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			db.close(cn, st, null);
		}
		
		return success;
	}
	
	public Type findByTypeName(String typeName,String userName){
		Connection cn = null;
		PreparedStatement st = null;
		ResultSet rs = null;
		DbObject db = new DbObject();
		Type type = null;
		
		try {
			
			cn = db.open();
		
			String sql = "select * from ArticleType where TypeName = ? and UserName = ?;";
			System.out.println(sql);
		
			st = cn.prepareStatement(sql);
			
			st.setString(1, typeName);
			st.setString(2, userName);
			
			rs = st.executeQuery();
			
			if(rs.next()){
				type = new Type();
				type.setTypeName(rs.getString("TypeName"));
				type.setUserName(rs.getString("UserName"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			db.close(cn, st, rs);
		}
		
		return type;
	}
	
	public Type findByTypeID(String typeID){
		Connection cn = null;
		PreparedStatement st = null;
		ResultSet rs = null;
		DbObject db = new DbObject();
		Type type = null;
		
		try {
			
			cn = db.open();
		
			String sql = "select * from ArticleType where typeID = ?";
			System.out.println(sql);
		
			st = cn.prepareStatement(sql);
			
			st.setString(1, typeID);
			
			rs = st.executeQuery();
			
			if(rs.next()){
				type = new Type();
				type.setTypeID(rs.getString("TypeID"));
				type.setTypeName(rs.getString("TypeName"));
				type.setUserName(rs.getString("UserName"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			db.close(cn, st, rs);
		}
		
		return type;
	}
	
	public List<Type> findAll(){
		List<Type> list = new ArrayList<Type>();
		Connection cn = null;
		PreparedStatement st = null;
		ResultSet rs = null;
		DbObject db = new DbObject();
		
		
		try {
			
			cn = db.open();
			String sql = "select * from ArticleType;";
		
			st = cn.prepareStatement(sql);
			rs = st.executeQuery();
			while(rs.next()){
				Type type = new Type();
				type.setTypeID(rs.getString("TypeID"));
				type.setTypeName(rs.getString("TypeName"));
				type.setUserName(rs.getString("UserName"));
				list.add(type);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			db.close(cn, st, rs);
		}
		return list;
	}
	
	public List<Type> findAllByUserName(String userName){
		List<Type> list = new ArrayList<Type>();
		Connection cn = null;
		PreparedStatement st = null;
		ResultSet rs = null;
		DbObject db = new DbObject();
		
		
		try {
			
			cn = db.open();
			String sql = "select * from ArticleType where UserName = ?;";
		
			st = cn.prepareStatement(sql);
			st.setString(1, userName);
			rs = st.executeQuery();
			while(rs.next()){
				Type type = new Type();
				type.setTypeID(rs.getString("TypeID"));
				type.setTypeName(rs.getString("TypeName"));
				list.add(type);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			db.close(cn, st, rs);
		}
		return list;
	}
	
	public String changeType(Type type){
		Connection cn = null;
		PreparedStatement st = null;
		DbObject db =new DbObject();
		String success = "";
		
		try {
			
			cn = db.open();
			String sql = "update ArticleType set TypeName = ?,UserName = ? where TypeID = ?";
			System.out.println(sql);
		
			st = cn.prepareStatement(sql);
			st.setString(1, type.getTypeName());
			st.setString(2, type.getUserName());
			st.setString(3, type.getTypeID());
						 
			 int ret = st.executeUpdate();
				if(ret > 0){
					success = "";
					return success;
				}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			db.close(cn, st, null);
		}
		return null;
	}
	
	public Type deleteType(String typeID){
		Connection cn = null;
		PreparedStatement st = null;
		DbObject db = new DbObject();
		Type type = null;
		
		try {
			
			cn = db.open();
			String sql = "delete from ArticleType where typeID = ?;";
			System.out.println(sql);
		
			st = cn.prepareStatement(sql);
			st.setString(1, typeID);
			int ret = st.executeUpdate();
			if(ret > 0){
				type = new Type();
				return type;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			db.close(cn, st, null);
		}
		return type;
	}
}
