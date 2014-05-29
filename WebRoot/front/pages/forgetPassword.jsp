<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s"  uri="/struts-tags"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
  <head>
    <base href="<%=basePath%>">
    
   <title>天鉴网->忘记密码</title>
<meta charset="utf-8">
<meta property="qc:admins" content="3337027671166727" />
<script src="front/js/jquery-2.1.1.js" type="text/javascript"></script>
<script src="front/js/user.js" type="text/javascript"></script>
<script src="front/js/bootstrap.js" type="text/javascript"></script>
<link href="front/css/h-countent.css" rel="stylesheet" type="text/css">
<link href="front/css/bootstrap.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="css/reset.css" type="text/css" media="screen">
<link rel="stylesheet" href="css/style.css" type="text/css" media="screen">
<link rel="stylesheet" href="css/layout.css" type="text/css" media="screen">
<link rel="stylesheet" href="front/css/user.css" type="text/css" >
<script type="text/javascript" src="js/jquery-1.6.min.js"></script>
<script src="js/cufon-yui.js" type="text/javascript"></script>
<script src="js/cufon-replace.js" type="text/javascript"></script>
<script src="js/Open_Sans_400.font.js" type="text/javascript"></script>
<script src="js/Open_Sans_Light_300.font.js" type="text/javascript"></script> 
<script src="js/Open_Sans_Semibold_600.font.js" type="text/javascript"></script>  
<script type="text/javascript" src="js/tms-0.3.js"></script>
<script type="text/javascript" src="js/tms_presets.js"></script> 
<script type="text/javascript" src="js/jquery.easing.1.3.js"></script> 
<script src="js/FF-cash.js" type="text/javascript"></script>
<script src="http://a.tbcdn.cn/apps/top/x/sdk.js?appkey=21784827"></script>
 <script type="text/javascript">
  function createCode(){ 
			
			var code ;
		code = new Array();
		var codeLength = 4;//验证码的长度
		var checkCode = document.getElementById("checkCode");
		checkCode.value = "";

		var selectChar = new Array(2,3,4,5,6,7,8,9,'A','B','C','D','E','F','G','H','J','K','L','M','N','P','Q','R','S','T','U','V','W','X','Y','Z');

		for(var i=0;i<codeLength;i++) {
		   var charIndex = Math.floor(Math.random()*32);
		   code +=selectChar[charIndex];
		}
		if(code.length != codeLength){
		   createCode();
		}
		checkCode.value = code;
		}

		function validate () {
		var inputCode = document.getElementById("input1").value.toUpperCase();

		if(inputCode.length <=0) {
		   alert("请输入验证码！");
		   return false;
		}
		else if(inputCode != code ){
		   alert("验证码输入错误！");
		   createCode();
		   return false;
		}
		else {
		   alert("成功！");
		   return true;
		}
		}
  </script>
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
 
<body id="page1" style="margin-left: auto;margin-right: auto;margin-left: 130px" onload="createCode();">

<!-- header -->
	<div class="bg">
		<div class="main">
			<header>
				<div class="row-1">
					<h1>
						<a class="logo" href="index.html">梦塔Mengta.org</a>
						<strong class="slog">The most creative ideas</strong>
					</h1>
<script type="text/javascript" src="http://qzonestyle.gtimg.cn/qzone/openapi/qc_loader.js" data-appid="101084219" data-redirecturi="http://tjian.org/qq.jsp" charset="utf-8" ></script>

<span id="qqLoginBtn"></span>
<script type="text/javascript">
 QC.Login({
  btnId : "qqLoginBtn",//插入按钮的html标签id
  size : "A_M",//按钮尺寸
  scope : "get_user_info",//展示授权，全部可用授权可填 all
  display : "pc"//应用场景，可选
 });
</script>

<span class="top-login-btn-container"></span>
<script>
    TOP.ui("login-btn", {
      container:".top-login-btn-container",
      type:"3,1",
      callback:{
         login:function(user){alert(user)},
         logout:function(){}
    }
    });
