package com.liu.blog.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.liu.blog.common.DbObject;
import com.liu.blog.entity.User;

public class UserDao {

	public UserDao() {
	}
	

	public String addUser(User user){
		Connection cn = null;
		PreparedStatement st = null;
		DbObject db = new DbObject();
		String success = "";
		
		try {
		cn = db.open();
		
		if(user.getUserName().length()>=3 && user.getPassword1().length()>8 && user.getPassword2().length()>8 && user.getPassword1().equals(user.getPassword2()) && (user.getGender().equals("��") || user.getGender().equals("Ů") && user.getGender() != "")){
			String sql = "insert into Users(UserName,Password,FullName,Gender,BirthDate,Tel,Email,WeChat,Information,SignDate,Position) values(?,?,?,?,?,?,?,?,?,?,?);";
		
			System.out.println(sql);
		
			st = cn.prepareStatement(sql);
		
			st.setString(1, user.getUserName());
			st.setString(2, user.getPassword1());
			st.setString(3, user.getFullName());
			st.setString(4, user.getGender());
			st.setString(5, user.getBirthDate());
			st.setString(6, user.getTel());
			st.setString(7, user.getEmail());
			st.setString(8, user.getWeChat());
			st.setString(9, user.getInformation());
			st.setString(10, user.getSignDate());
			st.setString(11, user.getPosition());
		
			int ret = st.executeUpdate();
			if(ret>0){
				return success;
			}
		}else{
			if(user.getUserName().length()<3){
				success = success+ "用户名长度应该在3~12之间！";
			}
			if(user.getPassword1().length()<=8 || user.getPassword2().length()<=8){
				success = success+ "密码长度应该大于8！";
			}
			if(! user.getPassword1().equals(user.getPassword2())){
				success = success+"两次密码不相等！";
			}
			if(user.getGender() != "男" || user.getGender() != "女" || user.getGender() == ""){
				success = success+"请输入性别：男或女！";
			}
		}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			db.close(cn, st, null);
		}
		
		return success;
	}
	
	
	public User findByUserName(String userName){
		User user = null;
		Connection cn = null;
		PreparedStatement st = null;
		ResultSet rs = null;
		DbObject db = new DbObject();
		
		try{
			cn = db.open();
			String sql = "select * from Users where userName =?";
			System.out.println(sql);
			
			st = cn.prepareStatement(sql);
			
			st.setString(1, userName);
			
			rs = st.executeQuery();
			if(rs.next()){
				user = new User();
				user.setUserName(rs.getString("UserName"));
				user.setPassword(rs.getString("Password"));
				user.setFullName(rs.getString("FullName"));
				user.setGender(rs.getString("Gender"));
				user.setBirthDate(rs.getString("BirthDate"));
				user.setTel(rs.getString("Tel"));
				user.setEmail(rs.getString("Email"));
				user.setWeChat(rs.getString("WeChat"));
				user.setInformation(rs.getString("Information"));
				user.setSignDate(rs.getString("SignDate"));
				user.setCondition(rs.getString("Condition"));
				user.setPosition(rs.getString("Position"));
			}
		}catch (SQLException e) {
			e.printStackTrace();
		}finally{
			db.close(cn, st, rs);
		}
		return user;
	}
	
	public String checkCondition(String userName){
		String success = "";
		Connection cn = null;
		PreparedStatement st = null;
		ResultSet rs = null;
		DbObject db = new DbObject();
		
		try{
			cn = db.open();
			String sql = "select Condition from Users where userName =?";
			System.out.println(sql);
			
			st = cn.prepareStatement(sql);
			
			st.setString(1, userName);
			
			rs = st.executeQuery();
			if(rs.next()){
				if(rs.getString("Condition").equals("启用")){
					success = "";
					return success;
				}
				else{
					//System.out.println(1);
					success += "该用户被禁用，不能登录！";
					return success;
				}
			}
		}catch (SQLException e) {
			e.printStackTrace();
		}finally{
			db.close(cn, st, rs);
		}
		return success;
	}
	
