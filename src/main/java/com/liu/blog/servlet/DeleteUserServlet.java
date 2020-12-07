package com.liu.blog.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.liu.blog.entity.User;
import com.liu.blog.service.UserService;

@WebServlet("/DeleteUserServlet")
public class DeleteUserServlet extends HttpServlet {

	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String userName = request.getParameter("userName");
		userName = new String(userName.getBytes("iso-8859-1"),"utf-8");
		
		UserService service = new UserService();
		User user = service.deleteByUserName(userName);
		
		request.setAttribute("user", user);
		response.sendRedirect("UserServlet");
	}

	


}
