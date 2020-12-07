<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'change.jsp' starting page</title>
    
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
		div {margin:0 500px;
		     width:800px;}
	</style>
	

  </head>
  
  <body>
     <script src="html/jquery.js"></script>
	<script>
		$(function(){
			$("#change").click(function(){
				alert("确认修改？");
			});
		});
	</script>
	<script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
    <script src="html/js/bootstrap.min.js"></script>
    
    <h2 style="text-align:center;color:lightgreen">修改密码</h2><hr>
    <div>
	<form action="ChangeServlet" method="post" class="text-left">
		原密码：&emsp;<input type="password" name="password"><br><br>
		新密码：&emsp;<input type="password" name="password1"><br><br>
		再次确认：<input type="password" name="password2"><br><br>
		<span style="color:red;">${error}</span><br><br>
		&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;<button type="submit" id="change" class="btn btn-info">更改</button>
		<a href="MainServlet" class="btn btn-info">返回主页</a>
	</form>
	</div>
	
	<%@ include file="layout/footer.jsp" %>
  </body>
</html>
