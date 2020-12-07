package com.liu.blog.service;

import java.util.List;

import com.liu.blog.dao.TypeDao;
import com.liu.blog.entity.Type;

public class TypeService {
	
	//ͨ����������������
	public Type getTypeByTypeName(String typeName, String userName){
		TypeDao dao = new TypeDao();
		return dao.findByTypeName(typeName,userName);
	}
	public Type findByTypeID(String typeID){
		TypeDao dao = new TypeDao();
		return dao.findByTypeID(typeID);
	}
	
	
	//�ж��Ƿ��Ѿ����ڸ���������
	public boolean exists(String typeName,String userName){
		
		Type type = getTypeByTypeName(typeName,userName);
		
		return type != null;
	}
	
	
	//�����������
	public String addType(Type type){
	
		TypeDao dao = new TypeDao();
		String newType = dao.add(type);
		return newType;
	}
	
	public List<Type> findAll(){
		TypeDao dao = new TypeDao();
		return dao.findAll();
	}
	
	public List<Type> findAllByUserName(String userName){
		TypeDao dao = new TypeDao();
		return dao.findAllByUserName(userName);
	}
	
	public String changeType(Type type){
		TypeDao dao = new TypeDao();
		return dao.changeType(type);
	}
	
	public Type deleteType(String typeID){
		TypeDao dao = new TypeDao();
		return dao.deleteType(typeID);
	}

}
