<%@ page language="java" import="java.util.*" import="com.zhw.entity.User" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'login.jsp' starting page</title>
    <link href="html/css/bootstrap.min.css" rel="stylesheet">
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
  
	<link href="html/css/bootstrap.min.css" rel="stylesheet">
	
     <style>
		 .username input,.password input{
    height: 50px;
    padding-left: 30px;
}

      .form-control-feedback {
    line-height: 50px;
    left: 525px;
} 

     .btn {background-color: lightblue;
	       }

	 .form-horizontal{text-align: center;}
     .checkbox{left:400px;}

	</style>
	
	<!--  
	<%
     String userName = "";
     String password = "";
     //获取当前站点的所有Cookie
     Cookie[] cookies = request.getCookies();
     for (int i = 0; i < cookies.length; i++) {//对cookies中的数据进行遍历，找到用户名、密码的数据
         if ("userName".equals(cookies[i].getName())) {
             userName = cookies[i].getValue();
        } else if ("password".equals(cookies[i].getName())) {
            password = cookies[i].getValue();
         }
     }
     %>
     -->
     
  </head>
  
  <body background="html/tu3.jpg">
    <script src="html/jquery.js"></script>
    
	<script>
	$(function(){
		$("#login").click(function(){
			hasError=false;
			if($("#name").val()==''){
				$("#nameError").html("用户名不能为空！");
				hasError=true;
			}
			else{
				$("#nameError").html("");
			}

			if(hasError){
				return false;
			}
		});
	});
</script>
    <script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
    <script src="html/js/bootstrap.min.js"></script>
    
 
	<form action="LoginServlet" method="post" class="form-horizontal">
	    <h1 class="text-center text-info">用户登录</h1><br>
		<div class="form-group has-feedback">
			<div class="username">
				<span class="glyphicon glyphicon-user form-control-feedback"></span>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
				用户名：<input type="text" class="input-large" id="name" placeholder="用户名" name="userName" value="${userName}"><br>
				<span id="nameError" style="color: red; padding-left: 20px;"></span>
			</div>
		</div>

		<div class="form-group pwd-top has-feedback">
			<div class="password">
				<span class="glyphicon glyphicon-lock form-control-feedback"></span>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
				密码：<input type="password" class="input-large" id="password" placeholder="密码" name="password" value="${password}">
				<br><br><span style="color:red;">${errorMsg1}${errorMsg2}${errorMsg3 }${errorMsg4 }</span><br>
				<span></span><br>
			</div>
		</div>

        <div class="form-group pwd-top has-feedback">
		    角色：<select name="position" >
		    <%
		        List<User> list = (List<User>)request.getAttribute("list");
		        for(User user : list){
		     %>
			    <option value="<%=user.getPosition() %>"><%=user.getPosition() %></option>
			    
		    <%} %>
		    </select>
        </div>


		<div class="form-group">
			<div >
				<label for="">
					<input type="checkbox" value="y" name="isLogin">记住密码
				</label>&emsp;

				<label for="" >
					<a href="">忘记密码</a>
				</label>&emsp;

				<label for="">
					<a href="SignServlet">注册</a>
				</label>
			</div>
		</div>

		<div class="form-group">
			<button class="btn btn-login" type="submit" id="login">登&nbsp;录</button>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<a href="IndexServlet" class="btn btn-info">返回主页</a>
		</div>

		<%@ include file="footer.jsp" %>

	</form>
  </body>
</html>
