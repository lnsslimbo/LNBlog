package com.zhw.service;

import java.util.List;

import com.zhw.dao.UserDao;
import com.zhw.entity.User;

public class UserService {

	public UserService() {
	}
	
	//是否已存在
	public boolean exists(String userName){
		User user = getUserByUserName(userName);

		return user != null;
	}
	
	//用户注册、添加新用户
	public String registerUser(User user){
 //给注册的用户添加一些默认值，比如：注册用户的时间、注册用户的操作人等...
		
		UserDao dao = new UserDao();
		
		String newUser =  dao.addUser(user);
		
		//记录用户注册的日志
		
		//添加默认权限
		
		return newUser;
	}
	
	
	//用户登录
	public boolean loginVerify(String userName,String password){

		//1.根据用户名检索用户
		User user = getUserByUserName(userName);
		if(user == null){
			return false;
		}
		
		//2.比较用户的密码
		if(! user.getPassword().equals(password)){
			return false;
		}
		
		//3.检查用户是否禁用
		
		//4.检查用户是否有权限
				
		//5.记录登录日志
		
		return true;
	}
	
	public String checkCondition(String userName){
		UserDao dao = new UserDao();
		return dao.checkCondition(userName);
	}
	public String checkPosition(String userName,String position){
		UserDao dao = new UserDao();
		return dao.checkPosition(userName,position);
	}
	
	
	//修改密码
	public String changePassword(String userName,String password,String password1,String password2){
		
		UserDao dao = new UserDao();
		if(dao.findByPassword(password)==""){
			return dao.change(userName,password1,password2);
		}
		else{
			return dao.findByPassword(password);
		}		
	}
	
	
	public String changeInformation(User user){
		UserDao dao = new UserDao();
		
		return dao.changeUser(user);
	} 
	//是否为管理员
	public String checkManager(String userName){
		UserDao dao = new UserDao();
		return dao.checkManager(userName);
	}
	
	
	//禁用用户
	
	
	//删除用户
	
	
	//显示用户信息
	public User getUserByUserName(String userName){

		UserDao dao = new UserDao();
		
		return dao.findByUserName(userName);
	}
	
	public List<User> findAll(){
		UserDao dao = new UserDao();
		return dao.findAll();
	}
	
	public User deleteByUserName(String userName){
		UserDao dao = new UserDao();
		return dao.deleteByUserName(userName);
	}
	
	public User onUser(String userName){
		UserDao dao = new UserDao();
		return dao.onUser(userName);
	}
	
	public User offUser(String userName){
		UserDao dao = new UserDao();
		return dao.offUser(userName);
	}
	
    public List<User> findAllPosition(){
    	UserDao dao = new UserDao();
    	return dao.findAllPosition();
    }

}
