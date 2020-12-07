package com.liu.blog.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.liu.blog.entity.Article;
import com.liu.blog.entity.User;
import com.liu.blog.service.ArticleService;
import com.liu.blog.service.UserService;

@WebServlet("/SearchServlet")
public class SearchServlet extends HttpServlet {

	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		
		String msg = request.getParameter("msg");
	    msg = new String(msg.getBytes("iso-8859-1"),"utf-8");
		request.setAttribute("msg",msg);
		
		ArticleService articleService  = new ArticleService();
		UserService userService = new UserService();
		
		List<Article> list1 = (List<Article>)articleService.findArticleByTitle(msg);
		List<Article> list2 = (List<Article>)articleService.findAllByUserName(msg);
		List<Article> listArticle = new ArrayList<Article>();
		User listUser = userService.getUserByUserName(msg);
		
		listArticle.addAll(list1);
		listArticle.addAll(list2);
		request.setAttribute("listArticle", listArticle);
		request.setAttribute("listUser", listUser);
		
		if(listUser == null){
			request.getRequestDispatcher("/search.jsp").forward(request, response);
			return;
		}
		else{
			request.getRequestDispatcher("/searchAll.jsp").forward(request, response);
		}
		
		
		
	}



}
