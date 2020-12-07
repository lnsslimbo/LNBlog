package com.liu.blog.servlet;

import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.liu.blog.entity.Comment;
import com.liu.blog.service.CommentService;

@WebServlet("/ArticleServlet3")
public class ArticleServlet3 extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String title = "如果我死了•若是有来生——笔砚先生";
		
		CommentService service = new CommentService();
		List<Comment> list = service.findAllByTitle(title);
		
		request.setAttribute("list", list);
		request.getRequestDispatcher("/article3.jsp").forward(request, response);
	}
	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Date dt =new Date();
		DateFormat dFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		
		//System.out.println(DateFormat.getDateInstance().format(dt));
		System.out.println(dFormat.format(dt));
		
		Comment comment = new Comment();
		request.setCharacterEncoding("utf-8");
		comment.setTitle("如果我死了•若是有来生——笔砚先生");
		comment.setContent(request.getParameter("content"));
		comment.setUserName((String)request.getSession().getAttribute("UserName"));
		comment.setCommentDate(dFormat.format(dt));
		
        String title = "如果我死了•若是有来生——笔砚先生";
		
		CommentService service = new CommentService();
		String msg = service.addComment(comment);
		List<Comment> list = service.findAllByTitle(title);
		
		request.setAttribute("list", list);
		request.setAttribute("comment", comment);
		request.setAttribute("msg", msg);
		
		request.getRequestDispatcher("/article3.jsp").forward(request, response);
	}

}
