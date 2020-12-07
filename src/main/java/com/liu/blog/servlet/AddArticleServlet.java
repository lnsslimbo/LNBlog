package com.liu.blog.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.liu.blog.entity.Article;
import com.liu.blog.entity.Type;
import com.liu.blog.service.ArticleService;
import com.liu.blog.service.TypeService;

@WebServlet("/AddArticleServlet")
public class AddArticleServlet extends HttpServlet {

	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String userName = (String)request.getSession().getAttribute("UserName");
		TypeService service = new TypeService();
		List<Type> list = service.findAllByUserName(userName);
		
		request.setAttribute("list", list);
		request.getRequestDispatcher("/addArticle.jsp").forward(request, response);
	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		
		Article article = new Article();
		request.setCharacterEncoding("utf-8");
		article.setTitle(request.getParameter("title"));
		article.setTypeName(request.getParameter("typeName"));
		article.setContent(request.getParameter("content"));
		article.setPublishDate(request.getParameter("publishDate"));
		article.setModDate(request.getParameter("modDate"));
		article.setCondition(request.getParameter("condition"));
		String userName = (String)request.getSession().getAttribute("UserName");
		article.setUserName(userName);
		
		request.setAttribute("article", article);
		request.setAttribute("userName", userName);
		
		ArticleService articleService = new ArticleService();
		TypeService typeService = new TypeService();
		if(typeService.findAllByUserName(userName) == null || typeService.findAllByUserName(userName).isEmpty()){
			request.setAttribute("error3", "�������Ͳ���Ϊ�գ���������������ͣ�");
			request.setAttribute("list", typeService.findAllByUserName(userName));
			request.getRequestDispatcher("/addArticle.jsp").forward(request, response);
			return;
		}
		
		String content = request.getParameter("content");
		if(articleService.exists(content)){
			request.setAttribute("error2", "���������Ѵ��ڣ����������룡");
			request.getRequestDispatcher("/addArticle.jsp").forward(request, response);
			return;
		}
		if(articleService.addArticle(article) == ""){
			request.setAttribute("msg1", "���£�");
			request.setAttribute("msg2", "��ӳɹ���");
			request.getRequestDispatcher("/newArticle.jsp").forward(request, response);
		}else{
			request.setAttribute("error1", articleService.addArticle(article));
			request.getRequestDispatcher("/addArticle.jsp").forward(request, response);
		}
	}

}
