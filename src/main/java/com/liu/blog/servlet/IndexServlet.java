package com.liu.blog.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.liu.blog.entity.User;
import com.liu.blog.service.UserService;

@WebServlet("/IndexServlet")
public class IndexServlet extends HttpServlet {

	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		
		//request.getSession().invalidate();
		
		UserService service = new UserService();
		List<User> list = service.findAllPosition();
		
		request.setAttribute("list", list);
		
		request.getSession().invalidate();
		request.getRequestDispatcher("/index.jsp").forward(request, response);
		
		    
			
	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	
		//request.getRequestDispatcher("/index.jsp").forward(request, response);
		
		UserService service = new UserService();
		List<User> list = service.findAllPosition();
		
		request.setAttribute("list", list);
		
		String userName = request.getParameter("userName");
		String password = request.getParameter("password");
		String position = request.getParameter("position");
		
		userName = new String(userName.getBytes("iso-8859-1"),"utf-8");
		position = new String(position.getBytes("iso-8859-1"),"utf-8");
		
		UserService userService = new UserService();
		User user = new User();
		user.setUserName(userName);
		user.setPassword(password);
		user.setPosition(position);
		
		if(userService.loginVerify(userName,password) && (userService.checkCondition(userName)=="") && (userService.checkPosition(userName,position)=="")){
			HttpSession session = request.getSession();
			session.setAttribute("UserName", userName);
			
			
			String msg = "��ӭ����";
			userName = java.net.URLEncoder.encode(userName,"utf-8");
			msg = java.net.URLEncoder.encode(msg,"utf-8");
			
			response.sendRedirect("MainServlet?userName=" + msg + userName);
		}
		else{
			if(password.isEmpty()){
				request.setAttribute("errorMsg1", "���������룡");
			}
			if(!userService.loginVerify(userName,password)){
				request.setAttribute("errorMsg2", "�û��������벻ƥ�䣬���������룡");
			}
			if(userService.checkCondition(userName) != ""){
				request.setAttribute("errorMsg3", userService.checkCondition(userName));
			}
			if(userService.checkPosition(userName,position) != ""){
				request.setAttribute("errorMsg4",userService.checkPosition(userName,position) );
			}
			
			request.setAttribute("userName", userName);
			request.getRequestDispatcher("/index.jsp").forward(request, response);
		}
	}

	

}
