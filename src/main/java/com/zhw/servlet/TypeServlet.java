package com.zhw.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.zhw.entity.Type;
import com.zhw.service.TypeService;
import com.zhw.service.UserService;
@WebServlet("/TypeServlet")
public class TypeServlet extends HttpServlet {

	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		HttpSession session = request.getSession();
		String userName =  (String) session.getAttribute("UserName");
		if(userName == null || userName == ""){
			response.sendRedirect("index.jsp");
			return;
		}
		UserService userService = new UserService();
		TypeService service = new TypeService();
		if(userService.checkManager(userName)==""){
			List<Type> list = service.findAll();
			request.setAttribute("list", list);
			request.getRequestDispatcher("/allType.jsp").forward(request, response);
		}
		else{
			List<Type> list = service.findAllByUserName(userName);
			request.setAttribute("list", list);
			request.getRequestDispatcher("/type.jsp").forward(request, response);
		}
		
		
	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		
	}

}
