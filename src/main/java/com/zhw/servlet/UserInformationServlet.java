package com.zhw.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.zhw.entity.User;
import com.zhw.service.UserService;
@WebServlet("/UserInformationServlet")
public class UserInformationServlet extends HttpServlet {

	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String userName = (String)request.getSession().getAttribute("UserName");
		
		UserService service = new UserService();
		User user = service.getUserByUserName(userName);
		
		request.setAttribute("user", user);
			
    	  request.getRequestDispatcher("/userInformation.jsp").forward(request, response);
			

	}


}
