<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'sign.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	
	<link href="html/css/bootstrap.min.css" rel="stylesheet">
	
	<style>
	
      .form-control-feedback {
    line-height: 25px;
    left: 470px;
} 
     #footer{text-align:center;}

	</style>

  </head>
  
  <body>
  <script src="html/jquery.js"></script>


    <script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
    <script src="html/js/bootstrap.min.js"></script>
    
    <form action="SignServlet" method="post" id="form1" class="form-horizontal">

	<h1 class="text-primary text-center" style="text-align:center;">用户注册</h1><br>
	<div  align="center" class="form-group has-feedback">
	    
	    <span class="glyphicon glyphicon-user form-control-feedback"></span>
		登录名：<input type="text" id="userName" placeholder="请输入登录名" name="userName" value="${user.userName}"><br>
		<span style="color:red;">${errorMsg2}</span>
		
    </div>

    <div align="center" class="form-group pwd-top has-feedback">
	   
		<span class="glyphicon glyphicon-lock form-control-feedback"></span>
		密&emsp;&emsp;码：<input type="password" id="p1" placeholder="请输入密码" name="password1"><br>
		
    </div>

    <div align="center" class="form-group pwd-top has-feedback">
	   
		<span class="glyphicon glyphicon-lock form-control-feedback"></span>&emsp;&emsp;
		再次输入密码：<input type="password" id="p2" placeholder="再次输入密码" name="password2"><br>
		
	
    </div>
    
    <div  align="center" class="form-group has-feedback">
	   
	    <span class="glyphicon glyphicon-tag form-control-feedback"></span>
		姓&emsp;&emsp;名：<input type="text" id="name" placeholder="请输入姓名" name="fullName"><br>
	
    </div>
    
    <div  align="center" class="form-group has-feedback">
	   
	    <span class="glyphicon glyphicon-tag form-control-feedback"></span>
		性&emsp;&emsp;别：<input type="text" id="gender" placeholder="请输入性别" name="gender"><br>
		
    </div>
    
    <div  align="center" class="form-group has-feedback">
	    
	    <span class="glyphicon glyphicon-calendar form-control-feedback"></span>
		出生日期：<input type="text"  placeholder="请输入出生日期" name="birthDate"><br>
		
    </div>
    
    <div  align="center" class="form-group has-feedback">
	  
	    <span class="glyphicon glyphicon-earphone form-control-feedback"></span>
		手机号：<input type="text"  placeholder="请输入手机号" name="tel"><br>
	
    </div>
    
    <div  align="center" class="form-group has-feedback">

	    <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
		邮&emsp;&emsp;箱：<input type="text" placeholder="请输入邮箱" name="email"><br>
	
    </div>
    
    <div  align="center" class="form-group has-feedback">
	 
	    <span class="glyphicon glyphicon-phone form-control-feedback"></span>
		微信号：<input type="text"  placeholder="请输入微信号" name="weChat"><br>

    </div>
    
    <div  align="center" class="form-group has-feedback">
	   
	    <span class="glyphicon glyphicon-tag form-control-feedback"></span>
		描述信息：<input type="text"  placeholder="请输入描述信息" name="information"><br>
	
    </div>
    
  
    
	<div align="center">
		    角色：<select name="position">
			    <option value="普通用户">普通用户</option>
		    	<option value="管理员">管理员</option>
		    </select>
    </div>

    <br>
	<div align="center">
	    <span style="color:red;text-align:center;">${errorMsg1}</span><br>
		<input type="submit" value="提交" id="b1" class="btn btn-info">
		<a href="MainServlet" class="btn btn-info">返回</a>
	</div>

    <%@ include file="footer.jsp" %>
	</form>
  </body>
</html>