</script>
					<form id="search-form" action="" method="post" enctype="multipart/form-data">
						<fieldset>
							<div class="search-form"  style="height: 38px;width: 208px">					
								<input type="text" name="search" value="Type Keyword Here" onBlur="if(this.value=='') this.value='Type Keyword Here'" onFocus="if(this.value =='Type Keyword Here' ) this.value=''"  />
								<a href="#" onClick="document.getElementById('search-form').submit()">Search</a>									
							</div>
						</fieldset>
					</form>
				</div>
				<div class="row-2">
					<nav>
						<ul class="menu">
						  <li><a class="active" href="index.html">Home Page<br/>主页</a></li>
						  <li><a href="news.html">Order and Invest<br/>预订与投资</a></li>
						  <li><a href="services.html">Audit Accounts<br/>进度审计</a></li>
						  <li><a href="products.html">Join Projects<br/>加入项目</a></li>
						  <li class="last-item"><a href="contacts.html">Submit Project<br/>发布项目</a></li>
						</ul>
					</nav>
				</div>
				<div class="row-3" >
					<div class="slider-wrapper"  >
						<div class="slider"> 
						  <form action="user/UserAction_forgetPassword" class="form-horizontal"  
						  role="form"  enctype="multipart/form-data" method="post" style="margin-top: 70px;margin-left: 50px;padding-left: 50px">
							<div class="form-group">
								<label for="inputEmail3" class="col-sm-2 control-label">邮箱：</label>
								<div class="col-sm-10">
									<input type="email" class="form-control" name="user.email" id="inputEmail"
										placeholder="Email" style="width: 50%"  value="" />
								</div>
							</div>
							<div class="form-group">
								<label for="inputPassword3" class="col-sm-2 control-label">真实姓名:</label>
								<div class="col-sm-10">
									<input type="text" class="form-control" name="user.realname" d="input1"
										placeholder="真实姓名" style="width: 50%"    value=""/>
								</div>
							</div>
							 
							 <div class="form-group">
								<label for="inputPassword3" class="col-sm-2 control-label">校验码:</label>
								<div class="col-sm-10">
								<input type="text" class="form-control" name="user.realname" id="Code"
										placeholder="校验码" style="width: 50%;margin-bottom: 20px"  onblur="validate();"   value=""/>
 
                            <input type="button" id="checkCode" class="code" style="width:100px;height: 30px;float: none;" onclick="createCode()"  /> 
                        
                            <input type="button" value="看不清，还一张" onclick="createCode()" />
										<span id="repasswordError"></span>
								</div>
							</div>
							 
							<div class="form-group"> 
								<div class="col-sm-offset-2 col-sm-10">
									<button type="submit" class="btn btn-default">确认提交</button>
								</div>
							</div>
						</form>
						
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
											<a class="button img-indent-r" href="rate.html">>></a>
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
											<a class="button img-indent-r" href="success.html"></a>
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
											<a class="button img-indent-r" href="returns.html">>></a>
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
预售众筹——且行且珍惜<br/>
同行品鉴——煮酒论英雄<br/>
财务公开——进度全清楚<br/>
服务对接——人靠众人抬<br/>
 
										</div>
									</div>
								</div>
								<a class="button-2" href="services.html">Read More</a>
							</div>
						</div>
						<div class="col-2">
							<div class="block-news">
								<h3 class="color-4 p2">Recent News</h3>
								<div class="wrapper p2">
									<time class="tdate-1 fleft" datetime="2011-05-29"><strong>29</strong>may</time>
									<div class="extra-wrap">
										<h5>旗下梦塔网获千万级融资</h5> 
										天鉴旗下在线教育与数字化教育资源交易平台Mengta.org梦塔网获千万级别融资，作为中国应用技术大学联盟教育资源公会的官方网站，其市场化运作模式逐渐明朗... <a href="#">more</a>
									</div>
								</div>
								<div class="wrapper">
									<time class="tdate-1 fleft" datetime="2011-05-24"><strong>24</strong>may</time>
									<div class="extra-wrap">
										<h5>黄淮学院商务中心孵化出新的电商项目</h5> 
										驻马店晨钟生物科技赞助黄淮学院商务中心电商运营实习10万元，进行天罗伤流水的品牌内涵策划，并将持续跟进支持... <a href="#">more</a>
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
									<dt><span>Country:</span>China</dt>
									<dd><span>City:</span>Zhumadian</dd>
									<dd><span>Address:</span>Kaiyuan st No.6</dd>
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
									<strong class="phone"><strong>Call Us:</strong> 86-0396-2869-192</strong>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="row-bot">
					<div class="aligncenter">
						<p class="p0">Copyright © 2014 天鉴网 Tjian.org</p>
						 Reserved by <a href="http://www.tjian.org" title="天鉴网" target="_blank">天使投资品鉴联合会</a> <script type="text/javascript">var cnzz_protocol = (("https:" == document.location.protocol) ? " https://" : " http://");document.write(unescape("%3Cspan id='cnzz_stat_icon_1000354874'%3E%3C/span%3E%3Cscript src='" + cnzz_protocol + "s22.cnzz.com/z_stat.php%3Fid%3D1000354874%26show%3Dpic' type='text/javascript'%3E%3C/script%3E"));</script><br>
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
