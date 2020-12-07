package com.liu.blog.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.liu.blog.entity.Article;
import com.liu.blog.service.ArticleService;
@WebServlet("/OnArticleServlet")
public class OnArticleServlet extends HttpServlet {

	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		Integer articleID = Integer.parseInt(request.getParameter("articleID"));
		
		ArticleService service = new ArticleService();
		Article article = service.onArticle(articleID);
		
		request.setAttribute("article", article);
		response.sendRedirect("ArticleServlet");
	}

}
