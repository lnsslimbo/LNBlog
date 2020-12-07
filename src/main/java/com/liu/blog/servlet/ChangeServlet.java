package com.liu.blog.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.liu.blog.service.UserService;

@WebServlet("/ChangeServlet")
public class ChangeServlet extends HttpServlet {

	
	public ChangeServlet() {
		super();
	}



	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		HttpSession session = request.getSession();
		String userName =  (String) session.getAttribute("UserName");
		if(userName == null || userName == ""){
			response.sendRedirect("index.jsp");
			return;
		}
		
		request.getRequestDispatcher("/change.jsp").forward(request, response);
	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String userName = (String) request.getSession().getAttribute("UserName");
		String password = request.getParameter("password");
		String password1 = request.getParameter("password1");
		String password2 = request.getParameter("password2");
		
		UserService userService = new UserService();
		
		if(userService.changePassword(userName,password,password1,password2) == ""){
			
			response.sendRedirect("LoginServlet");
		}
		else{
			
			request.setAttribute("error", userService.changePassword(userName,password,password1,password2));
			request.getRequestDispatcher("/change.jsp").forward(request, response);
		}
	}

	
}
