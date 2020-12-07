<%@ page language="java" import="java.util.*" import="com.liu.blog.entity.User" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'user.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	
	<style>
	    div {text-align:center;}
	</style>

    <link href="html/css/bootstrap.min.css" rel="stylesheet">
    
    <script src="html/jquery.js" type="text/javascript"></script>
     <script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js" type="text/javascript"></script>
    <script src="html/js/bootstrap.min.js"></script>
    
    <script type="text/javascript" language="javascript">
        $(function(){
            $("#checkOrCancleAll").click(function(){
				var option = $("[name='userName']");

               for(var i = 0;i<option.length;i++){
					if(this.checked){
						option[i].checked = true;
					}
					else{
						option[i].checked = false;
					}
				}
            });
           
          
          $("#delete").click(function(){
              alert("确认删除？");
              var items = $("#td:checked");
              for(var i=0;i<items.length;i++){
                  $(items[i]).parents("#item").remove();
              }
          });
        });
        
        function setAll(){
            var option = $("[name='userName']");
			var count = 0;
			for( var i=0; i<option.length;i++){
				if(!option[i].checked){
                    $("#checkOrCancleAll").prop("checked",false);
			    }// 子复选框某个不选择，全选也被取消
			    if(option[i].checked){
				    count += 1;
                }           
                if(option.length == count){
                    $("#checkOrCancleAll").prop("checked",true); 
				}
				// 子复选框全部部被选择，全选也被选择；1.对于HTML元素我们自己自定义的DOM属性，在处理时，使用attr方法；2.对于HTML元素本身就带有的固有属性，在处理时，使用prop方法   
            }
        }
    </script>
 
    
    <style>
        tr:hover{background-color:grey;}
    </style>
    
  </head>
  
  <body>
    
    <h3 class="text-center">用户管理</h3>    
    <table class="table table-bordered" id="table">
		<tr>
		    <th>全选<input type="checkbox" id="checkOrCancleAll"></th>
			<th>用户名</th>
			<th>姓名</th>
			<th>性别</th>
			<th>出生日期</th>
			<th>电话号码</th>
			<th>邮箱</th>
			<th>微信</th>
			<th>描述信息</th>
			<th>注册日期</th>
			<th>状态</th>
			<th>角色</th>
			<th>操作</th>
		</tr>
		
		<c:forEach items="${list}" var="user">
    		<tr>
		     <td><input type="checkbox" name="userName" onclick="setAll()" id="td" value="${user.userName }"></td>
		     <td>${user.userName }</td>
		     <td>${user.fullName }</td>
		     <td>${user.gender }</td>
		     <td>${user.birthDate }</td>
		     <td>${user.tel }</td>
		     <td>${user.email }</td>
		     <td>${user.weChat }</td>
		     <td>${user.information }</td>
		     <td>${user.signDate }</td>
		     <td>${user.condition }</td>
		     <td>${user.position }</td>
		     <td>
		         <a href="ShowUserServlet?userName=${user.userName }">显示信息</a>
		         <a href="DeleteUserServlet?userName=${user.userName }" onclick="return confirm('确认删除？');">删除</a>
		         <a href="OnUserServlet?userName=${user.userName }">启用</a>
		         <a href="OffUserServlet?userName=${user.userName }">禁用</a>
		     </td>
		 </tr>
    	</c:forEach>
		
		<!--  <%
		    List<User> list = (List<User>)request.getAttribute("list");
		    for(User user : list){
		 %>
		 
		 <tr>
		     <td><input type="checkbox" name="userName" onclick="setAll()" id="td" value="<%=user.getUserName() %>"></td>
		     <td><%=user.getUserName() %></td>
		     <td><%=user.getFullName() %></td>
		     <td><%=user.getGender() %></td>
		     <td><%=user.getBirthDate() %></td>
		     <td><%=user.getTel() %></td>
		     <td><%=user.getEmail() %></td>
		     <td><%=user.getWeChat() %></td>
		     <td><%=user.getCondition() %></td>
		     <td><%=user.getPosition() %></td>
		     <td>
		         <a href="ShowUserServlet?userName=<%=user.getUserName() %>">显示信息</a>
		         <a href="DeleteUserServlet?userName=<%=user.getUserName() %>" onclick="return confirm('确认删除？');">删除</a>
		         <a href="OnUserServlet?userName=<%=user.getUserName() %>">启用</a>
		         <a href="OffUserServlet?userName=<%=user.getUserName() %>">禁用</a>
		     </td>
		 </tr>
		 
		 <% }%>
		 -->
	
		<tr>
		    <td colspan="7"><a href="MainServlet"><button class="btn btn-primary">返回</button></a></td>
			<td colspan="6"><a href="AddUserServlet"><button class="btn btn-primary" id="add">添加</button></a></td>
		</tr>
    </table>
    
    <%@ include file="layout/footer.jsp" %>
    

  </body>
</html>
