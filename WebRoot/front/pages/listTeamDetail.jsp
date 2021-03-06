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
	<link rel="stylesheet" href="front/css/bootstrap.css">
<link rel="stylesheet" href="front/css/reset.css" type="text/css"
	media="screen">
<link rel="stylesheet" href="front/css/style.css" type="text/css"
	media="screen">
<link rel="stylesheet" href="front/css/layout.css" type="text/css"
	media="screen">

	
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
				<%@ include file="top.jsp" %>
				<div class="row-2">
					<nav>
						<ul class="menu">
							<li><a href="front/pages/index.jsp">Home Page</a></li>
							<li><a href="xpj/project_queryProject">Order
									and Invest</a></li>
							<li><a href="front/pages/services.jsp">Audit Accounts</a></li>
							<li><a  class="active" href="ming/team_listTeam">Join Projects</a></li>
							<li class="last-item"><a href="contacts.html">Submit
									Project</a></li>
						</ul>
					</nav>
				</div>
			</header>
			<!-- content -->
			<%@ include file="listTeamDetailcon.jsp" %>
			<!-- footer -->
			<%@ include file="footer.jsp" %>
		</div>
	</div>
	<script src="front/js/jquery-2.1.0.min.js"></script>
	<script src="front/js/bootstrap.js"></script>

	<script type="text/javascript">
		Cufon.now();
	</script>
</body>
</html>

