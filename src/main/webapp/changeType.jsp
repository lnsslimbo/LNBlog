<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'changeType.jsp' starting page</title>
    
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
     <script src="html/jquery.js"></script>
     <script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
    <script src="html/js/bootstrap.min.js"></script>
     
    <form action="ChangeTypeServlet?typeID=<%=request.getParameter("typeID") %>" method="post" style="text-align:center;" class="form">
    <h3>修改文章类型</h3><br>
               文章类型名称：<input type="text" value="${type.typeName }" name="typeName"><br><br>
               用户名：<input type="text" value="${type.userName }" name="userName" readonly><br><br>
               <span style="color:red;">${error }${msg }</span><br><br>
               <button type="submit" class="btn btn-info">修改</button>
               <a href="TypeServlet" class="btn btn-info">返回</a>
    </form>
    
    <%@ include file="layout/footer.jsp" %>
    
  </body>
</html>
