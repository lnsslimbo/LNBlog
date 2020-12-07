<%@ page language="java" import="java.util.*" import="com.liu.blog.entity.Article" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'article.jsp' starting page</title>
    
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
	   

	   tr:hover{background-color: gray;}
	
	   h3{color:blue;}
	   
	   span{color:red;}
	   
	   table{table-layout:automatic;}
	   
	   td{overflow:hidden;
	      white-space:nowrap;
	      text-overflow:ellipsis;
	      max-width:250px}
	      
	   div {text-align:center;}
	      
	</style>

  </head>
  
  <body>
  
    <script src="html/jquery.js" type="text/javascript"></script>
	<script type="text/javascript">
	    $(function(){

			$("#checkOrCancleAll1").click(function(){
				var option = $("[name='articleID']");

				if(this.checked){
					for (var i = 0; i < option.length; i++) {
						option[i].checked = true;
					}
				}
				else{
					for (var i = 0; i < option.length; i++) {
						option[i].checked = false;
					}
				}
			});
			
        });
		function setAll(){
			var option1 = $("[name='articleID']");
			var count = 0;
			for( var i=0; i<option1.length;i++){
				if(!option1[i].checked){
                    $("#checkOrCancleAll1").prop("checked",false);
			    }// 子复选框某个不选择，全选也被取消
			    if(option1[i].checked){
				    count += 1;
                }           
                if(option1.length == count){
                    $("#checkOrCancleAll1").prop("checked",true); 
				}
				// 子复选框全部部被选择，全选也被选择；1.对于HTML元素我们自己自定义的DOM属性，在处理时，使用attr方法；2.对于HTML元素本身就带有的固有属性，在处理时，使用prop方法   
            }


	  }
	</script>

    <script src="html/jquery.min.js" type="text/javascript"></script>
    <script src="html/js/bootstrap.min.js"></script>
    
    
   
            <h3 class="text-center">文章列表</h3>
		<table class="table table-bordered">
			<tr>
				<th>全选<input type="checkbox" id="checkOrCancleAll1"></th>
				<th>用户名</th>
				<th>文章标题</th>
				<th>文章类型</th>
				<th>文章内容</th>
				<th>发表日期</th>
				<th>修改日期</th>
				<th>状态</th>
			</tr>
			
			<%
			    List<Article> listArticle = (List<Article>)request.getAttribute("listArticle");
			    for(Article article : listArticle){
			 %>
			 <tr>
			     <td><input type="checkbox" name="articleID" onclick="setAll()" id="td1" value="<%=article.getArticleID() %>"></td>
			     <td><%=article.getUserName() %></td>
			     <td><%=article.getTitle() %></td>
			     <td><%=article.getTypeName() %></td>
			     <td><%=article.getContent() %></td>
			     <td><%=article.getPublishDate() %></td>
			     <td><%=article.getModDate() %></td>
			     <td><%=article.getCondition() %></td>
			 </tr>
			 
			 <%} %>
			
			<tr>
				<td colspan="2"></td>
				<td colspan="2"><a href="MainServlet"><button class="btn btn-primary">返回主页</button></a></td>
				<td colspan="2"></td>
				<td colspan="2"></td>
			</tr>
		</table>
 
      <%@ include file="layout/footer.jsp" %>
      
  </body>
</html>
