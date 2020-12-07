package com.zhw.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.zhw.entity.Type;
import com.zhw.service.TypeService;
@WebServlet("/AddTypeServlet")
public class AddTypeServlet extends HttpServlet {

	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.getRequestDispatcher("/addType.jsp").forward(request, response);
	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		Type type = new Type();
		request.setCharacterEncoding("utf-8");
		type.setTypeName(request.getParameter("typeName"));
		type.setUserName((String)request.getSession().getAttribute("UserName"));
		
		TypeService typeService = new TypeService();

		
		String typeName = request.getParameter("typeName");
		String userName = (String)request.getSession().getAttribute("UserName");
		request.setAttribute("typeName", typeName);
		if(typeService.exists(typeName,userName)){
			request.setAttribute("error2", "文章类型已存在，请重新输入！");
			request.getRequestDispatcher("/addType.jsp").forward(request, response);
			return;
		}
		request.setAttribute("type", type);
		if(typeService.addType(type) == ""){
			
			request.setAttribute("msg3", "文章类型：");
			request.setAttribute("msg4", "添加成功！");
			request.getRequestDispatcher("/addType.jsp").forward(request, response);
			
		}else{
			request.setAttribute("error1", typeService.addType(type));
			request.getRequestDispatcher("/addType.jsp").forward(request, response);
		}
		
	}

}
