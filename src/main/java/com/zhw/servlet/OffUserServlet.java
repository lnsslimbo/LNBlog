package com.zhw.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.zhw.entity.User;
import com.zhw.service.UserService;
@WebServlet("/OffUserServlet")
public class OffUserServlet extends HttpServlet {

	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String userName = request.getParameter("userName");
		userName = new String(userName.getBytes("iso-8859-1"),"utf-8");
		
		UserService service = new UserService();
		User user = service.offUser(userName);
		request.setAttribute("user", user);
		response.sendRedirect("UserServlet");
		

	}



}
