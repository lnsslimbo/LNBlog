<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<div id="head" class="navbar-default">

	    <div class="navbar-header">
		    <span class="navbar-brand glyphicon glyphicon-leaf">MyBlog</span>
  　    </div>

	    <div class="nav navbar-nav">
	    <ul id="menu" class="nav nav-justified">
		    <li class=""><a href="main.jsp">主页</a></li>
		    <li class=""><a href="EntertainmentServlet">娱乐</a></li>
		    <li class=""><a href="EducateServlet">教育</a></li>
		    <li class=""><a href="CateServlet">美食</a></li>
		    <li class=""><a href="XingzuoServlet">星座</a></li>
		    <li class="dropdown">
			    <a href="more.jsp" class="dropdown-toggle" data-toggle="dropdown">
				    更多<b class="caret"></b>
				</a>
			    <ul class="dropdown-menu">
					<li><a href="ChangeServlet">修改密码</a></li>
					<li><a href="UserInformationServlet">我的信息</a></li>
			    </ul>
			</li>
		    <li class="nav-item"><a href="help.jsp">帮助</a></li>
			<li class="">
			    <form action="SearchServlet?msg=<%=request.getAttribute("msg") %>" method="get">
				    <span class="glyphicon glyphicon-search form-control-feedback"></span>
                    <input type="text" name="msg" class="form-control" placeholder="search" style="padding:0; margin:0;">
				</form>
			</li>
			<li style="color:lightgreen;" class="dropdown">
			    <a href="" class="dropdown-toggle" data-toggle="dropdown">
				    <%=session.getAttribute("UserName")%> <b class="caret"></b>
				</a>
			        <ul class="dropdown-menu">
					    <li><a href="ArticleServlet">文章管理</a></li>
					    <li><a href="TypeServlet">文章类型管理</a></li>
					    <li><a href="UserServlet">用户管理</a></li>
			        </ul>
			</li>
			<li><a href="ExitServlet">注销</a></li>
		</ul>
		</div>
	</div>