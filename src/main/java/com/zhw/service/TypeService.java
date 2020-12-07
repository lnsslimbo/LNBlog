package com.zhw.service;

import java.util.List;

import com.zhw.dao.TypeDao;
import com.zhw.entity.Type;

public class TypeService {
	
	//通过类型名查找类型
	public Type getTypeByTypeName(String typeName,String userName){
		TypeDao dao = new TypeDao();
		return dao.findByTypeName(typeName,userName);
	}
	public Type findByTypeID(String typeID){
		TypeDao dao = new TypeDao();
		return dao.findByTypeID(typeID);
	}
	
	
	//判断是否已经存在该文章类型
	public boolean exists(String typeName,String userName){
		
		Type type = getTypeByTypeName(typeName,userName);
		
		return type != null;
	}
	
	
	//添加文章类型
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
