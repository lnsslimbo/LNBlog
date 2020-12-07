<%@ page language="java" import="java.util.*" import="com.zhw.entity.Comment" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'article6.jsp' starting page</title>
    
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
		table {border:0px;
		         margin:0;
				 width:80%;
				 }
		body {margin:0px 150px}
		
		.table > tbody > tr > td{
             border: white 0px solid;
             padding: 3px 3px;}
		
		#footer{text-align:center;}
    </style>

  </head>
  
  <body>
    <script src="html/jquery.js" type="text/javascript"></script>
	<script type="text/javascript">
	   
	</script>

    <script src="html/jquery.min.js" type="text/javascript"></script>
    <script src="html/js/bootstrap.min.js"></script>
    
    <div id="head" class="text-center">
		<h1>与人相处，请多一份真诚</h1> 
		文章类型：教育 &emsp;&emsp;&emsp;发表日期：2018-09-30 &emsp;&emsp;&emsp;
		<span class="glyphicon glyphicon-thumbs-up"></span>点赞：24 &emsp;&emsp;&emsp;
		<span class="glyphicon glyphicon-share"></span>转发：5 &emsp;&emsp;&emsp;作者：春暖花开文
	</div><br>

	<div id="container">
	    <div id="content">
&emsp;&emsp;&emsp;人活在世上，总会遇见各种各样的人。遇见正确的人，是一场缘分，遇见错误的人，则是一场劫难，余生不长，选择适当的相处方式，带上你的真诚，和正确的人在一起。<br>
　　严歌苓说，人之间的关系不一定从陌生进展为熟识，从熟识走向陌生，同样是正常进展。<br>
　　人与人之间的缘分，远没有想像中的那么牢固，也许前一秒钟还牵手一起经历风雨，后一秒就说散就散，所以，你要懂得善待和珍惜。<br>
　　人与人相处，讲究个真心，你对我好，我就对你好，你给予真情，我还你真意，人心是相互的。<br>
　　两个人在一起，总会有人主动，但主动久了，就会累，会伤心，心伤了就暖不回来了，凡事多站在对方的角度想一想，多一份忍耐和谦就，就不会有那么多的怨气和误解，也少了一些擦肩而过。<br>
　　做人不要太苛刻，太苛无友，人无完人，每个人都有这样或那样的缺点，重在包容。 包容是一种大度，整天笑呵呵的人并不是他没有脾气和烦恼，而是心胸开阔，两个懂得相互包容的人，才能走得越久。<br>
　　人与人相处，要多一份真诚，俗语说，你真我便真。常算计别人的人，总以为自己有多聪明，孰不知被欺骗过的人，就会选择不再相信，千万别拿人性来试人心，否则你会输得体无完肤。<br>
　　人与人相处不要太较真，生活中我们常常因为一句话而争辩的面红耳赤，你声音大，我比你嗓门还大，古人说，有理不在声高，很多时候，让人臣服的不是靠嘴，而是靠真诚，无论是朋友亲人爱人都不要太较真了，好好说话，也是一种修养。<br>
　　俗语说，良言一句三冬暖， 你对我好，我又岂能不知，你谦让与我，我又怎能再得寸进尺，你欣赏我，我就有可能越变越好，你尊重我，我也会用尊重来回报你，你付出爱，必会得到更多的爱。<br>
　　与人相处，要多一份和善，切忌恶语相向，互相伤害就有可能永远失去彼此，每个人心中都有一座天平，每个人心中都藏一份柔软，表面再强势的人，内心也是渴求温暖的。<br>
　　做人要学会谦虚，虚怀若谷。人人都喜欢和谦虚的人交往，司马懿说：“臣一路走来，没有敌人，看见的都是朋友和师长”。这就是胸怀。<br>
　　有格局的人，心中藏有一片海，必能前路开阔，又何愁无友。<br>
　　人与人相处，开始让人舒服的也许是你的言语和外表，但后来让人信服的一定是你的内在。就如那句，欣赏一个人，始于颜值，敬于才华，合于性格，久于善良，终于人品。<br>
　　人这一生，遇见相同的人不容易，遇见正确的人更不容易，只有选择了合适的相处方式，带上真诚与人相处，才会走得更长，更远更久。<br>
        </div>

		<div id="comment">
			<h3>评论&emsp;</h3>
			<div>
			    <table id="table1" class="table">
			        <%
			            List<Comment> list = (List<Comment>)request.getAttribute("list");
			            for(Comment comment : list){
			         %>
			        <tr>
			            <td style="font-size:20px;"><%=comment.getUserName() %></td>
			        </tr>
			        
			        <tr ><td><%=comment.getContent() %></td></tr>
			        
			        <tr class="text-muted">
			            <td><%=comment.getCommentDate() %></td>
			            <td>
			                <a href="#"><span class="glyphicon glyphicon-share"></span></a>&emsp;&emsp;&emsp;
					    	<a href="#"><span class="glyphicon glyphicon-comment"></span></a>&emsp;&emsp;&emsp;
					    	<a href="#"><span class="glyphicon glyphicon-thumbs-up"></span>22</a>
			            </td>
			        </tr>

			        <%} %>
			        
			        
				    </table>
				    <form action="ArticleServlet6" method="post">
				    <h3>发表评论</h3>
				        <input type="text" name="content" value="${comment.content }" style="line-height:50px;width:600px;"><br><br>
				        <button type="submit" class="btn btn-info">发表</button>
				        &emsp;<a href="MainServlet" class="btn btn-info">返回</a><br>
				        <span style="color:red;">${msg }</span>
				    </form>
				</div>
		  </div>
	</div>
	<%@ include file="footer.jsp" %>
	</body>
</html>
