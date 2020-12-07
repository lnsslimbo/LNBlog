<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'information.jsp' starting page</title>
    
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
		#content {margin: 0 500px;
		     width:800px;}
		     
		#footer {text-align:center;}
		
	    span {color:red;}
	</style>
	

  </head>
  
  <body>
    <script src="html/jquery.js"></script>
	<script>
		$(function(){
		    $("#o").click(function(){
		        if($("[name='position']") == "普通用户"){
		        alert("您是普通用户，没有权限查看！");
		        }
		    });
		});
	</script>
	<script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
    <script src="html/js/bootstrap.min.js"></script>
    
    <h2 style="text-align:center; color:blue;">用户信息</h2><hr>
    <div id="content">
	<form action="ShowUserServlet" method="post" class="text-left">
		用户名：&emsp;<input type="text" placeholder="用户名" name="userName" value="${user.userName}" readonly><br><br>
		密码：&emsp;&emsp;<input type="password" placeholder="密码" name="password" value="${user.password}" readonly><br><br>
		姓名：&emsp;&emsp;<input type="text" placeholder="姓名" name="fullName" value="${user.fullName}">
		<span>${errorMsg1}</span><br><br>
		性别：&emsp;&emsp;<input type="text" placeholder="性别" name="gender" value="${user.gender}">
		<span>${errorMsg2}</span><br><br>
		出生日期：<input type="text" placeholder="出生日期" name="birthDate" value="${user.birthDate}"><br><br>
		手机号：&emsp;<input type="text" placeholder="手机号" name="tel" value="${user.tel}">
		<span>${errorMsg3}</span><br><br>
		邮箱：&emsp;&emsp;<input type="text" placeholder="邮箱" name="email" value="${user.email}"><br><br>
		微信号：&emsp;<input type="text" placeholder="微信号" name="weChat" value="${user.weChat}"><br><br>
		<div style="line-height:50px;">
		    <label style="float:left;font-weight:normal;">描述信息：</label>
		    <textarea name="information"  placeholder="描述信息" style="height:50px;" >${user.information }</textarea>
		</div><br>
		注册日期：<input type="text" value="${user.signDate }" name="signDate" readonly><br><br>
		状态：<input type="text" value="${user.condition }" name="condition"><br><br>
		角色：<input type="text" value="${user.position }" name="position"><br><br>

        <span>${msg}</span><br>
        <span>${error}</span><br>
		&emsp;&emsp;&emsp;&emsp;&emsp;<button type="submit" class="btn btn-info">保存</button>
		&emsp;&emsp;&emsp;<a href="MainServlet" class="btn btn-info">返回主页</a>
		<a href="UserServlet" class="btn btn-info">返回用户列表</a>
		
	</form>
	</div>
	
	<%@ include file="footer.jsp" %>
	
  </body>
</html>
