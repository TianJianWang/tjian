<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"  %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html lang="en">
<head>
 <base href="<%=basePath%>">
<title></title>
<meta charset="utf-8">
<link href="front/css/bootstrap.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="front/css/reset.css" type="text/css" media="screen">
<link rel="stylesheet" href="front/css/style.css" type="text/css" media="screen">
<link rel="stylesheet" href="front/css/layout.css" type="text/css" media="screen">
<script type="text/javascript" src="front/js/jquery-1.6.min.js"></script>
<script src="front/js/cufon-yui.js" type="text/javascript"></script>
<script src="front/js/cufon-replace.js" type="text/javascript"></script>
<script src="front/js/Open_Sans_400.font.js" type="text/javascript"></script>
<script src="front/js/Open_Sans_Light_300.font.js" type="text/javascript"></script> 
<script src="front/js/Open_Sans_Semibold_600.font.js" type="text/javascript"></script>  
<script src="front/js/FF-cash.js" type="text/javascript"></script>
<link href="front/css/application.css" media="screen" rel="stylesheet" type="text/css" />
<link href="front/css/projects.css" media="screen" rel="stylesheet" type="text/css" />

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
<body id="page2">
<script src="front/js/bootstrap.js" type="text/javascript"></script>
<script src="front/js/jquery-2.1.0.min.js" type="text/javascript"></script>
<!-- header -->
	<div class="bg">
		<div class="main">
			<header>
				<%@ include file="top.jsp" %>
				<div class="row-2">
					<nav>
						<ul class="menu">
						  <li><a href="index.html">Home Page</a></li>
						  <li><a class="active" href="xpj/project_queryProject">Order and Invest</a></li>
						  <li><a href="services.html">Audit Accounts</a></li>
						  <li><a href="ming/team_listTeam">Join Projects</a></li>
						  <li class="last-item"><a href="contacts.html">Submit Project</a></li>
						</ul>
					</nav>
				</div>
			</header>
<!-- content -->
<%@ include file="xiangqingcon.jsp" %>
<!-- footer -->
			<%@ include file="footer.jsp" %>
		</div>
	</div>
	<script type="text/javascript"> Cufon.now(); </script>
	<script src="front/js/jquery-2.1.0.min.js"></script>
	<script src="front/js/bootstrap.js"></script>
</body>

</html>
<script src="front/js/application.js" type="text/javascript"></script>
<script src="front/js/projects.js" type="text/javascript"></script>
