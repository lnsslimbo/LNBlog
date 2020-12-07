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

@WebServlet("/UserServlet")
public class UserServlet extends HttpServlet {

	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		HttpSession session = request.getSession();
		String userName =  (String) session.getAttribute("UserName");
		if(userName == null || userName == ""){
			response.sendRedirect("index.jsp");
			return;
		}
		
		UserService service = new UserService();
		List<User> list = service.findAll();
		
		request.setAttribute("list", list);

		 if(service.checkManager(userName) == ""){
	    	 
			 System.out.println(1);
			 request.getRequestDispatcher("/user.jsp").forward(request, response);
				
			}
			else{

				System.out.println(2);
				String error = service.checkManager(userName);
				request.setCharacterEncoding("utf-8");
				//error = new String(error.getBytes("iso-8859-1"),"utf-8");
				//error = java.net.URLEncoder.encode(error,"utf-8");
				//response.sendRedirect("MainServlet" + error);
				request.setAttribute("error", error);
			    request.getRequestDispatcher("/main.jsp").forward(request, response);
			}
		
		
		
	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		

	}

}
