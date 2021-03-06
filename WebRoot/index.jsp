<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

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

<title>天鉴网--大学生自助创业平台</title>
<meta charset="utf-8"/>
<meta property="qc:admins" content="3337027671166727" />
<meta http-equiv="keywords" content="天鉴,自助创业,创投"/>
<meta http-equiv="description" content="天鉴网是整合大学知识分子力量，以创意促进文明发展的交流平台，集众筹、鉴定、协作与一体，应用技术大学联盟官方平台，创意与创投门户"/>
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link rel="stylesheet" href="front/css/reset.css" type="text/css"
	media="screen">
<link rel="stylesheet" href="front/css/style.css" type="text/css"
	media="screen">
<link rel="stylesheet" href="front/css/layout.css" type="text/css"
	media="screen">
<script type="text/javascript" src="front/js/jquery-1.6.min.js"></script>
<script src="front/js/cufon-yui.js" type="text/javascript"></script>
<script src="front/js/cufon-replace.js" type="text/javascript"></script>
<script src="front/js/Open_Sans_400.font.js" type="text/javascript"></script>
<script src="front/js/Open_Sans_Light_300.font.js"
	type="text/javascript"></script>
<script src="front/js/Open_Sans_Semibold_600.font.js"
	type="text/javascript"></script>
<script type="text/javascript" src="front/js/tms-0.3.js"></script>
<script type="text/javascript" src="front/js/tms_presets.js"></script>
<script type="text/javascript" src="front/js/jquery.easing.1.3.js"></script>
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
<script>  
function showmodal()  
{  
 var ret = window.showModalDialog("front/pages/login.jsp?temp="+Math.random());  
 
}  

	  function isLogin(email){
	    if(email==null||email==""){
	    alert("您还没有登陆，请登录！");
	    return false;
	    }else{
	    return true;
	    }
	  }
	
	
</script> 
</head>
<body id="page1">
	
	<div class="bg">
		<div class="main">
		<!--  header -->
		<header>
		<%@ include file="front/pages/top.jsp" %>
		<div class="row-2">
					<nav>
						<ul class="menu">
						  <li><a class="active" href="index.jsp">Home Page<br/>主页</a></li>
						  <li><a href="xpj/project_queryProject">Order and Invest<br/>预订与投资</a></a></li>
						  <li><a href="service/service_queryFrontBigTypeDisplayShortService">Service<br/>服务</a></li>
						  <li><a href="ming/team_listTeam">Join Projects<br/>加入项目</a></li>
						  <li class="last-item"><a href="front/pages/submit.jsp" onclick="return isLogin(${User.email})">Submit idea<br/>发布创意</a></li>
						</ul>
					</nav>
				</div>
		<%@ include file="front/pages/picroll.jsp" %>
		</header>
		
		<!-- content -->
		<%@ include file="front/pages/content.jsp" %>
		<!-- footer -->
		<%@ include file="front/pages/footer.jsp" %>
		</div>
	</div>
	<script type="text/javascript"> Cufon.now(); </script>
	<script type="text/javascript">
		$(function(){
			$('.slider')._TMS({
				prevBu:'.prev',
				nextBu:'.next',
				playBu:'.play',
				duration:800,
				easing:'easeOutQuad',
				preset:'simpleFade',
				pagination:false,
				slideshow:3000,
				numStatus:false,
				pauseOnHover:true,
				banners:true,
				waitBannerAnimation:false,
				bannerShow:function(banner){
					banner
						.hide()
						.fadeIn(500)
				},
				bannerHide:function(banner){
					banner
						.show()
						.fadeOut(500)
				}
			});
		})
	</script>
</body>
</html>