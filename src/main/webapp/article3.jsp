<%@ page language="java" import="java.util.*"  import="com.zhw.entity.Comment" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'article3.jsp' starting page</title>
    
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
		<h1>如果我死了·若是有来生——笔砚先生</h1> 
		文章类型：教育 &emsp;&emsp;&emsp;发表日期：2018-09-19 &emsp;&emsp;&emsp;
		<span class="glyphicon glyphicon-thumbs-up"></span>点赞：698 &emsp;&emsp;&emsp;
		<span class="glyphicon glyphicon-share"></span>转发：20 &emsp;&emsp;&emsp;作者：笔砚先生
	</div><br>

	<div id="container">
	    <div id="content">
&emsp;&emsp;&emsp;很久都不曾写过文章了，上一篇文章还是四个月之前的。以此去命题，并非有什么轻生的念头，只是有感而发，勿念。其实我很想做个自私的人，因为这会让你吃尽苦头又吃足了甜头。而你却依然活的天真活的开心——序。<br>
　　 如果我死了<br>
　　如果我死了，那些愧对我的人会很开心：终于不用还钱了，哎呀，不然真不知道怎么办那，不敢见他，吓得我朋友圈都不敢发了！不对，我这样的人怕他干嘛？反正也不能把我怎么样。我每天活的多潇洒，灯红酒绿左拥右抱的。怕他干嘛，我是没错的，我怎么能委屈自己那？我要活的开心就不能在乎那么多，人这一辈子就是有舍有得，凭自己本事借的钱为什么要还？——不用还。<br>
　　如果我死了，那些我曾追求的人会很开心：每天烦我，我怎么知道喜不喜欢他？可能喜欢吧，可能不喜欢？无所谓了反正他都死了。哎呀，他一死去，就没人对我嘘寒问暖请我吃饭了，没人每天担心我了！算了，毕竟我这么漂亮，比不上明星也有自己的亮点，还会有下一个傻子不顾一切追求我的。可下一个人什么时候出现那？这么想来我还是亏本的啊，我怎么能做亏本的买卖——不能！他要是不死去多好，还能多一个追求者！我不喜欢他，我只是喜欢他追我无条件对我好，我这么做是有道理的，哪个人是不渴望被人爱的孩子那？我还是个孩子啊，我渴望人爱我追求我不图回报的对我好，我接受他的好有错吗？我是没错的？——恩。<br>
　　如果我死了，那些高谈阔论肆无忌惮吹牛逼的人会心头一震：他怎么死了？他不能死啊，他一死没人听我吹嘘了。我那些“丰功伟绩”辉煌历史，我那些绝地反击的故事跟谁炫耀啊？我曾经多么励志，我曾经多么孝顺，我曾经多么受人尊敬我曾经多么爱家人爱工作啊！他不能死，他死了谁听我吹嘘？不行，我还得再找个人！他死了，唉，他死了我英雄无用武之地，他死了我怎么展现给大家一个“君子好汉”的形象啊？不行，多亏他死了！他不死真求到我怎么办，那我是不是要兑现我说的力所能及尽力而为？我只是随口一说啊，虽然我这么完美，可他不该当真的啊——不该当真的。<br>
　　如果我死了，那些争夺我遗产的人会很兴奋：什么？他死了，他真的死了？他真的死了！哈哈！他死了！他真的死了！我想想，这样我就可以买个车，换个大点的房子，还能吃点不舍得吃的，去些平时消费不起的场所，早点死多好，何必等到现在那，人终有一死。不如成全我了，毕竟他这么无私，祝他上天堂哈哈！我谢谢他。不，我该恨他，怎么不早点死？愿他下地狱！我只是为了自己过得好一点，我每月赚几万块多吗？油价这么贵，海鲜这么贵，还得平时喝个酒旅个游，我还会有孩子，哪里不是开销的地方，我活的这么悲惨只是为了让自己过得好一点，我没有错，谁不想让自己过得好一点！他会尊重我的自私？——恩，他一定会的。<br>
　　如果我死了，那些垂涎于我爱人的会很激动：妈的，终于死了！这王八蛋！盼星星盼月亮终于死了。早点死啊，他那老婆可馋死我了，那身材，那大白腿，想想都过瘾！这下子我就不用害怕了，妈的，他活着我也不怕！这下子我就不用偷偷摸摸的了，妈的，他活着我也不怕！这下子我就不用跟他称兄道弟了，妈的，他活着我也不想跟他称兄道弟！占着茅坑不拉屎，凭什么那么漂亮的女人要跟他受罪？他那活的还算个人了？哪里比得上我，能让这女人吃香的喝辣的，马桶都是镀金边的！为什么不是金边的？金边的得多少钱，有那个钱找什么样的没有，我还用得上盼着他死？他这一死我也算做点好事，不然这么年轻守了寡还得改嫁，万一改嫁的是奔着她那张脸那个身材的人那。我这算是做点好事，给自己积德了，他应该谢谢我的！为什么我这么无私奉献那——妈的，老子一直就这么无私啊！<br>
　　如果我死了，那些我能帮助的人会很伤心：他怎么能死那？他怎么能死那！他死了谁帮我工作，他死了谁帮我做那些别人不愿做的事？他不能死他不能死！算了，死了就死了，我抓紧找下一个人吧。唉！他死了谁体现我的社会价值啊，他死了我怎么奔赴我的需求我的追求！他这就死了，我很伤心。曾经有那么个人可以帮我买东西的时候省钱，可以帮我去打架，可以难过的时候陪我喝酒，开导我听我倾诉，他怎么可以死！我恨他，我是不是该恨他？没错，我应该恨他，不说一声就死了。我恨他——这么不负责的人我恨他！<br>
　　如果我死了，那些朋友圈的高大上会埋怨我：他死了？那谁给我评论，谁给我点赞！我那些修过的照片，丰盛又廉价的美食小视频，盗的风景艺术图片谁给我评论，谁来展现我的品位我的生活。他怎么可以死，那谁来当我的仰慕者，谁来做围观群众，谁来发出一声哇塞！死了！算了，死了就死了吧。别问为什么——我这么高大上的人在乎个市井小民干嘛。<br>
　　 若是有来生<br>
　　若是有来生，我要做一个聋子。<br>
　　做一个聋子。我不想听那些废话，不想听失恋后的抱怨：我分手了，好难受，她那么漂亮，我想睡她！她那么善解人意，我想跟她过一辈子，可我没钱！努力，算了，太累了。<br>
　　做一个聋子。我不想听那些废话，不想听贫穷时的恳求：你帮帮我，我真的可怜，我真的走投无路！你不能不帮我，我们是朋友，我是什么样的人你知道的！还钱？算了，我缺钱你是朋友怎么能逼我！你知道我是什么样的人，有钱会不还你？——抱歉，我真的不知道你是什么样的人！<br>
　　做一个聋子。我不想听那些废话，不想听冠冕堂皇的仁义：你对我不仁我不能对你不义，虽然你对我不仁，但你是我朋友你是我亲戚你是追我的人，你那么那么孝顺那么那么善良那么那么义气那么那么钟情！尽管你对我这般如此，如此这般。但我还是念你的好！所以我不能借你钱看你堕落，不能帮助你看你不自己努力，不能接受你看你开心，因为我怕你得意忘形啊！<br>
　　因为我是个聋子，所以别对我说废话。<br>
　　若是有来生，我要做一个哑巴。<br>
　　做一个哑巴。我不想说那些违心话，不想说：因为我们是兄弟，好吧！<br>
　　做一个哑巴。我不想说那些违心话，不想说：因为我爱你，好吧！<br>
　　做一个哑巴。我不想说那些违心话，不想说：因为你是领导，好吧！<br>
　　因为我是个哑巴，所以我说不出逆来顺受，但我懂得己所不欲，勿施于人。<br>
　　若是有来生，我要做一个瞎子。<br>
　　做一个瞎子。我不想看那些悲哀，不想看公交上：你就给老人让个座怎么了，年轻立壮凭什么不让座，你还是人吗，爹妈怎么教的！<br>
　　做一个瞎子。我不想看那些悲哀，不想看大街上：我和他只是朋友，我们什么都没有，你别多想我还是爱你的。我不爱钱我爱你！……？。<br>
　　做一个瞎子。我不想看那些悲哀，不想看工作上：张三你说，这地球是方的还是圆的？张三顶着黑眼圈穿着没洗的衬衫吃着剩饭来到单位奉上笑脸说“方的方的，嘿嘿肯定是方的”！<br>
　　做一个瞎子。我不想看那些悲哀，不想看马路上：行行好吧，给点钱，好人一生平安，差五元车费回家。唉，这现在傻子少了，五块钱都舍不得我这豪车怎么加油！<br>
　　做一个瞎子。我不想看那些悲哀，不想看马路上：行行好吧大哥：我孩子真的好几天没吃饭了，求求你了求求你了！滚！孩子睡吧，睡着了就不饿了。<br>
　　若是有来生，莫要虚度光阴。<br>
　　如果我死了，愿以警醒世人。<br>
　　昏黄的路灯洒落一片片昏黄，如果一个人自愿高楼坠下，算自杀吗？算吧。——自杀究竟是一个人杀了自己，还是所有人杀了他一个人而已？<br>
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
				    <form action="ArticleServlet3" method="post">
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
