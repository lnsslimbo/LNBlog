<%@ page language="java" import="java.util.*"  import="com.zhw.entity.Type" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'type.jsp' starting page</title>
    
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

			$("#checkOrCancleAll2").click(function(){
				var option = $("[name='typeID']");

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

			var option2 = $("[name='typeID']");
			var count = 0;
			for( var i=0; i<option2.length;i++){
				if(!option2[i].checked){
                    $("#checkOrCancleAll2").prop("checked",false);
			    }// 子复选框某个不选择，全选也被取消
			    if(option2[i].checked){
				    count += 1;
                }           
                if(option2.length == count){
                    $("#checkOrCancleAll2").prop("checked",true); 
				}
				// 子复选框全部部被选择，全选也被选择；1.对于HTML元素我们自己自定义的DOM属性，在处理时，使用attr方法；2.对于HTML元素本身就带有的固有属性，在处理时，使用prop方法   
            }
	  }
	</script>

    <script src="html/jquery.min.js" type="text/javascript"></script>
    <script src="html/js/bootstrap.min.js"></script>
  
    <h3 class="text-center">文章类型管理</h3>
            <span>${msg3}${type.typeName}&emsp;${msg4}</span>
		<table class="table table-bordered">
			<tr>
				<th>全选<input type="checkbox" id="checkOrCancleAll2"></th>
				<th>类型名称</th>
				<th>用户名</th>
				<th>操作</th>
			</tr>
			<%
			    List<Type> list = (List<Type>)request.getAttribute("list");
			    for(Type type : list){
			 %>
			     <tr>
			         <td><input type="checkbox" name="typeID" onclick="setAll()" id="td2" value="<%=type.getTypeID()%>"></td>
			         <td><%=type.getTypeName() %></td>
			         <td><%=type.getUserName() %></td>
			         <td>
			             <a href="ChangeTypeServlet?typeID=<%=type.getTypeID()%>">修改</a>
			             <a href="DeleteTypeServlet?typeID=<%=type.getTypeID()%>" onclick="return confirm('确认删除？');">删除</a>
			         </td>
			     </tr>
			 <%} %>
		
			<tr>
				<td></td>
				<td><a href="AddTypeServlet"><button class="btn btn-primary">添加文章类型</button></a></td>
				<td></td>
				<td><a href="ArticleServlet"><button class="btn btn-primary" >返回文章列表</button></a></td>
			</tr>
		</table>

        
      
      <%@ include file="footer.jsp" %>
  </body>
</html>
