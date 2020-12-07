<%@ page language="java" import="java.util.*"  pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'articleInformation.jsp' starting page</title>
    
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
        input{height:30px;}
        
        div {text-align:center;}
        
        span{color:red;}
 
    </style>
  </head>
  
  <body>
    <script src="html/jquery.js"></script>
	<script>
		
	</script>
	<script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
    <script src="html/js/bootstrap.min.js"></script>
    
  <h3 style="text-align:center;">文章信息</h3>
      <form action="ShowArticleServlet" method="post" class="form" style="text-align:center;">
          文章编号：<input type="text" name="articleID" value="${article.articleID }" readonly><br><br>
          文章标题：<input type="text" name="title" value="${article.title }"><br><br>
          文章类型：<input type="text" name="typeName" value="${article.typeName }"><br>
          <span>${error }</span><br>
          文章内容：<input type="text" name="content" value="${article.content }"><br><br>
          发表日期：<input type="text" name="publishDate" value="${article.publishDate }"><br><br>
          修改日期：<input type="text" name="modDate" value="${article.modDate }"><br><br>
          状&emsp;&emsp;态：<input type="text" name="condition" value="${article.condition }"><br><br>
          <span style="color:red;">${msg }</span><br><br>
          <button type="submit" class="btn btn-info">保存</button>
          <a href="ArticleServlet" class="btn btn-info">返回文章列表</a>
          <a href="TypeServlet" class="btn btn-info">文章类型列表</a>
      </form>
      
      <%@ include file="layout/footer.jsp" %>
      
  </body>
</html>
