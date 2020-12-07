package com.zhw.servlet;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/ExitServlet")
public class ExitServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public ExitServlet() {
		super();
	}

	/**
	 * Destruction of the servlet. <br>
	 */
	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		
		request.getSession().invalidate();
		response.sendRedirect("index.jsp");
		
		/*
		String userName = getInitParameter("userName");
		
		request.setAttribute("userName",userName);
		
		request.getRequestDispatcher("/exit.jsp").forward(request, response);*/

	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		
	}


}
