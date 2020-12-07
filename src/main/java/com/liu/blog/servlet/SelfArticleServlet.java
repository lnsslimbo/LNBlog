package com.liu.blog.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.liu.blog.entity.Article;
import com.liu.blog.service.ArticleService;

@WebServlet("/SelfArticleServlet")
public class SelfArticleServlet extends HttpServlet {

	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String userName = request.getParameter("userName");
		userName = new String(userName.getBytes("iso-8859-1"),"utf-8");
		request.setAttribute("userName", userName);
		
		ArticleService articleService = new ArticleService();
		
		List<Article> list = articleService.findAllByUserName(userName);
		request.setAttribute("list", list);
		request.getRequestDispatcher("/selfArticle.jsp").forward(request, response);
	}


}
