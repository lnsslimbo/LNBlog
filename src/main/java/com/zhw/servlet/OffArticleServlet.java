package com.zhw.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.zhw.entity.Article;
import com.zhw.service.ArticleService;
@WebServlet("/OffArticleServlet")
public class OffArticleServlet extends HttpServlet {

	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		Integer articleID = Integer.parseInt(request.getParameter("articleID"));

		
		ArticleService service = new ArticleService();
		Article article = service.offArticle(articleID);
		
		request.setAttribute("article", article);
		response.sendRedirect("ArticleServlet");
		
	}


}
