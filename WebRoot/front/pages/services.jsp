<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
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
<link rel="stylesheet" href="front/css/reset.css" type="text/css" media="screen">
<link rel="stylesheet" href="front/css/style.css" type="text/css" media="screen">
<link rel="stylesheet" href="front/css/layout.css" type="text/css" media="screen">
<link href="front/css/Service.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="front/js/jquery-1.6.min.js"></script>
<script src="front/js/cufon-yui.js" type="text/javascript"></script>
<script src="front/js/cufon-replace.js" type="text/javascript"></script>
<script src="front/js/Open_Sans_400.font.js" type="text/javascript"></script>
<script src="front/js/Open_Sans_Light_300.font.js" type="text/javascript"></script> 
<script src="front/js/Open_Sans_Semibold_600.font.js" type="text/javascript"></script>  
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
</head>
<body id="page3">
<!-- header -->
	<div class="bg">
		<div class="main">
			<header>
				<div class="row-1">
					<h1>
						<a class="logo" href="front/pages/index.jsp">Point.co</a>
						<strong class="slog">The most creative ideas</strong>
					</h1>
					<form id="search-form" action="" method="post" enctype="multipart/form-data">
						<fieldset>
							<div class="search-form">					
								<input type="text" name="search" value="Type Keyword Here" onBlur="if(this.value=='') this.value='Type Keyword Here'" onFocus="if(this.value =='Type Keyword Here' ) this.value=''" />
								<a href="#" onClick="document.getElementById('search-form').submit()">Search</a>									
							</div>
						</fieldset>
					</form>
				</div>
				<div class="row-2">
					<nav>
						<ul class="menu">
						  <li><a  href="front/pages/index.jsp">Home Page</a></li>
						  <li><a  href="xpj/project_queryProject">Order
									and Invest</a></li>
						  <li><a class="active" href="service/service_queryFrontBigTypeDisplayShortService">Service</a></li>
						  <li><a href="ming/team_listTeam">Join Projects</a></li>
						  <li class="last-item"><a href="front/pages/contacts.jsp">Submit Project</a></li>
						</ul>
					</nav>
				</div>
			</header>
<!-- content --><div class="ic">More Website Templates @ <a href="http://www.cssmoban.com/" >网页模板</a>!</div>
			<section id="content">
				<div id="main">
		
		<s:iterator value="serDisplayList">
			<div class="medium">
				<div class="top">
					<div id="topleft">
						<a
							href="service/service_queryFrontBigTypeShortService?nowPage=1&type_id=<s:property
								value="bigtype.bigtype_id" />"
							target="_blank"><s:property value="bigtype.bigtype_name" />
						</a>
					</div>

					<div id="topright">
						<span>热门推荐：</span>
						<s:iterator value="smallTypelist" status="st">
					
							<a
								href="service/service_queryFrontSmallTypeShortService?nowPage=1&type_id=<s:property
								value="smalltype_id" />"
								target="_blank"><s:property value="smalltype_name" /> </a>
								<s:if test="!#st.last">
							<span>|</span>
							</s:if>
						
						</s:iterator>
						<span style=" margin-left:50px; padding-right:10px"><a
							href="service/service_queryFrontBigTypeShortService?nowPage=1&type_id=<s:property
								value="bigtype.bigtype_id" />"
							target="_blank">更多</a> </span>
					</div>
				</div>
				
				<div class="bottom">
					<s:iterator value="servicelist" status="st">
					<s:if test="#st.count==1">
						<div class="small" style=" margin-left:0px;text-align: left;">
							<div class="tinyimg">
								<a
									href="service/service_queryFrontDetailService?ser_id=<s:property value="ser_id"/>"
									target="_blank" title="<s:property value="com_name"/>"><img
									src="<s:property value="com_picture"/>" width="173"
									height="122" alt="<s:property value="com_name"/>" /> </a>
							</div>
							<div class="tinyname">名字：
								<a
									href="service/service_queryFrontDetailService?ser_id=<s:property value="ser_id"/>"
									target="_blank" title="<s:property value="com_name"/>"><s:property
										value="com_name" /> </a>
							</div>
							<div class="tinyintro">
								简介：
								<s:property value="short_info" />
							</div>
							<div class="tinygrade">
								分数：<span style="color:#ff6600">
								<s:property value="score" /></span>
							</div>
							<div class="tinyurl">
								<a href="<s:property value="com_url"/>" target="_blank">
									公司的链接</a>
							</div>
						</div>
						</s:if>
						<s:if test="#st.count!=1">
						<div class="small" >
							<div class="tinyimg">
								<a
									href="service/service_queryFrontDetailService?ser_id=<s:property value="ser_id"/>"
									target="_blank" title="<s:property value="com_name"/>"><img
									src="<s:property value="com_picture"/>" width="173"
									height="122" alt="<s:property value="com_name"/>" /> </a>
							</div>
							<div class="tinyname">名字：
								<a
									href="service/service_queryFrontDetailService?ser_id=<s:property value="ser_id"/>"
									target="_blank" title="<s:property value="com_name"/>"><s:property
										value="com_name" /> </a>
							</div>
							<div class="tinyintro">
								简介：
								<s:property value="short_info" />
							</div>
							<div class="tinygrade">
								分数：<span style=" color:#ff6600">
								<s:property value="score" /></span>
							</div>
							<div class="tinyurl">
								<a href="<s:property value="com_url"/>" target="_blank">
									公司的链接</a>
							</div>
						</div>
						</s:if>
					</s:iterator>
					
				</div>
			</div>
		</s:iterator>
	
		
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
									<dt><span>Country:</span>USA</dt>
									<dd><span>City:</span>San Diego</dd>
									<dd><span>Address:</span>Beach st. 54</dd>
									<dd><span>Email:</span><a href="#">Miguelyu@gmail</a></dd>
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
									<strong class="footer-logo">天鉴<strong>Tjian.org</strong></strong>
									<strong class="phone"><strong>Toll Free:</strong> 1-800-567-8934</strong>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="row-bot">
					<div class="aligncenter">
						<p class="p0">Copyright © 2014 天鉴网 Tjian.org</p>
						 Reserved by <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">天使投资品鉴联合会</a> <script type="text/javascript">var cnzz_protocol = (("https:" == document.location.protocol) ? " https://" : " http://");document.write(unescape("%3Cspan id='cnzz_stat_icon_1000354874'%3E%3C/span%3E%3Cscript src='" + cnzz_protocol + "s22.cnzz.com/z_stat.php%3Fid%3D1000354874%26show%3Dpic' type='text/javascript'%3E%3C/script%3E"));</script><br>
						<!-- {%FOOTER_LINK} -->
					</div>
				</div>
			</footer>
		</div>
	</div>
	<script type="text/javascript"> Cufon.now(); </script>
</body>
</html>