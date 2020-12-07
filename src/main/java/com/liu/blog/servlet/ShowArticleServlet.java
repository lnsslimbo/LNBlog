package com.liu.blog.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.liu.blog.entity.Article;
import com.liu.blog.service.ArticleService;
import com.liu.blog.service.TypeService;

@WebServlet("/ShowArticleServlet")
public class ShowArticleServlet extends HttpServlet {

	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String articleID = request.getParameter("articleID");
		articleID = new String(articleID.getBytes("iso-8859-1"),"utf-8");
		
		ArticleService service = new ArticleService();
		Article article = service.getArticleByID(articleID);
		
		request.setAttribute("article", article);
		request.getRequestDispatcher("/articleInformation.jsp").forward(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		Article article = new Article();
		request.setCharacterEncoding("utf-8");
		
		article.setArticleID(request.getParameter("articleID"));
		article.setTitle(request.getParameter("title"));
		article.setTypeName(request.getParameter("typeName"));
		article.setContent(request.getParameter("content"));
		article.setPublishDate(request.getParameter("publishDate"));
		article.setModDate(request.getParameter("modDate"));
		article.setCondition(request.getParameter("condition"));
		article.setUserName((String)request.getSession().getAttribute("UserName"));
		
		
		ArticleService service = new ArticleService();
		TypeService typeService = new TypeService();
		request.setAttribute("article", article);
		String typeName = request.getParameter("typeName");
		String userName = (String)request.getSession().getAttribute("UserName");
		if(typeService.getTypeByTypeName(typeName, userName) == null){
			request.setAttribute("error", "该用户没有添加该类型，请重新输入类型");
			request.getRequestDispatcher("/articleInformation.jsp").forward(request, response);
			return;
		}
		
		if(service.changeInformation(article) == ""){
			
			request.setAttribute("msg", "保存成功！");
			//response.sendRedirect("ArticleInformationServlet");
			request.getRequestDispatcher("/articleInformation.jsp").forward(request, response);
		}
	}

}
