<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'cate.jsp' starting page</title>
    
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

		#footer{clear:both;
			   text-align:center;}

	    #content,#side{height:600px;
		               margin:5px;}

		#content{float:left;
		         width:800px;
			     text-align:center;}

		#side{float:left;
		      width:300px;
			  }

        h3,p {text-align:left;}

        h3 {font-size:20px;
		    color:black;}

		p {font-size:15px;
		    color:gray;}

       .navbar-brand{font-size:30px;
	                 color:grey;
					 }


       .navbar-nav {
         background-color: black;
         border-color: grey;
		 font-size:20px;
       }

       #visitor{text-align:center;}

       ul li {display:block;}

	   ul li a {color:lightgray;}

	   td h3 span {font-size:15px;}


	</style>
	
    
	

  </head>
  
  <body>
    <script src="html/jquery.js"></script>
	<script type="text/javascript">
	   
	</script>

    <script src="html/jquery.min.js" type="text/javascript"></script>
    <script src="html/js/bootstrap.min.js"></script>
    
    
    <%@ include file="layout/header.jsp" %>




    <div id="container">
	

	    <div id="content">
			<table class="table">
				<tr>
					<td style="height:100px;width:200px;">
						<a href="ArticleServlet1"><img src="html/tu3.jpg" alt="" class="img-thumbnail" style="height:80px; width:100px;"></a>
					</td>

					<td style="height:100px;width:400px;">
						<a href="ArticleServlet1">
							<h3>余生，请善待自己的父母 </h3>
							<p>生命来来往往，来日并不方长...........</p>
						</a>
					</td>
                        
					<td style="height:100px;width:200px;"><br>
						<span class="glyphicon glyphicon-eye-open text-muted">总浏览数：180</span>
						<span class="glyphicon glyphicon-comment text-muted">总评论数：18</span>
					</td>
				</tr>

				<tr>
					<td style="height:100px;width:200px;">
						<a href="ArticleServlet2"><img src="html/wang1.jpg" alt="" class="img-circle" style="height:80px; width:100px;"></a>
					</td>

					<td style="height:100px;width:400px;">
						<a href="ArticleServlet2">
							<h3>选择</h3>
							<p>风景在路上，我们需要去寻找.........</p>
						</a>
					</td>

					<td style="height:100px;width:200px;"><br>
						<span class="glyphicon glyphicon-eye-open text-muted">总浏览数：199</span>
						<span class="glyphicon glyphicon-comment text-muted">总评论数：6</span>
					</td>

				</tr>

				<tr>
					<td style="height:100px;width:200px;">
						<a href="ArticleServlet3"><img src="html/wang2.jpg" alt="" class="img-rounded" style="height:80px; width:100px;"></a>
					</td>

					<td style="height:100px;width:400px;">
						<a href="ArticleServlet3">
							<h3>如果我死了·若是有来生——笔砚先生</h3>
							<p>昏黄的路灯洒落一片片昏黄，如果一个人.......</p>
						</a>
					</td>

					<td style="height:100px;width:200px;"><br>
						<span class="glyphicon glyphicon-eye-open text-muted">总浏览数：210</span>
						<span class="glyphicon glyphicon-comment text-muted">总评论数：7</span>
					</td>

				</tr>

				<tr>
					<td style="height:100px;width:200px;">
						<a href="ArticleServlet4"><img src="html/min1.jpg" alt="" class="img-rounded" style="height:80px; width:100px;"></a>
					</td>

					<td style="height:100px;width:400px;">
						<a href="ArticleServlet4">
							<h3>抱怨不好是不知道还有更坏</h3>
							<p>常怀感恩之心，我们才会有......</p>
						</a>
					</td>

					<td style="height:100px;width:200px;"><br>
						<span class="glyphicon glyphicon-eye-open text-muted">总浏览数：335</span>
						<span class="glyphicon glyphicon-comment text-muted">总评论数：12</span>
					</td>

				</tr>

				<tr>
					<td style="height:100px;width:200px;">
						<a href="ArticleServlet5"><img src="html/tu3.jpg" alt="" class="img-rounded" style="height:80px; width:100px;"></a>
					</td>

					<td style="height:100px;width:400px;">
						<a href="ArticleServlet5">
							<h3>千万别因为图安逸而耽误了前程</h3>
							<p>奋斗的人生最精彩。人生.........</p>
						</a>
					</td>

					<td style="height:100px;width:200px;"><br>
						<span class="glyphicon glyphicon-eye-open text-muted">总浏览数：665</span>
						<span class="glyphicon glyphicon-comment text-muted">总评论数：10</span>
					</td>

				</tr>

				<tr>
					<td style="height:100px;width:200px;">
						<a href="ArticleServlet6"><img src="html/wang3.jpg" alt="" class="img-rounded" style="height:80px; width:100px;"></a>
					</td>

					<td style="height:100px;width:400px;">
						<a href="ArticleServlet6">
							<h3>与人相处，请多一份真诚</h3>
							<p>严歌苓说，人之间的关系.........</p>
						</a>
					</td>

					<td style="height:100px;width:200px;"><br>
						<span class="glyphicon glyphicon-eye-open text-muted">总浏览数：356</span>
						<span class="glyphicon glyphicon-comment text-muted">总评论数：21</span>
					</td>

				</tr>
			</table>
	    </div>

        
	    <div id="side">
	        <br><br><br><br><br><br>
            <div style="height:200px;" id="visitor">
			<h4>最近访客</h4>
			<ul>
				<li>
					<a href="#"><span class="glyphicon glyphicon-user">用户1</span></a>
					&emsp;&emsp;&emsp;&emsp;2019-07-18
				</li>

				<li>
					<a href="#"><span class="glyphicon glyphicon-user">用户2</span></a>
					&emsp;&emsp;&emsp;&emsp;2019-07-20
				</li>

				<li>
					<a href="#"><span class="glyphicon glyphicon-user">用户3</span></a>
					&emsp;&emsp;&emsp;&emsp;2019-07-21
				</li>

				<li>
					<a href="#"><span class="glyphicon glyphicon-user">用户4</span></a>
					&emsp;&emsp;&emsp;&emsp;2019-08-18
				</li>

				<li>
					<a href="#"><span class="glyphicon glyphicon-user">用户5</span></a>
					&emsp;&emsp;&emsp;&emsp;2019-08-19
				</li>

				<li>
					<a href="#"><span class="glyphicon glyphicon-user">用户6</span></a>
					&emsp;&emsp;&emsp;&emsp;2019-09-21
				</li>
			</ul>
          </div>
	    </div>
	</div>

	<%@ include file="layout/footer.jsp" %>
	
  </body>
</html>
