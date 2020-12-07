package com.liu.blog.servlet;

import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.liu.blog.entity.User;
import com.liu.blog.service.UserService;

@WebServlet("/AddUserServlet")
public class AddUserServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		request.getRequestDispatcher("/addUser.jsp").forward(request, response);
	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		
		Date dt =new Date();
		DateFormat dFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

		        //1.��ȡ������
				User user = new User();
				request.setCharacterEncoding("utf-8");
				user.setUserName(request.getParameter("userName"));
				user.setPassword1(request.getParameter("password1"));
				user.setPassword2(request.getParameter("password2"));
				user.setFullName(request.getParameter("fullName"));
				user.setGender(request.getParameter("gender"));
				user.setBirthDate(request.getParameter("birthDate"));
				user.setTel(request.getParameter("tel"));
				user.setEmail(request.getParameter("email"));
				user.setWeChat(request.getParameter("weChat"));
				user.setCondition(request.getParameter("condition"));
				user.setPosition(request.getParameter("position"));
				user.setInformation(request.getParameter("information"));
				user.setSignDate(dFormat.format(dt));
				
				//2.ע���û��������ݱ��浽���ݿ⣬��ʵ��ע��
				UserService userService = new UserService();
				request.setAttribute("user", user);
				//${user.userName}
				
				String userName = request.getParameter("userName");
				if(userService.exists(userName)){
					request.setAttribute("errorMsg2", "�û��Ѵ��ڣ����������룡");		
					request.getRequestDispatcher("/addUser.jsp").forward(request, response);
					return;
				}

		        if(userService.registerUser(user) == ""){
					
		        	request.setAttribute("msg1", "�û�");
		        	request.setAttribute("msg2", "��ӳɹ���");
		        	request.getRequestDispatcher("/newUser.jsp").forward(request, response);
				}
				else{
					
				    request.setAttribute("errorMsg1", userService.registerUser(user));			
					request.getRequestDispatcher("/addUser.jsp").forward(request, response);
				}
	}
}
