<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML>
<html lang="en">
<head>
<base href="<%=basePath%>">

<title>My JSP 'list.jsp' starting page</title>
<meta charset="utf-8">
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link rel="stylesheet" href="front/css/reset.css" type="text/css"
	media="screen">
<link rel="stylesheet" href="front/css/style.css" type="text/css"
	media="screen">
<link rel="stylesheet" href="front/css/layout.css" type="text/css"
	media="screen">
<link rel="stylesheet" href="front/css/bootstrap.css">
	
<style type="text/css">
table.tbcss,table.tbcss td {
	padding: 2px;
	border: 2px;
	color: #FFF;
}
</style>
<script type="text/javascript" src="front/js/jquery-1.6.min.js"></script>
<script src="front/js/cufon-yui.js" type="text/javascript"></script>
<script src="front/js/cufon-replace.js" type="text/javascript"></script>
<script src="front/js/Open_Sans_400.font.js" type="text/javascript"></script>
<script src="front/js/Open_Sans_Light_300.font.js"
	type="text/javascript"></script>
<script src="front/js/Open_Sans_Semibold_600.font.js"
	type="text/javascript"></script>
<script src="front/js/FF-cash.js" type="text/javascript"></script>
<!--[if lt IE 7]>
    <div style=' clear: both; text-align:center; position: relative;'>
        <a href="http://www.microsoft.com/windows/internet-explorer/default.aspx?ocid=ie6_countdown_bannercode"><img src="http://www.theie6countdown.com/images/upgrade.jpg" border="0"  alt="" /></a>
    </div>
<![endif]-->
<!--[if lt IE 9]>
    <script type="text/javascript" src="js/html5.js"></script>
    <link rel="stylesheet" href="css/ie.css" type="text/css" media="screen">
<![endif]-->

<link href="front/css/h-countent.css" rel="stylesheet" type="text/css">
</head>
<body id="page2">

	<!-- header -->
	<div class="bg">
		<div class="main">
			<header>
				<div class="row-1">
					<h1>
						<a class="logo" href="front/pages/index.jsp">Point.co</a> <strong
							class="slog">The most creative ideas</strong>
					</h1>
					<form id="search-form" action="" method="post"
						enctype="multipart/form-data">
						<fieldset>
							<div class="search-form" style="height: 38px;" >
								<input type="text" name="search" style="width: 165px;" value="Type Keyword Here"
									onBlur="if(this.value=='') this.value='Type Keyword Here'"
									onFocus="if(this.value =='Type Keyword Here' ) this.value=''" />
								<a href="#"
									onClick="document.getElementById('search-form').submit()">Search</a>
							</div>
						</fieldset>
					</form>
				</div>
				<div class="row-2">
					<nav>
						<ul class="menu">
							<li><a href="front/pages/index.jsp">Home Page</a></li>
							<li><a href="front/pages/list.jsp">Order
									and Invest</a></li>
							<li><a href="front/pages/services.jsp">Audit Accounts</a></li>
							<li><a  class="active" href="front/pages/products.jsp">Join Projects</a></li>
							<li class="last-item"><a href="contacts.html">Submit
									Project</a></li>
						</ul>
					</nav>
				</div>
			</header>
			<!-- content -->
			<div class="ic">
				More Website Templates @ <a href="http://www.cssmoban.com/">网页模板</a>!
			</div>
			<section id="content">
				<div class="padding">
					<div class="wrapper p4">
						<div class="col-3">
							<div class="indent">
							
							
							
							
							
							
							
								<div class="h-content">
									<div class="h-title">
										<div class="h-pic">筹资中</div>
										<div class="h-t">
											<a href="http://www.demohour.com/projects/discover/3_0_0_0">最新上线</a>
											<a href="http://www.demohour.com/projects/discover/3_0_0_2">金额最高</a>
											<a href="http://www.demohour.com/projects/discover/3_0_0_5">关注最多</a>
											<a href="http://www.demohour.com/projects/discover/3_0_0_3">话题最多</a>
											<span>|</span> <a
												href="http://www.demohour.com/projects/discover/3_927158_0_0">时尚科技</a>
											<a
												href="http://www.demohour.com/projects/discover/3_927151_0_0">创意设计</a>
											<a
												href="http://www.demohour.com/projects/discover/3_927162_0_0">文艺生活</a>
											<a href="http://www.demohour.com/projects/discover/3_0_0_0">更多筹资</a>
										</div>
									</div>
									
									
									</div>
									
					
  <div class="form-group">
    <label for="input1" class="col-sm-2 control-label">项目组名称</label>
    <div class="col-sm-10">
      <input type="text" name="team.name" value="${team.name }" readonly="readonly" class="form-control" id="input1"  placeholder="项目组名称">
    </div>
  </div>
  <br><br>
  <div class="form-group">
    <label for="input2"  class="col-sm-2 control-label">发起人</label>
    <div class="col-sm-10">
      <input type="text"  name="user.nickname"  readonly="readonly"  class="form-control" id="input2" placeholder="发起人">
    </div>
  </div>
  <br><br>
  <div class="form-group">
    <label for="input1" class="col-sm-2 control-label"><a href="#">团队项目</a></label>
    <div class="col-sm-10">
    <a href="#"><input type="text"  name="project.name"  readonly="readonly"  class="form-control" id="input1"  placeholder="发起项目"></a>
    </div>
  </div>
  <br><br>
  <div class="form-group">
    <label for="input2" class="col-sm-2 control-label">共需人数</label>
    <div class="col-sm-10">
      <input type="text" name="team.num" value="${team.num }" readonly="readonly" class="form-control"  id="input2" placeholder=" 共需人数">
    </div>
  </div>
  <br><br>
  <div class="form-group">
    <label for="input1" class="col-sm-2 control-label">研究方向（专业）</label>
    <div class="col-sm-10">
      <input type="text" name="team.major" value="${team.major }" readonly="readonly" class="form-control" id="input1"  placeholder="研究方向（专业）">
    </div>
  </div>
  <br><br>
  <div class="form-group">
    <label for="input2" class="col-sm-2 control-label">加入人数</label>
    <div class="col-sm-10">
      <input type="text" name="teamUserCount" value="${teamUserCount }" readonly="readonly" class="form-control"  id="input2" placeholder="加入人数">
    </div>
  </div>
  <br><br>
  <div class="form-group">
    <label for="input2" class="col-sm-2 control-label">项目组介绍</label><br>
    <div class="col-sm-10">
      ${team.decl }
    </div> 
  </div>
  
