package com.liu.blog.service;

import java.util.List;

import com.liu.blog.dao.UserDao;
import com.liu.blog.entity.User;

public class UserService {

	public UserService() {
	}
	
	//�Ƿ��Ѵ���
	public boolean exists(String userName){
		User user = getUserByUserName(userName);

		return user != null;
	}
	
	//�û�ע�ᡢ������û�
	public String registerUser(User user){
 //��ע����û����һЩĬ��ֵ�����磺ע���û���ʱ�䡢ע���û��Ĳ����˵�...
		
		UserDao dao = new UserDao();
		
		String newUser =  dao.addUser(user);
		
		//��¼�û�ע�����־
		
		//���Ĭ��Ȩ��
		
		return newUser;
	}
	
	
	//�û���¼
	public boolean loginVerify(String userName,String password){

		//1.�����û��������û�
		User user = getUserByUserName(userName);
		if(user == null){
			return false;
		}
		
		//2.�Ƚ��û�������
		if(! user.getPassword().equals(password)){
			return false;
		}
		
		//3.����û��Ƿ����
		
		//4.����û��Ƿ���Ȩ��
				
		//5.��¼��¼��־
		
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
	
	
	//�޸�����
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
	//�Ƿ�Ϊ����Ա
	public String checkManager(String userName){
		UserDao dao = new UserDao();
		return dao.checkManager(userName);
	}
	
	
	//�����û�
	
	
	//ɾ���û�
	
	
	//��ʾ�û���Ϣ
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
