<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'addType.jsp' starting page</title>
    
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
	    div {text-align:center;}
	</style>

  </head>
  
  <body>
  <script src="html/jquery.js" type="text/javascript"></script>
	
	<script src="html/jquery.min.js" type="text/javascript"></script>
    <script src="html/js/bootstrap.min.js"></script>
    
    <div style="text-align:center;"><br>
    <form action="AddTypeServlet" method="post">
    <span>${msg3}${type.typeName}&emsp;${msg4}</span><br>
    <h3 class="text-center">添加文章类型</h3><br>
       类型名称：<input type="text" name="typeName" value="${typeName}"><br><br>
       <span style="color:red;">${error2}</span><br>
       <span style="color:red;">${error1}</span><br>
        <input type="submit" value="确定" class="btn btn-info">&emsp;
        <a href="TypeServlet" class="btn btn-info">文章类型列表</a>
    </form>
    
    <%@ include file="layout/footer.jsp" %>
    
    </div>
  </body>
</html>
