package com.liu.blog.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.liu.blog.entity.User;
import com.liu.blog.service.UserService;

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
