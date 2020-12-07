<%@ page language="java" import="java.util.*" import="com.liu.blog.entity.Type" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'addArticle.jsp' starting page</title>
    
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
	    h3,form{text-align:center;}
	    div {text-align:center;}
	</style>

  </head>
  
  <body>
  <script src="html/jquery.js" type="text/javascript">
      
  </script>
	
  <script src="html/jquery.min.js" type="text/javascript"></script>
  <script src="html/js/bootstrap.min.js"></script>
  
    <h3>添加文章</h3>
    <form action="AddArticleServlet" method="post">
        文章标题：<input type="text" name="title"><br><br>
        文章类型：<select name="typeName" style="width:180px;height:30px;">
              <%
                  List<Type> list = (List<Type>)request.getAttribute("list");
                  for(Type type : list){
               %>
               <option value="<%=type.getTypeName()%>"><%=type.getTypeName() %></option>
               <%} %>
          </select><br>
          <span style="color:red;">${error3}</span><br>
        文章内容：<input type="text" name="content"><br>
        <span style="color:red;">${error2}</span><br>
        发表日期：<input type="text" name="publishDate"><br><br>
        修改日期：<input type="text" name="modDate"><br>
        <span style="color:red;">${error1}</span><br>
        <input type="submit" value="添加" class="btn btn-primary">
        <a href="ArticleServlet" class="btn btn-primary">返回</a>
        <a href="AddTypeServlet" class="btn btn-primary">添加文章类型</a>
    </form>
    
    <%@ include file="layout/footer.jsp" %>
    
  </body>
</html>
