package com.zhw.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.zhw.entity.Article;
import com.zhw.service.ArticleService;
@WebServlet("/DeleteArticleServlet")
public class DeleteArticleServlet extends HttpServlet {

	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String articleID = request.getParameter("articleID");
		articleID = new String(articleID.getBytes("iso-8859-1"),"utf-8");
		
		ArticleService service = new ArticleService();
		Article article = service.deleteByArticleID(articleID);
		
		request.setAttribute("article", article);
		response.sendRedirect("ArticleServlet");
	}


}