	public String checkPosition(String userName,String position){
		String success = "";
		Connection cn = null;
		PreparedStatement st = null;
		ResultSet rs = null;
		DbObject db = new DbObject();
		
		try{
			cn = db.open();
			String sql = "select Position from Users where userName =?";
			System.out.println(sql);
			
			st = cn.prepareStatement(sql);
			
			st.setString(1, userName);
			
			rs = st.executeQuery();
			if(rs.next()){
				if(rs.getString("Position").equals(position)){
					success = "";
					return success;
				}
				else{
					//System.out.println(1);
					success += "该用户不是" + position + "，请重新选择角色！";
					return success;
				}
			}
		}catch (SQLException e) {
			e.printStackTrace();
		}finally{
			db.close(cn, st, rs);
		}
		return success;
	}
	
	public String checkManager(String userName){
		String success = "";
		Connection cn = null;
		PreparedStatement st = null;
		ResultSet rs = null;
		DbObject db = new DbObject();
		
		try{
			cn = db.open();
			String sql = "select Position from Users where userName =?";
			System.out.println(sql);
			
			st = cn.prepareStatement(sql);
			
			st.setString(1, userName);
			
			rs = st.executeQuery();
			if(rs.next()){
				if(rs.getString("Position").equals("管理员")){
					success = "";
					return success;
				}
				else{
					//System.out.println(1);
					success += "该用户不是管理员，没有权限！";
					return success;
				}
			}
		}catch (SQLException e) {
			e.printStackTrace();
		}finally{
			db.close(cn, st, rs);
		}
		return success;
	}
	
