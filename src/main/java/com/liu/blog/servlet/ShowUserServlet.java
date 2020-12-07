package com.liu.blog.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.liu.blog.entity.User;
import com.liu.blog.service.UserService;

@WebServlet("/ShowUserServlet")
public class ShowUserServlet extends HttpServlet {

	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String userName = request.getParameter("userName");
		userName = new String(userName.getBytes("iso-8859-1"),"utf-8");
		
		UserService service = new UserService();
		User user = service.getUserByUserName(userName);
		
		request.setAttribute("user", user);
		request.getRequestDispatcher("/userInformation.jsp").forward(request, response);
		
	}
	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		User user = new User();
		request.setCharacterEncoding("utf-8");
		user.setUserName(request.getParameter("userName"));
		user.setPassword(request.getParameter("password"));
		user.setFullName(request.getParameter("fullName"));
		user.setGender(request.getParameter("gender"));
		user.setBirthDate(request.getParameter("birthDate"));
		user.setTel(request.getParameter("tel"));
		user.setEmail(request.getParameter("email"));
		user.setWeChat(request.getParameter("weChat"));
		user.setInformation(request.getParameter("information"));
		user.setSignDate(request.getParameter("signDate"));
		user.setCondition(request.getParameter("condition"));
		user.setPosition(request.getParameter("position"));
		
		request.setAttribute("user", user);
		UserService userService = new UserService();
		
		if(userService.changeInformation(user) == ""){
			
		    request.setAttribute("msg", "保存成功！");
		    request.getRequestDispatcher("/userInformation.jsp").forward(request, response);
		    
		    }
		else{
			request.setAttribute("error", userService.changeInformation(user));
			request.getRequestDispatcher("/userInformation.jsp").forward(request, response);
		}
	}

}
