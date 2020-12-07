package com.liu.blog.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.liu.blog.entity.Article;
import com.liu.blog.service.ArticleService;
import com.liu.blog.service.UserService;

@WebServlet("/ArticleServlet")
public class ArticleServlet extends HttpServlet {

	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		HttpSession session = request.getSession();
		String userName =  (String) session.getAttribute("UserName");
		if(userName == null || userName == ""){
			response.sendRedirect("index.jsp");
			return;
		}
		UserService userService = new UserService();
		ArticleService service = new ArticleService();
		if(userService.checkManager(userName)==""){
			
			List<Article> list = service.findAll();
			request.setAttribute("list", list);
			request.getRequestDispatcher("/allArticle.jsp").forward(request, response);
			
		}else{
			List<Article> list = service.findAllByUserName(userName);
			request.setAttribute("list", list);
			request.getRequestDispatcher("/article.jsp").forward(request, response);
		}
		
		
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

}
