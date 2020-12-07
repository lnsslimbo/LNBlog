package com.liu.blog.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.liu.blog.entity.Type;
import com.liu.blog.service.TypeService;

@WebServlet("/ChangeTypeServlet")
public class ChangeTypeServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		

		String typeID = request.getParameter("typeID");
		
        typeID = new String(typeID.getBytes("iso-8859-1"),"utf-8");
		
		TypeService service = new TypeService();
		Type type = service.findByTypeID(typeID);
		
		request.setAttribute("type", type);
		
		request.getRequestDispatcher("/changeType.jsp").forward(request, response);

		
	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {


		Type type = new Type();
		request.setCharacterEncoding("utf-8");
		type.setTypeID(request.getParameter("typeID"));
		type.setTypeName(request.getParameter("typeName"));
		type.setUserName(request.getParameter("userName"));
		//System.out.print(type.getTypeID());
		//System.out.println(type.getTypeName());
		request.setAttribute("type", type);

		TypeService service = new TypeService();
		String typeName = request.getParameter("typeName");
		String userName = request.getParameter("userName");
		if(service.exists(typeName,userName)){
			System.out.println("����");
			request.setAttribute("error", "���������Ѵ��ڣ��������޸ģ�");
			request.getRequestDispatcher("/changeType.jsp").forward(request, response);
		}
		else{
			if(service.changeType(type) == ""){
				request.setAttribute("msg", "�޸ĳɹ���");
				request.getRequestDispatcher("/changeType.jsp").forward(request, response);
			}
		}
	}

}