<a href="ming/team_listTeamById?team_id=${team.team_id }"> <h1 style="text-align: center;"> 加入我们</h1></a>
    
 
					
									
									
									
									
									
									
								
								
							</div>
						</div>
					</div>
					<div class="box-bg">
						<div class="wrapper">
							<div class="col-1">
								<div class="box first">
									<div class="pad">
										<div class="wrapper indent-bot">
											<strong class="numb img-indent2">01</strong>
											<div class="extra-wrap">
												<h3 class="color-1">
													<strong>Careful</strong>Analysis
												</h3>
											</div>
										</div>
										<div class="wrapper">
											<a class="button img-indent-r" href="#">>></a>
											<div class="extra-wrap">
												The most of the most professional <br /> 最多的最专业人士评价.
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="col-1">
								<div class="box second">
									<div class="pad">
										<div class="wrapper indent-bot">
											<strong class="numb img-indent2">02</strong>
											<div class="extra-wrap">
												<h3 class="color-2">
													<strong>Quick</strong>Research
												</h3>
											</div>
										</div>
										<div class="wrapper">
											<a class="button img-indent-r" href="#"></a>
											<div class="extra-wrap">
												The quickest for the most outstanding creative <br />
												最快的最优秀创意孵化.
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="col-2">
								<div class="box third">
									<div class="pad">
										<div class="wrapper indent-bot">
											<strong class="numb img-indent2">03</strong>
											<div class="extra-wrap">
												<h3 class="color-3">
													<strong>New</strong>Strategies
												</h3>
											</div>
										</div>
										<div class="wrapper">
											<a class="button img-indent-r" href="#">>></a>
											<div class="extra-wrap">
												The most transparent and the most trusted finances <br />
												最透明最可信的财务管理.
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</section>
			<!-- footer -->
			<footer>
				<div class="row-top">
					<div class="row-padding">
						<div class="wrapper">
							<div class="col-1">
								<h4>Address:</h4>
								<dl class="address">
									<dt>
										<span>Country:</span>USA
									</dt>
									<dd>
										<span>City:</span>San Diego
									</dd>
									<dd>
										<span>Address:</span>Beach st. 54
									</dd>
									<dd>
										<span>Email:</span><a href="#">miguelyu@gmail</a>
									</dd>
								</dl>
							</div>
							<div class="col-2">
								<h4>Follow Us:</h4>
								<ul class="list-services">
									<li class="item-1"><a href="#">Facebook</a></li>
									<li class="item-2"><a href="#">Twitter</a></li>
									<li class="item-3"><a href="#">LinkedIn</a></li>
								</ul>
							</div>
							<div class="col-3">
								<h4>College Division:</h4>
								<ul class="list-1">
									<li><a href="#">广州 SCUT SYSU</a></li>
									<li><a href="#">上海 Fudan Tongji</a></li>
									<li><a href="#">北京 Tsinghua PKU</a></li>
									<li><a href="#">河南 ZZU Henan</a></li>
								</ul>
							</div>
							<div class="col-4">
								<div class="indent3">
									<strong class="footer-logo">Tjian.<strong>org</strong></strong>
									<strong class="phone"><strong>Toll Free:</strong>
										1-800-567-8934</strong>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="row-bot">
					<div class="aligncenter">
						<p class="p0">Copyright © 2014 天鉴网 Tjian.org</p>
						Reserved by <a href="http://www.cssmoban.com/" title="网页模板"
							target="_blank">天使投资品鉴联合会</a>
						<script type="text/javascript">
							var cnzz_protocol = (("https:" == document.location.protocol) ? " https://"
									: " http://");
							document
									.write(unescape("%3Cspan id='cnzz_stat_icon_1000354874'%3E%3C/span%3E%3Cscript src='"
											+ cnzz_protocol
											+ "s22.cnzz.com/z_stat.php%3Fid%3D1000354874%26show%3Dpic' type='text/javascript'%3E%3C/script%3E"));
						</script>
						<br>
						<!-- {%FOOTER_LINK} -->
					</div>
				</div>
			</footer>
		</div>
	</div>
	<script src="front/js/bootstrap.js"></script>
<script src="front/js/jquery-1.6.min.js"></script>
	<script type="text/javascript">
		Cufon.now();
	</script>
</body>
</html>

