package com.liu.blog.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.liu.blog.entity.Type;
import com.liu.blog.service.TypeService;

@WebServlet("/DeleteTypeServlet")
public class DeleteTypeServlet extends HttpServlet {

	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String typeID = request.getParameter("typeID");
		
		TypeService service = new TypeService();
		Type type = service.deleteType(typeID);
		
		request.setAttribute("type", type);
		response.sendRedirect("TypeServlet");
		
	}

	

}
