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

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {

	
	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		UserService service = new UserService();
		List<User> list = service.findAllPosition();
		
		request.setAttribute("list", list);
		request.getRequestDispatcher("/login.jsp").forward(request, response);
		
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		UserService service = new UserService();
		List<User> list = service.findAllPosition();
		
		request.setAttribute("list", list);
		
		String userName = request.getParameter("userName");
		String password = request.getParameter("password");
		String position = request.getParameter("position");
		//String flag = request.getParameter("isLogin");
		
		
		userName = new String(userName.getBytes("iso-8859-1"),"utf-8");
		position = new String(position.getBytes("iso-8859-1"),"utf-8");
		//System.out.println(userName);
		//System.out.println(position);
			
		UserService userService = new UserService();
		User user = new User();
		user.setUserName(userName);
		user.setPassword(password);
		user.setPosition(position);
		
		
		if(userService.loginVerify(userName,password) && (userService.checkCondition(userName)=="") && (userService.checkPosition(userName,position)=="")){
			
			HttpSession session = request.getSession();
			session.setAttribute("UserName", userName);
			
            String msg = "欢迎您！";
			userName = java.net.URLEncoder.encode(userName,"utf-8");
			msg = java.net.URLEncoder.encode(msg,"utf-8");

			/*if ("y".equals(flag)) {
				 //创建两个Cookie对象
				 Cookie nameCookie = new Cookie("username", name);
				 //设置Cookie的有效期为3天
				 nameCookie.setMaxAge(60 * 60 * 24 * 3);
				 Cookie pwdCookie = new Cookie("password", pwd);
				 pwdCookie.setMaxAge(60 * 60 * 24 * 3);
				 response.addCookie(nameCookie);
				 response.addCookie(pwdCookie);
			 }*/

			response.sendRedirect("MainServlet?userName=" + msg + userName);
		}
		
		else{
			if(password.isEmpty()){
				request.setAttribute("errorMsg1", "请输入密码！");
			}
			if(!userService.loginVerify(userName,password)){
				request.setAttribute("errorMsg2", "用户名和密码不匹配，请重新输入！");
			}
			if(userService.checkCondition(userName) != ""){
				request.setAttribute("errorMsg3", userService.checkCondition(userName));
			}
			if(userService.checkPosition(userName,position) != ""){
				request.setAttribute("errorMsg4",userService.checkPosition(userName,position) );
			}
			
			request.setAttribute("userName", userName);
			request.getRequestDispatcher("/login.jsp").forward(request, response);
		}
		
		
		
		
		
	}


}
