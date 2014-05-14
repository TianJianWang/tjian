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

</head>
<body id="page4">
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
							<div class="search-form">
								<input type="text" name="search" value="Type Keyword Here"
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
							<li><a href="front/pages/list.jsp">Order and Invest</a></li>
							<li><a href="front/pages/services.jsp">Audit Accounts</a></li>
							<li><a class="active" href="front/pages/products.jsp">Join Projects</a></li>
							<li class="last-item"><a href="front/pages/contacts.jsp">Submit
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
					<div class="wrapper margin-bot">
						<div class="col-3">
							<div class="indent">
								<h2>Our Products</h2>
								<p class="color-4">
									Quas molestias excepturi sint occaecati cupiditate non
									provident, similique suntulpa uis aute irure dolor in
									reprehenderit in voluptate velit esse cillum dolore eu fugiat
									qui est eligendi optio cumque nihil impedit quo minus idod
									maxime placeat facere possimus, omnis voluptas officia deserunt
									molli<br>tia animi, id est laborum et dolorum fuga.
								</p>
								<div class="wrapper p2">
									<figure class="img-indent">
										<img src="front/images/page4-img1.png" alt="" />
									</figure>
									<div class="extra-wrap">Harum quidem rerum facilis est et
										expedita distinctio. Nam libero tempore, cum soluta nobis est
										eligendi optio cumque nihil impedit quo minus idod maxime
										placeat facere possimus, omnis alias consequatur aut
										perferendis doloribus asperiores repellat. Lorem ipsum dolor
										sit amet, consectetur adipisicing elit voluptas assumenda.
										Eveniet ut et voluptates repudiandae sint et molestiae non
										recusandae. Itaquarum rerum xcepteur sint occaecat cupidatat
										non proiapiente delectusut reiciendis dent sunt in.</div>
								</div>
								Veniet ut et voluptates repudiandae sint et molestiae non
								recusandae. Itaquarum rerum xcepteur sint occaecat cupidatat non
								proident, sunt in culpa qui officia hic tenetur sapiente
								delectusut reici<br>endis. Voluptatibus maiores alias
								consequatur aut perferendis doloribus asperiores repellat. Lorem
								ipsum dolor sit amet, consectetur adipisicing elit, sed do
								eiusmod tempor incididunt ut labore et dolore magna aliquaenim
								ad minim veniam, quis nostrud exercitation ullamco laboris nisi
								ut aliquip ex ea commodo consequat. Duis aute irure dolor in
								reprehenderit in voluptate velit esse cillum dolore eu fugiat
								nulla pariatur. Excepteur sint occaecat cupidatat non proident,
								sunt in culpa qui officia deserunt mollit anim id est laborum.
							</div>

						</div>
						<div class="col-4">
							<div class="block-news">
								<h3 class="color-4 p2">Products List</h3>
								<ul class="list-2">
									<li><a href='1229160101.htm'>1229160101</a> <a
										href='1229160101.htm'>王军超</a> <a href='1229160127.htm'>1229160127</a>
										<a href='1229160127.htm'>乔占科</a>
									<li><a href='1229160102.htm'>1229160102</a> <a
										href='1229160102.htm'>栗铭</a>&nbsp;&nbsp;&nbsp; <a
										href='1229160128.htm'>1229160128</a> <a href='1229160128.htm'>金太</a>
									</li>
									<li><a href='1229160103.htm'>1229160103</a> <a
										href='1229160103.htm'>李俊超</a> <a href='1229160129.htm'>1229160129</a>
										<a href='1229160129.htm'>胡鹏飞</a>
									<li><a href='1229160104.htm'>1229160104</a> <a
										href='1229160104.htm'>于万鑫</a> <a href='1229160130.htm'>1229160130</a>
										<a href='1229160130.htm'>刑颜辉</a>
									<li><a href='1229160105.htm'>1229160105</a> <a
										href='1229160105.htm'>赵东海</a> <a href='1229160131.htm'>1229160131</a>
										<a href='1229160131.htm'>李赏</a>
									<li><a href='1229160106.htm'>1229160106</a> <a
										href='1229160106.htm'>李书祥</a> <a href='1229160132.htm'>1229160132</a>
										<a href='1229160132.htm'>陈镇耿</a>
									<li><a href='1229160107.htm'>1229160107</a> <a
										href='1229160107.htm'>晁瑞明</a> <a href='1229160133.htm'>1229160133</a>
										<a href='1229160133.htm'>刘一凡</a>
									<li><a href='1229160108.htm'>1229160108</a> <a
										href='1229160108.htm'>王龙韬</a> <a href='1229160134.htm'>1229160134</a>
										<a href='1229160134.htm'>张帅霞</a>
									<li><a href='1229160109.htm'>1229160109</a> <a
										href='1229160109.htm'>成志杰</a> <a href='1229160135.htm'>1229160135</a>
										<a href='1229160135.htm'>王宇菲</a>
									<li><a href='1229160110.htm'>1229160110</a> <a
										href='1229160110.htm'>付博冉</a> <a href='1229160136.htm'>1229160136</a>
										<a href='1229160136.htm'>吴晗</a>
									<li><a href='1229160111.htm'>1229160111</a> <a
										href='1229160111.htm'>翟嘉伟</a> <a href='1229160138.htm'>1229160138</a>
										<a href='1229160138.htm'>黄丽娜</a>
									<li><a href='1229160112.htm'>1229160112</a> <a
										href='1229160112.htm'>史金波</a> <a href='1229160139.htm'>1229160139</a>
										<a href='1229160139.htm'>翁时菊</a>
									<li><a href='1229160113.htm'>1229160113</a> <a
										href='1229160113.htm'>李康康</a> <a href='1229160140.htm'>1229160140</a>
										<a href='1229160140.htm'>肖慧云</a>
									<li><a href='1229160114.htm'>1229160114</a> <a
										href='1229160114.htm'>李冉</a>&nbsp;&nbsp;&nbsp; <a
										href='1229160141.htm'>1229160141</a> <a href='1229160141.htm'>曹瑞丽</a>
									<li><a href='1229160115.htm'>1229160115</a> <a
										href='1229160115.htm'>李东凯</a> <a href='1229160142.htm'>1229160142</a>
										<a href='1229160142.htm'>王亚利</a>
									<li><a href='1229160116.htm'>1229160116</a> <a
										href='1229160116.htm'>毛攀峰</a> <a href='1229160143.htm'>1229160143</a>
										<a href='1229160143.htm'>张燕</a>
									<li><a href='1229160117.htm'>1229160117</a> <a
										href='1229160117.htm'>毛朋威</a> <a href='1229160144.htm'>1229160144</a>
										<a href='1229160144.htm'>贾科培</a>
									<li><a href='1229160118.htm'>1229160118</a> <a
										href='1229160118.htm'>陈明辉</a> <a href='1229160145.htm'>1229160145</a>
										<a href='1229160145.htm'>陈亚楠</a>
									<li><a href='1229160119.htm'>1229160119</a> <a
										href='1229160119.htm'>陈德林</a> <a href='1229160146.htm'>1229160146</a>
										<a href='1229160146.htm'>李亚梅</a>
									<li><a href='1229160120.htm'>1229160120</a> <a
										href='1229160120.htm'>张凯</a>&nbsp;&nbsp;&nbsp; <a
										href='1229160147.htm'>1229160147</a> <a href='1229160147.htm'>王贺玲</a>
									<li><a href='1229160121.htm'>1229160121</a> <a
										href='1229160121.htm'>魏帅</a>&nbsp;&nbsp;&nbsp; <a
										href='1229160148.htm'>1229160148</a> <a href='1229160148.htm'>李莉</a>
									<li><a href='1229160122.htm'>1229160122</a> <a
										href='1229160122.htm'>李家波</a> <a href='1229160149.htm'>1229160149</a>
										<a href='1229160149.htm'>郑清丽</a>
									<li><a href='1229160123.htm'>1229160123</a> <a
										href='1229160123.htm'>酒亚军</a> <a href='1229160150.htm'>1229160150</a>
										<a href='1229160150.htm'>张艳</a>
									<li><a href='1229160124.htm'>1229160124</a> <a
										href='1229160124.htm'>郭真铭</a> <a href='1229160151.htm'>1229160151</a>
										<a href='1229160151.htm'>朱琼</a>
									<li><a href='1229160125.htm'>1229160125</a> <a
										href='1229160125.htm'>谷彦军</a> <a href='1229160152.htm'>1229160152</a>
										<a href='1229160152.htm'>刘秋月</a>
									<li><a href='1229160126.htm'>1229160126</a> <a
										href='1229160126.htm'>陈海林</a>
								</ul>
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
												The most of the most professional <br />最多的最专业人士评价.
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
												The quickest for the most outstanding creative <br />最快的最优秀创意孵化.
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
												The most transparent and the most trusted finances <br />最透明最可信的财务管理.
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
										<span>Email:</span><a href="#">Miguelyu@gmail</a>
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
									<strong class="footer-logo">天鉴<strong>Tjian.org</strong></strong>
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
	<script type="text/javascript">
		Cufon.now();
	</script>
</body>
</html>