	public String findByPassword(String password){
		Connection cn = null;
		PreparedStatement st = null;
		ResultSet rs = null;
		DbObject db = new DbObject();
		String success = "原密码输入错误，请重新输入！";
		
		try {
			
			cn = db.open();
			String sql = "select * from Users where Password = ?;";
			System.out.println(sql);
			st = cn.prepareStatement(sql);
			st.setString(1, password);
			rs = st.executeQuery();
			if(rs.next()){
				return success = "";
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			db.close(cn, st, rs);
		}
		
		return success;
	}
	
	public String change(String userName,String password1,String password2){
		String success = "";
		Connection cn = null;
		PreparedStatement st = null;
		DbObject db = new DbObject();
		
		try {
			cn = db.open();
			if(password1.length()>8 && password2.length()>8 && password1.equals(password2)){
				
				String sql = "update Users set Password = ? where UserName = ?";
				System.out.println(sql);
				st = cn.prepareStatement(sql);
				st.setString(1, password1);
				st.setString(2, userName);
				int ret = st.executeUpdate();
				if(ret>0){
					return success;
				}
			}else{
				if(password1.length()<=8 || password2.length()<8){
					success += "密码长度应大于8！";
				}
				if(!password1.equals(password2)){
					success += "两次密码不相等，请重新输入！";
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			db.close(cn, st, null);
		}
		
		return success;
	}
	
	public String changeUser(User user){
		Connection cn = null;
		PreparedStatement st = null;
		DbObject db = new DbObject();
		String success = "";
		
		try {
			
			cn = db.open();
			
		    if(user.getTel().length() == 11 && (user.getGender().equals("女") || user.getGender().equals("男")) &&
					user.getCondition().equals("启用") || user.getCondition().equals("禁用")){ String sql =
					"update Users set FullName = ?,Gender = ?,BirthDate = ?,Tel = ?,Email = ?,WeChat = ?," +
							"Condition = ?,Position = ?,Information = ? where UserName = ?;";
			    System.out.println(sql);
			    st = cn.prepareStatement(sql);
			    st.setString(1, user.getFullName());
			    st.setString(2, user.getGender());
			    st.setString(3, user.getBirthDate());
			    st.setString(4, user.getTel());
			    st.setString(5, user.getEmail());
			    st.setString(6, user.getWeChat());
			    st.setString(7, user.getCondition());
			    st.setString(8, user.getPosition());
			    st.setString(9, user.getInformation());
			    st.setString(10,user.getUserName());
			    
			    
			    int ret = st.executeUpdate();
			    if(ret>0){
			    	return success;
			    }
		    }else{
			    	if(user.getTel().length()!=11){
			    		success += "手机号应为11号";
			    	    }
			    	if(!user.getCondition().equals("启用") && !user.getCondition().equals("禁用")){
			    		success += "状态应该为“启用”或”禁用”";
			    	}if(!user.getGender().equals("女") && !user.getGender().equals("男")){
			    		success += "性别应为“男”或”女";
			    	    }
			        }
		    }catch (SQLException e) {
				e.printStackTrace();
			}finally{
				db.close(cn, st, null);
			}
		
		return success;
	}
	
	public List<User> findAll(){
		List<User> list = new ArrayList<User>();
		Connection cn = null;
		PreparedStatement st = null;
		ResultSet rs = null;
		DbObject db = new DbObject();
		
		try {
			
		    cn = db.open();
		
		    String sql = "select * from Users;";
		    System.out.println(sql);
		
			st = cn.prepareStatement(sql);
			rs = st.executeQuery();
			while(rs.next()){
				User user = new User();
				user.setUserName(rs.getString("UserName"));
				user.setFullName(rs.getString("FullName"));
				user.setGender(rs.getString("Gender"));
				user.setBirthDate(rs.getString("BirthDate"));
				user.setTel(rs.getString("Tel"));
				user.setEmail(rs.getString("Email"));
				user.setWeChat(rs.getString("WeChat"));
				user.setInformation(rs.getString("Information"));
				user.setSignDate(rs.getString("SignDate"));
				user.setCondition(rs.getString("Condition"));
				user.setPosition(rs.getString("Position"));
				list.add(user);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			db.close(cn, st, rs);
		}
		return list;
	}
	
	public List<User> findAllPosition(){
		List<User> list = new ArrayList<User>();
		Connection cn = null;
		PreparedStatement st = null;
		ResultSet rs = null;
		DbObject db = new DbObject();
		
		try {
			
		    cn = db.open();
		
		    String sql = "select  DISTINCT Position from Users;";
		    System.out.println(sql);
		
			st = cn.prepareStatement(sql);
			rs = st.executeQuery();
			while(rs.next()){
				User user = new User();
				user.setPosition(rs.getString("Position"));
				list.add(user);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			db.close(cn, st, rs);
		}
		return list;
	}
	
	public User deleteByUserName(String userName){
		Connection cn = null;
		PreparedStatement st = null;
		DbObject db = new DbObject();
		User user = null;
		
		try {
			
			cn =db.open();
			String sql = "delete from Users where UserName = ?;";
			System.out.println(sql);
		
			st = cn.prepareStatement(sql);
			st.setString(1, userName);
			int ret = st.executeUpdate();
			if(ret>0){
				user = new User();
				return user;
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			db.close(cn, st, null);
		}
		
		return null;
		
	}
	
	public User onUser(String userName){
		Connection cn = null;
		PreparedStatement st = null;
		DbObject db = new DbObject();
		User user = null;
		
		try {
			
			cn = db.open();
			String sql = "update Users set Condition = ? where UserName = ?;";
			System.out.println(sql);
		
			st = cn.prepareStatement(sql);
			st.setString(1, "启用");
			st.setString(2, userName);
			
			int ret = st.executeUpdate();
			if(ret>0){
				user = new User();
				return user;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			db.close(cn, st, null);
		}
		
		return user;
	}
	
	public User offUser(String userName){
		Connection cn = null;
		PreparedStatement st = null;
		DbObject db = new DbObject();
		User user = null;
		
		try {
			
			cn = db.open();
			String sql = "update Users set Condition = ? where UserName = ?;";
			System.out.println(sql);
		
			st = cn.prepareStatement(sql);
			st.setString(1, "禁用");
			st.setString(2, userName);
			
			int ret = st.executeUpdate();
			if(ret>0){
				user = new User();
				return user;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			db.close(cn, st, null);
		}
		
		return user;
	}
}
