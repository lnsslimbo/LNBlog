package com.zhw.service;

import java.util.List;

import com.zhw.dao.ArticleDao;
import com.zhw.entity.Article;

public class ArticleService {
	
    public Article getArticleByConcent(String content){
    	ArticleDao dao = new ArticleDao();
    	return dao.findByContent(content);
    }
	
	public boolean exists(String content){

    	Article article = getArticleByConcent(content);
    	return article != null;
    }
	
	public String addArticle(Article article){
    	ArticleDao dao = new ArticleDao();
    	String newArticle = dao.add(article);
    	return newArticle;
    }
	
	
	public List<Article> findAll(){
		ArticleDao dao = new ArticleDao();
		return dao.findAll();
	}
	
	public List<Article> findAllByUserName(String userName){
		ArticleDao dao = new ArticleDao();
		return dao.findAllByUserName(userName);
	}
	
	public List<Article> findArticleByTitle(String title){
		ArticleDao dao = new ArticleDao();
		return dao.findArticleByTitle(title);
	}
	

	
	public Article getArticleByID(String articleID){
		ArticleDao dao = new ArticleDao();
		return dao.getArticleByID(articleID);
	}
	
	public String changeInformation(Article article){
		ArticleDao dao = new ArticleDao();
		return dao.changeInformation(article);
	}
	
	public Article deleteByArticleID(String articleID){
		ArticleDao dao = new ArticleDao();
		return dao.deleteByArticleID(articleID);
	}
	
	public Article onArticle(Integer articleID){
		ArticleDao dao = new ArticleDao();
		return dao.onArticle(articleID);
	}
	
	public Article offArticle(Integer articleID){
		ArticleDao dao = new ArticleDao();
		return dao.offArticle(articleID);
	}
	
}
