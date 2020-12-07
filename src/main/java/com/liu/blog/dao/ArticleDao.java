package com.liu.blog.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.liu.blog.common.DbObject;
import com.liu.blog.entity.Article;

public class ArticleDao {

	public ArticleDao() {
	}

	public Article findByContent(String content){
		DbObject db = new DbObject();
		Connection cn = null;
		PreparedStatement st = null;
		ResultSet rs = null;
		Article article = null;
		
		try {
			cn = db.open();
			
			String sql = "select * from Article where content = ?;";
		
			st = cn.prepareStatement(sql);
			
			st.setString(1, content);
			
			rs = st.executeQuery();
			
			if(rs.next()){
				article = new Article();
				article.setContent(rs.getString("Content"));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			db.close(cn, st, rs);
		}
		return article;
	}
	
	
	public String add(Article article){
		String success = "";
		Connection cn = null;
		PreparedStatement st = null;
		DbObject db = new DbObject();
		
		try {
			
			cn = db.open();
			if(article.getTitle() != "" && article.getContent() != "" && article.getTypeName() != ""){
				
				String sql = "insert into Article(Title,TypeName,Content,PublishDate,ModDate,UserName) values(?,?,?,?,?,?);";
		
				st = cn.prepareStatement(sql);
			
				st.setString(1, article.getTitle());
				st.setString(2, article.getTypeName());
				st.setString(3, article.getContent());
				st.setString(4, article.getPublishDate());
				st.setString(5, article.getModDate());
				st.setString(6, article.getUserName());
			
				int ret = st.executeUpdate();
				if(ret>0){
					return success;
				}
			}else{
				success += "文章题目、文章内容以及文章类型不能为空";
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			db.close(cn, st, null);
		}
		
		return success;
	}
	
	public List<Article> findAll(){
		List<Article> list = new ArrayList<Article>();
		Connection cn = null;
		PreparedStatement st = null;
		ResultSet rs = null;
		DbObject db = new DbObject();
		
		try {
			
			cn = db.open();
			String sql = "select * from Article;";
			System.out.println(sql);
		
			st = cn.prepareStatement(sql);
			rs = st.executeQuery();
			
			while(rs.next()){
				Article article = new Article();
				article.setArticleID(rs.getString("ArticleID"));
				article.setTitle(rs.getString("Title"));
				article.setTypeName(rs.getString("TypeName"));
				article.setContent(rs.getString("Content"));
				article.setPublishDate(rs.getString("PublishDate"));
				article.setModDate(rs.getString("ModDate"));
				article.setCondition(rs.getString("Condition"));
				article.setUserName(rs.getString("UserName"));
				list.add(article);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			db.close(cn, st, rs);
		}
		return list;
	}
	
	public List<Article> findAllByUserName(String userName){
		List<Article> list = new ArrayList<Article>();
		Connection cn = null;
		PreparedStatement st = null;
		ResultSet rs = null;
		DbObject db = new DbObject();
		
		try {
			
			cn = db.open();
			String sql = "select * from Article where UserName = ?;";
			System.out.println(sql);
		
			st = cn.prepareStatement(sql);
			st.setString(1, userName);
			rs = st.executeQuery();
			
			while(rs.next()){
				Article article = new Article();
				article.setArticleID(rs.getString("ArticleID"));
				article.setUserName(rs.getString("UserName"));
				article.setTitle(rs.getString("Title"));
				article.setTypeName(rs.getString("TypeName"));
				article.setContent(rs.getString("Content"));
				article.setPublishDate(rs.getString("PublishDate"));
				article.setModDate(rs.getString("ModDate"));
				article.setCondition(rs.getString("Condition"));
				list.add(article);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			db.close(cn, st, rs);
		}
		return list;
	}
	
	public List<Article> findArticleByTitle(String title){
		List<Article> list = new ArrayList<Article>();
		Connection cn = null;
		PreparedStatement st = null;
		ResultSet rs = null;
		DbObject db = new DbObject();
		
		try {
			
			cn = db.open();
			String sql = "select * from Article where Title = ?;";
			System.out.println(sql);
		
			st = cn.prepareStatement(sql);
			st.setString(1, title);
			rs = st.executeQuery();
			
			while(rs.next()){
				Article article = new Article();
				article.setArticleID(rs.getString("ArticleID"));
				article.setUserName(rs.getString("UserName"));
				article.setTitle(rs.getString("Title"));
				article.setTypeName(rs.getString("TypeName"));
				article.setContent(rs.getString("Content"));
				article.setPublishDate(rs.getString("PublishDate"));
				article.setModDate(rs.getString("ModDate"));
				article.setCondition(rs.getString("Condition"));
				list.add(article);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			db.close(cn, st, rs);
		}
		return list;
	}
	
	
	public Article getArticleByID(String articleID){
		Connection cn = null;
		PreparedStatement st = null;
		ResultSet rs = null;
		DbObject db= new DbObject();
		Article article = null;
		
		try {
			
			cn = db.open();
			String sql = "select * from Article where articleID = ?;";
			System.out.println(sql);
		
			st = cn.prepareStatement(sql);
			st.setString(1, articleID);
			rs = st.executeQuery();
			if(rs.next()){
				article = new Article();
				article.setArticleID(rs.getString("ArticleID"));
                article.setTitle(rs.getString("Title"));
                article.setTypeName(rs.getString("TypeName"));
                article.setContent(rs.getString("Content"));
                article.setPublishDate(rs.getString("PublishDate"));
                article.setModDate(rs.getString("ModDate"));
                article.setCondition(rs.getString("Condition"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			db.close(cn, st, rs);
		}
		return article;
	}
	
	public String changeInformation(Article article){
		String success = "";
		Connection cn = null;
		PreparedStatement st = null;
		DbObject db = new DbObject();
		
		try {
			
		    cn = db.open();
		    String sql = "update Article set Title = ?,TypeName = ?,Content = ?,PublishDate = ?,ModDate = ?,Condition = ?,UserName = ? where ArticleID = ?;";
		    System.out.println(sql);
	    
			st = cn.prepareStatement(sql);
			st.setString(1, article.getTitle());
			st.setString(2, article.getTypeName());
			st.setString(3, article.getContent());
			st.setString(4, article.getPublishDate());
			st.setString(5, article.getModDate());
			st.setString(6, article.getCondition());
			st.setString(7, article.getUserName());
			st.setString(8, article.getArticleID());
			int ret = st.executeUpdate();
			if(ret > 0){
				success="";
				return success;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			db.close(cn, st, null);
		}
		return null;
	}
	
	public Article deleteByArticleID(String articleID){
		Connection cn = null;
		PreparedStatement st = null;
		DbObject db = new DbObject();
		Article article = null;
		
		try {
			
			cn = db.open();
			String sql = "delete from Article where articleID = ?;";
			System.out.println(sql);
		
			st = cn.prepareStatement(sql);
			st.setString(1, articleID);
			int ret = st.executeUpdate();
			if(ret > 0){
				article = new Article();
				return article;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			db.close(cn, st, null);
		}
		return article;
		
	}
	
	public Article onArticle(Integer articleID){
		Connection cn = null;
		PreparedStatement st = null;
		DbObject db = new DbObject();
		
		try {
			
			cn = db.open();
			String sql = "update Article set Condition = ? where ArticleID = ?;";
			System.out.println(sql);
		
			st = cn.prepareStatement(sql);
			st.setString(1, "启用");
			st.setInt(2, articleID);
			
			int ret = st.executeUpdate();
			if(ret > 0){
				Article article = new Article();
				return article;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}
	
	public Article offArticle(Integer articleID){
		Connection cn = null;
		PreparedStatement st = null;
		DbObject db = new DbObject();
		
		try {
			
			cn = db.open();
			String sql = "update Article set Condition = ? where ArticleID = ?";
			System.out.println(sql);
		
			st = cn.prepareStatement(sql);
			st.setString(1,"禁用");
			st.setInt(2, articleID);
			
			int ret = st.executeUpdate();
			if(ret > 0){
				Article article = new Article();
				return article;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}
}
