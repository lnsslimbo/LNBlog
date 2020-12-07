<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'newArticle.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	
	<style>
	    span {color:red;}
	    div {text-align:center;}
	</style>
  </head>
  
  <body>
      <div align="center">
      <span>${msg1}${article.title}&emsp;${msg2}</span><br>
      <h3>文章信息</h3>
                     用户名：${userName}<br><br>
                     文章标题：${article.title}<br><br>
                     文章类型：${article.typeName }<br><br>
                     文章内容： ${article.content }<br><br>
                     发表日期：${article.publishDate }<br><br>
                     修改日期：${article.modDate}<br><br>
        <a href="ArticleServlet"><button>确定</button></a>
      </div> 
   
      <%@ include file="footer.jsp" %>
      
  </body>
</html>
