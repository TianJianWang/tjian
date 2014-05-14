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
<script type="text/javascript" src="front/js/jquery-1.6.min.js"></script>
<script src="front/js/cufon-yui.js" type="text/javascript"></script>
<script src="front/js/cufon-replace.js" type="text/javascript"></script>
<script src="front/js/Open_Sans_400.font.js" type="text/javascript"></script>
<script src="front/js/Open_Sans_Light_300.font.js" type="text/javascript"></script> 
<script src="front/js/Open_Sans_Semibold_600.font.js" type="text/javascript"></script>  
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

</head>
<body id="page1">
<!-- header -->
	<div class="bg">
		<div class="main">
			<header>
				<div class="row-1">
					<h1>
						<a class="logo" href="front/pages/index.jsp">梦塔Mengta.org</a>
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
						  <li><a class="active" href="front/pages/index.jsp">Home Page</a></li>
						  <li><a href="front/pages/list.jsp">Order and Invest</a></li>
						  <li><a href="front/pages/services.jsp">Audit Accounts</a></li>
						  <li><a href="front/pages/products.jsp">Join Projects</a></li>
						  <li class="last-item"><a href="front/pages/contacts.jsp">Submit Project</a></li>
						</ul>
					</nav>
				</div>
				<div class="row-3">
					<div class="slider-wrapper">
						<div class="slider">
						  <ul class="items">
							<li><img src="front/images/slider-img1.jpg" alt="">
								<strong class="banner">
									<strong class="b1">our style is</strong>
									<strong class="b2">Cooperation</strong>
									<strong class="b3">公共合作创造历史</strong>
								</strong>
							</li>
							<li><img src="front/images/slider-img2.jpg" alt="">
								<strong class="banner">
									<strong class="b1">our aim is</strong>
									<strong class="b2">Uniting</strong>
									<strong class="b3">兴趣相投者联合起来</strong>
								</strong>
							</li>
							<li><img src="front/images/slider-img3.jpg" alt="">
								<strong class="banner">
									<strong class="b1">encourage</strong>
									<strong class="b2">Innovation</strong>
									<strong class="b3">帮助每一个人进步是文明的使命</strong>
								</strong>
							</li>
						  </ul>
						  <a class="prev" href="#">prev</a>
						  <a class="next" href="#">prev</a>
						</div>
					</div>
				</div>
			</header>
<!-- content --><div class="ic">More Website Templates @ <a href="http://www.cssmoban.com/" >网页模板</a>!</div>
			<section id="content">
				<div class="padding">
					<div class="box-bg margin-bot">
						<div class="wrapper">
							<div class="col-1">
								<div class="box first">
									<div class="pad">
										<div class="wrapper indent-bot">
											<strong class="numb img-indent2">01</strong>
											<div class="extra-wrap">
												<h3 class="color-1"><strong>Careful</strong>Analysis</h3>
											</div>
										</div>
										<div class="wrapper">
											<a class="button img-indent-r" href="#">>></a>
											<div class="extra-wrap">
												The most of the most professional <br/>最多的最专业人士评价.
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
												<h3 class="color-2"><strong>Quick</strong>Research</h3>
											</div>
										</div>
										<div class="wrapper">
											<a class="button img-indent-r" href="#"></a>
											<div class="extra-wrap">
												The quickest for the most outstanding creative <br/>最快的最优秀创意孵化.
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
												<h3 class="color-3"><strong>New</strong>Strategies</h3>
											</div>
										</div>
										<div class="wrapper">
											<a class="button img-indent-r" href="#">>></a>
											<div class="extra-wrap">
												The most transparent and the most trusted finances <br/>最透明最可信的财务管理.
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="wrapper">
						<div class="col-3">
							<div class="indent">
								<h2>Our Mission</h2>
								<p class="color-4 p1">We'll show that history is always made by the masses of the people!	<br/>
								我们将再一次证明 历史——从来都是人民群众创造的！ <br/>
								We will liberate ourselves in economics!<br/>您是否曾辗转反侧，因为Good idea燃起使命？<br/>您是否曾备受煎熬，因为Good idea缺乏经济基础？ <br/>您是否曾摸爬滚打，所以希望英雄之气魄代代相传？<br/>起来，一起来，用我们的血肉筑起我们新的联盟，向着心中的理想，前进！</p>
								<div class="wrapper">
									<figure class="img-indent3"><img src="images/page1-img1.png" alt="" /></figure>
									<div class="extra-wrap">
										<div class="indent2">
											Cras placerat, risus ac porta auctor, dui neque varius libero, sed rutrum diam mauris sed lorem. Ut at risus eu dui pretium sodales proin fermentum condimentum eros quis tincidunt fraesent eleifend tempor nisi, in adipiscing felis molestie vitae. Sed et massa justo. Pellentesque turpis lorem, ornare sit amet vulputate at, consectetur 
										</div>
									</div>
								</div>
								<a class="button-2" href="#">Read More</a>
							</div>
						</div>
						<div class="col-2">
							<div class="block-news">
								<h3 class="color-4 p2">Recent News</h3>
								<div class="wrapper p2">
									<time class="tdate-1 fleft" datetime="2011-05-29"><strong>29</strong>may</time>
									<div class="extra-wrap">
										<h5>Utatse eudui pretium</h5> 
										sodales proin fermen<br>tum condimentum eros quis tincidunt fraesent eleifend tempor nisi, in adipiscing... <a href="#">more</a>
									</div>
								</div>
								<div class="wrapper">
									<time class="tdate-1 fleft" datetime="2011-05-24"><strong>24</strong>may</time>
									<div class="extra-wrap">
										<h5>Felis molestie vitae</h5> 
										Sed massa justo pellen<br>tesque turpis lorem, ornare sit amet vulpate at, consectetur vitae nunc... <a href="#">more</a>
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
