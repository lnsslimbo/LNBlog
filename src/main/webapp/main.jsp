<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	
	<link href="html/css/bootstrap.min.css" rel="stylesheet">
	
	


	<style>	 
        #head,#footer,#container{margin:0px auto;
	                             border:0px;
								 width:100%;} 
		#head{height:100px;
		       }

        #navi,#content,#side{border:0px ;
		                     height:800px;
                             margin:5px;
							 }
        #container{
		           }

        #navi{float:left;
	          width:250px;
			  }

       #content{float:left;
	            width:600px;}

       #side{float:left;
	         width:300px; 
			 }


       #footer{clear:both;
	           text-align:center;
			   }

       #picture{height:300px;}
	   
	   #art{height:300px;}



      
       .navbar-brand{font-size:30px;
	                 }


       .navbar-nav {
         background-color: black;
         border-color: grey;
		 font-size:20px;
       }
       
       .center-block {
	                  line-height:30px;}


	   #picture  .carousel-inner > .item > img{width:100%;
	                    height:300px;
						display:block;}

      h2 {
          color: orange;
          font-size: 30px;
          text-align: center;
          position: relative;
            }

      h2:before {
                position: absolute;
                top: 20px;
                left: 0;
                content:'';
                width: 32%;
                border-bottom: 1px dashed gray;
                  }

      h2:after {
                position: absolute;
                top: 20px;
                left: 67%;
                content: '';
                width: 32%;
                border-bottom: 1px dashed gray;
                  }
     .label {color:black;}

	 #art ul li{
			    display: inline-block;
			    }

	 #art ul{
			display:inline;
			white-space: nowrap;
		}

     h3{font-size:15px;
	    color:black;
		}

	.table p{
	     	 font-size:10px;
		     color:gray;}

    ol li a {color:black;}

	ol li a:hover {color:blue;}
    
	#side .form-control-feedback {left:10px;
	                              line-height: 25px;}

	
	</style>

    
  </head>
  
  <body>
  
    <script src="html/jquery.js"></script>
	<script>
        $(function(){
			$("#picture").carousel({
				interval: 2000
			});

			$("#login").click(function(){
			hasError=false;
			if($("#name").val()==''){
				$("#nameError").html("用户名不能为空！");
				hasError=true;
			}
			else{
				$("#nameError").html("");
			}

			if(hasError){
				return false;
			}
		    });

        });

	</script>

	<script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
    <script src="html/js/bootstrap.min.js"></script>
    
  <%@ include file="layout/header.jsp" %>



    
    <div id="container">
	    <div id="navi" class="center-block ">
		    <div class="navbar-default">
		    <div class="">
				<h2 >每日精选</h2>
		    </div>

			<ul>
				<li><a href="https://ent.sina.com.cn/s/u/2019-10-05/doc-iicezzrr0236777.shtml" style="color:black;">
				    首位黑人东尼奖得主黛汉恩离世,享年84岁</a>
				</li>

				<li><a href="https://ent.sina.com.cn/m/f/2019-10-05/doc-iicezuev0148475.shtml" style="color:black;">
				    迪士尼将打造新真人版《神探加杰特》电影</a>
				</li>

				<li><a href="http://astro.sina.com.cn/y/2019-10-02/doc-iicezzrq9765550.shtml" style="color:black;">
				    玛法达看星星12星座运势 10.2-10.8(组图)</a>
				</li>

				<li><a href="https://med.sina.com/article_detail_103_1_72325.html" style="color:black;">
				    研究发现基因突变协同让肺癌更恶性</a>
				</li>

				<li><a href="https://news.sina.com.cn/w/2019-10-05/doc-iicezzrr0221969.shtml" style="color:black;">
				    英国女性乳腺癌死亡率大幅下降</a>
				</li>

				<li><a href="http://edu.sina.com.cn/gaokao/2019-10-04/doc-iicezzrq9313204.shtml" style="color:black;">
				    大学4年怎么过？收好这份最全最优作息表</a>
				</li>
			</ul>
			</div>

			<div class="rounded navbar-default">
				    <h3 class=" text-center" style="color:lightgreen;background-color: #F7F7F7;"><br>热门标签</h3>
                    <button class="btn">WEB</button>
                    <button class="btn">Bootstrap</button>
                    <button class="btn">PYTHON</button><br><br>
                    <button class="btn">JAVA</button>
                    <button class="btn">前端</button>
                    <button class="btn">Javascript</button><br><br>
            </div>	 
			
			<div id="" class="rounded navbar-default">
		    <h4 class="text-primary">猜你喜欢</h4>
		    <div>
				<ol>
					<li><a href="#">新闻1</a></li>
					<li><a href="#">新闻2</a></li>
					<li><a href="#">新闻3</a></li>
					<li><a href="#">新闻4</a></li>
					<li><a href="#">新闻5</a></li>
					<li><a href="#">新闻6</a></li>
				</ol>
		    </div>
	    </div>


	    </div>
	

	    <div id="content">
			
			<div id="picture" class="carousel slide">
				<!--计数器-->
				<ol class="carousel-indicators">
					<li class="active" data-target="#picture" data-slide-to="0"></li>
					<li data-traget="#picture" data-slide-to="1"></li>
					<li data-traget="#picture" data-slide-to="2"></li>
					<li data-traget="#picture" data-slide-to="3"></li>
				</ol>

				<!--图片容器-->
				<div class="carousel-inner">
					<div class="item active">
						<img src="html/wang1.jpg" class="img-thumbnail" alt="">
						<!--添加对应标题和内容-->
						<div class="carousel-caption">
							<h4>图1</h4>
							<span>内容</span>
						</div>
					</div>

					<div class="item">
						<img src="html/wang2.jpg" class="img-thumbnail" alt="">
						<div class="carousel-caption">
							<h4>图2</h4>
							<span></span>
						</div>
					</div>

					<div class="item">
						<img src="html/min1.jpg" class="img-thumbnail" alt="">
						<div class="carousel-caption">
							<h4>图3</h4>
							<span></span>
						</div>
					</div>

					<div class="item">
						<img src="html/tu1.jpg" class="img-thumbnail" alt="">
						<div class="carousel-caption">
							<h4>图4</h4>
							<span></span>
						</div>
					</div>

					<!--轮播导航-->
					<a href="#picture" data-slide="prev" class="left carousel-control">
						<span class="glyphicon glyphicon-chevron-left"></span>
					</a>
					
					<a href="#picture" data-slide="next" class="right carousel-control">
						<span class="glyphicon glyphicon-chevron-right"></span>
					</a>
				</div>
		    </div>
            
		    <div id="art" class="rounded">
				<h3 class="title"><br>特别推荐<br><br></h3>
				<table class="table">
					<tr class="item">
					    <td>
						<a href="https://mil.news.sina.com.cn/china/2019-10-06/doc-iicezuev0369088.shtml"><br>
						    <img src="html/zhijing.jpg"  style="height:80px; width:100px;" class="img-rounded">
						</a>
					    </td>

						<td style="height:100px; width:200px;">
						<a href="https://mil.news.sina.com.cn/china/2019-10-06/doc-iicezuev0369088.shtml">
							<h3>“致敬”方阵老兵动情流泪 曾担任开国大典护卫哨兵</h3>
							<p>“他们是走过长征的老红军、老革命，是我的领导、战友，想到他们无法看到这盛世，我的眼泪止不住地往下流。”......</p>
						</a>
						</td>

                        <td>
						<a href="https://news.sina.com.cn/c/2019-10-06/doc-iicezzrr0442075.shtml"><br>
							<img src="html/xianggang.jpg" style="height:80px; width:100px;" class="img-rounded">
						</a>
						</td>
   
						<td style="height:100px; width:200px;">
						<a href="https://news.sina.com.cn/c/2019-10-06/doc-iicezzrr0442075.shtml">
							<h3>香港警方：非法堵路或犯罪 最高可判处监禁五年</h3>
							<p>鉴于近日香港局势以及正在多区进行的非法游行，香港警方6日14时许发布最新声明指出，警方留意到近日有......</p>
						</a>
						</td>

					</tr>

					<tr class="item">
					    <td>
						<a href="https://news.sina.cn/global/szzx/2019-09-24/detail-iicezueu7992347.d.html"><br>
							<img src="html/yiselie.jpg" style="height:80px; width:100px;" class="img-rounded">
						</a>
						</td>
                        
						<td style="height:100px; width:200px;">
						<a href="https://news.sina.cn/global/szzx/2019-09-24/detail-iicezueu7992347.d.html">
							<h3>以色列：更分裂的社会，更艰难的阻阁</h3>
							<p>此次会议选举显示，800多万人的以色列社会愈加分裂破碎......</p>
						</a>
						</td>
					


					    <td>
						<a href="http://astro.sina.com.cn/v/ss/2019-10-03/doc-iicezueu8941978.shtml"><br>
							<img src="html/xingzuo.gif" style="height:80px; width:100px;" class="img-rounded">
						</a>
						</td>

						<td style="height:100px; width:200px;">
						<a href="http://astro.sina.com.cn/v/ss/2019-10-03/doc-iicezueu8941978.shtml">
							<h3>过于真实！放假中的12星座是这样的(组图)</h3>
							<p>放假几乎是每一个人都特别特别期待的一件事，因为放假就意味着学生党可以摆脱学校的束缚，上班族就......</p>
						</a>
						</td>

					</tr>

					<tr class="item">
					    <td>
						<a href="http://vr.sina.com.cn/news/hot/2019-10-06/doc-iicezzrr0381364.shtml"><br>
							<img src="html/car.png" style="height:80px; width:100px;" class="img-rounded">
						</a>
						</td>

						<td style="height:100px; width:200px;">
						<a href="http://vr.sina.com.cn/news/hot/2019-10-06/doc-iicezzrr0381364.shtml">
							<h3>美国汽车协会测试 ：汽车行人检测系统基本无用哨兵</h3>
							<p>据美国汽车协会（AAA）的一项最新研究显示，汽车自动紧急制动系统在行人检测方面表现不稳定......</p>
						</a>
						</td>

                        <td>
						<a href="http://book.sina.com.cn/news/whxw/2019-09-23/doc-iicezueu7784265.shtml"><br>
							<img src="html/read.jpg" style="height:80px; width:100px;" class="img-rounded">
						</a>
						</td>

						<td style="height:100px; width:200px;">
						<a href="http://book.sina.com.cn/news/whxw/2019-09-23/doc-iicezueu7784265.shtml">
							<h3>优中选优：“新中国70年70部长篇小说典藏”丛书出版</h3>
							<p>为庆祝中华人民共和国成立70周年，全面展现中华民族的文化创造力和新中国文学发展水平，人民文学出版社......</p>
						</a>
						</td>
					</tr>

				</table>
		    </div>

        </div>


        <br><br><br><br><br>
        <div id="side" style="width:250px;height:300px; text-align:center;" class="demo">
		${msg}${userName}<br>
		<span style="color:red;">${error }</span><br>
        </div>
		
	</div>

	<%@ include file="layout/footer.jsp" %>
    
  </body>
</html>
