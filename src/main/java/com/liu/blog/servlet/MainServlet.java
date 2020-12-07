package com.liu.blog.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
@WebServlet("/MainServlet")
public class MainServlet extends HttpServlet {

	
	public MainServlet() {
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
				
		request.setAttribute("msg", "��ӭ����");
		request.setAttribute("userName",userName);
		
		request.getRequestDispatcher("/main.jsp").forward(request, response);
		
		
	}


	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
			request.getRequestDispatcher("/main.jsp").forward(request, response);
	}


}
