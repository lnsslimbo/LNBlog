<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'newUser.jsp' starting page</title>
    
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
	    div {margin: 0 450px;
		     width:800px;
		     }
	    span {color:red;}
	</style>

  </head>
  
  <body>
    <script src="html/jquery.js"></script>
  
    <script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
    <script src="html/js/bootstrap.min.js"></script>
    <div>
        <span>${msg1 }${user.userName}&emsp;${msg2 }</span><br><br>
        <h3 style="color:blue;">用户信息</h3>
        用户名：${user.userName }<br><br>
        姓名：${user.fullName }<br><br>
        性别：${user.gender }<br><br>
        出生日期：${user.birthDate }<br><br>
        电话号码：${user.tel }<br><br>
        邮箱：${user.email }<br><br>
        微信号：${user.weChat }<br><br>
        描述信息：${user.information}<br><br>
        注册日期：${user.signDate}<br><br>
        角色：${user.position }<br><br>
        <a href="UserServlet"><button class="btn btn-info">确定</button></a>
    </div>
    
    <%@ include file="layout/footer.jsp" %>
    
  </body>
</html>
