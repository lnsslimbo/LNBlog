<%@ page language="java" import="java.util.*" import="com.liu.blog.entity.Comment" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'article5.jsp' starting page</title>
    
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
		<h1>千万别因为图安逸而耽误了前程</h1> 
		文章类型：教育 &emsp;&emsp;&emsp;发表日期：2018-09-30 &emsp;&emsp;&emsp;
		<span class="glyphicon glyphicon-thumbs-up"></span>点赞：24 &emsp;&emsp;&emsp;
		<span class="glyphicon glyphicon-share"></span>转发：5 &emsp;&emsp;&emsp;作者：谢陈
	</div><br>

	<div id="container">
	    <div id="content">
&emsp;&emsp;&emsp;有一份体面的工作，且轻松舒服，收入还高，这是当今不少年轻人羡慕和追求的工作生活状态。有的人甚至把它作为人生的终极目标，到处炫耀。<br>
　　 最近在网上看到一则评论，题目：时代抛弃你，连一声招呼都不会打。前段时间，市值1867亿美元，全球最大的企业软件公司甲骨文，因为裁员而站在了风口浪尖。按理来说，一个公司内部裁员不该有这么大的动静，可一裁就是900人，而且都是全国各大名校毕业的精英，在被裁的中国研发区员工中，绝大多数都是37岁左右的工程师，年薪几十万甚至上百万。但如今，他们却只能拿着横幅，在街头喊着口号：“我们要工作！”“孩子要上学！”“为何下如此狠手！”可能你会觉得，这是一场针对中国员工的战争。但如果你真正了解这家公司你就会知道，被裁，恰恰是他们咎由自取。<br>
　　 甲骨文公司中国研发中心，被称为“北京最大的养老院。”这个拥有1600人的中国研发中心，一向以工作轻松著称。他们每年最多忙一两个月，主要的工作任务就是改Bug，上班不打卡，工作时间自由，甚至还可以申请在家办公。甲骨文公司待遇高福利好，如果能满5年，那么一周五天工作日都不必去公司上班，有些员工，甚至一年都见不到几次。即便是被裁了，他们也拿着N+6的赔偿，少则几十万，多则上百万。在几百名甲骨文中国研发中心员工被裁后，包括阿里、百度、腾讯、华为在内的互联网巨头，纷纷为他们伸出橄榄枝。在园区内设置了专门的招聘专栏，并且举办了大型的专场招聘。可是，甲骨文员工的表现却让人大跌眼镜，大部分的人都未能通过第一轮的面试，有的即便过了面试，也在技术检测时，被刷了下来。可要知道，甲骨文对研发人员的招聘门槛相当高：“必须在清华、北大、上交、复旦和北邮，这五所学校读过本科才有资格进，而同时又必须具备硕士学历。”但恰恰是这些名校毕业的学生，却表现出了能力欠缺的一面。<br>
　　 通过这两件事，我们似乎明白了一个道理：即便你曾经是一只战斗力极强的青蛙，在温水里面煮久了，也会慢慢死去。时代抛弃你，连声招呼都不会打。“不同的职业，对社会的贡献是不一样的。”当你选择了接受高学历教育的时候，是不是应该为这个社会做出相应的贡献呢？<br>
　　 反观另一件事，阿里巴巴曾以40万年薪招聘资深体验师，看看它们的要求：“60岁以上老人，广场舞kol（意见领袖）优先。”当时很多人看到这个招聘广告的时候，很诧异，心想：“年过半百的老人，凭什么值那么多钱。”可令人意外的是，阿里一共收到3000多份简历，最后应聘成功的有：83岁的清华学霸奶奶，62岁的作家大爷，62岁IT大爷……其中，83岁的清华学霸奶奶是十几个广场舞群的KOL，经常组织一些线下活动。62岁的IT大爷还带了自己做的ppt介绍自己：“12年淘宝买家经验、芝麻信用785分、熟练操作Photoshop设计软件……”一边是，20几岁的硕士应聘环卫工“养老”，一边是，83岁清华奶奶应聘阿里“拼搏”，他们的差距究竟在哪？这让我们想到了一句话：有的人二十几岁就已经死掉了，只不过七八十岁才埋。
当前，有一种不正常的社会现象：孩子们该玩，却在拼命地学习；青年人该学习，却在拼命地游戏；中年人该顾惜身体，却在拼命赚钱；老年人该颐养天年，却开始拼命地健身。<br>
　　 我记得网络上有这样一段话：“20岁的贪玩，造就了30岁的无奈。30岁的无奈，导致了40岁的无为！40岁的无为，奠定了50岁的失败。酿造了一辈子的碌碌无为！”成功的人生等不来，请不要在该奋斗的年纪选择了安逸，否则，当父母需要你时，除了泪水，你一无所有;当孩子需要你时，除了惭愧，你一无所有;当自己回首过去，除了蹉跎，你还是一无所有！人到中年，不出众，便出局，这是必然。你不快乐，没人会同情你的悲伤；你不坚强，没人会怜悯你的懦弱；你不努力，没人会陪你原地停留。只有把命运掌握在自己手中，从今天起开始努力，即使暂时看不到希望，也要相信自己。因为比你牛几倍的人，依然在努力。不是每个人都能成为自己想要的样子，但每个人都可以努力成为自己想要的样子，因为世界上最可怕的两个词：一个叫执着，一个叫认真。只要在路上，就没有到不了的地方。<br>
　　 奋斗的人生最精彩。人生每一天都是直播，人生不可能重来，更没有后悔药可吃，错过了就错过了。我们每个人都应该明白这样一个道理：“年轻时不吃苦，老来必受苦。”吃得苦中苦，方为人上人。苦和累是生活原味，只有吃苦才能吃香，要想人前显贵，必须人后受罪，没有人随随便便可以成功，那些成功人士马云、任正非等，哪一个不是吃苦吃出来的？！我们应把“吃苦是财富、安逸是地狱、勤奋是捷径”当成自己的座佑铭，多吃苦、吃大苦，苦过累过才能品尝到生活的甘甜，人这一辈子能记住的永远是最苦的日子，苦乐中奋斗的人生才会更精彩。<br>
　　 奋斗的人生最现实。人活在这个世界上，总该留下一些什么？当我们回首往事的时候，不应碌碌无为而悔恨。行胜于言，心动不如行动，唯有奋斗才能让人生少些遗憾、少些悲凉、少些无奈，至少可以做到问心无愧。竞争是残酷的，生活是现实的。奋斗需要付出辛勤的汗水，天上不可能掉下馅饼，不劳而获是可耻的，投机取巧得来的不会长久。我们该怎样奋斗？也就是说在合适的年龄干合适的事。青少年时期就是好好学习，为人生打下坚实的基础;中青年时期就是好好工作，为事业和家庭打下坚实的基础;老年时期就是安享晚年，给人生画上一个圆满的句话。<br>
　　 奋斗的人生最快乐。工作是快乐的，奋斗是一种享受快乐的过程。人总是需要一点精神的，一个人如果没有一个明确奋斗的目标，如同无头苍蝇乱飞乱撞，就会失去前进的方向。“人过留名，雁过留声。“人这一辈子不在乎得到多少，也不是当大官、有万贯家财，而是付出多少、留下什么？人不仅仅为自己活着，还要为带个社会和家庭而活，为国家和民族尊严而活，一个人只有活的有尊严、活的有质量、活的有价值，这样的人生才会快乐。同时，我们每一个人要多做一些对社会和家庭有意义的事情，做一个大写的人，一个有益于人民的人。<br>
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
				    <form action="ArticleServlet5" method="post">
				    <h3>发表评论</h3>
				        <input type="text" name="content" value="${comment.content }" style="line-height:50px;width:600px;"><br><br>
				        <button type="submit" class="btn btn-info">发表</button>
				        &emsp;<a href="MainServlet" class="btn btn-info">返回</a><br>
				        <span style="color:red;">${msg }</span>
				    </form>
				</div>
		  </div>
	</div>
	<%@ include file="layout/footer.jsp" %>
  </body>
</html>
