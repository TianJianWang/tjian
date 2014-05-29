<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s"  uri="/struts-tags"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">   
    <title>天鉴网-用户注册</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<script src="front/js/jquery-2.1.1.js" type="text/javascript"></script>
<script src="front/js/bootstrap.js" type="text/javascript"></script>
<link href="front/css/bootstrap.css" rel="stylesheet" type="text/css">
<link href="front/css/h-countent.css" rel="stylesheet" type="text/css">
<link href="css/reset.css" rel="stylesheet" type="text/css" media="screen">
<link href="css/style.css" rel="stylesheet" type="text/css" media="screen">
<link href="css/layout.css" rel="stylesheet" type="text/css" media="screen">
<script src="js/jquery-1.6.min.js" type="text/javascript"></script>
<script src="js/cufon-yui.js" type="text/javascript"></script>
<script src="js/cufon-replace.js" type="text/javascript"></script>
<script src="js/Open_Sans_400.font.js" type="text/javascript"></script>
<script src="js/Open_Sans_Light_300.font.js" type="text/javascript"></script>
<script src="js/Open_Sans_Semibold_600.font.js" type="text/javascript"></script>
<script src="js/tms-0.3.js" type="text/javascript"></script>
<script src="js/tms_presets.js" type="text/javascript"></script>
<script src="js/jquery.easing.1.3.js" type="text/javascript"></script>
<script src="js/FF-cash.js" type="text/javascript"></script>

<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
 <body >



	<div class="bg">
		<div class="main">
			<header>
			<div class="row-1">
				<h1>
					<a class="logo" href="index.html">梦塔Mengta.org</a> <strong
						class="slog">The most creative ideas</strong>
				</h1>
				<span style="font-size: 14px;" >
				<c:if test="${empty sessionScope.User.email }">
				</c:if>
				<c:if test="${!empty sessionScope.User.email}">您好:<a href="user/UserAction_listUserByEmail?email=${sessionScope.User.email}"></a>${sessionScope.User.email }|<a
						href="user/UserAction_exitLogin">退出</a>
				</c:if>
				</span>
				<form id="search-form" action="" method="post" enctype="multipart/form-data">
					<fieldset>
						<div class="search-form" style="height: 30px;width: 208px">
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
					<li><a class="active" href="index.html">Home Page<br />主页</a>
					</li>
					<li><a href="#">Order and Invest<br />预订与投资</a>
					</li>
					<li><a href="%">Audit Accounts<br />进度审计</a>
					</li>
					<li><a href="#">Join Projects<br />加入项目</a>
					</li>
					<li class="#"><a href="contacts.html">Submit
							Project<br />发布项目</a>
					</li>
				</ul>
				</nav>
			</div>
			 
			<div class="row-3" style="margin-top: 20px" align="center" >
			     <center>
				<div class="slider-wrapper"  align="center">
					<div class="slider" align="center" >
						<form action="user/UserAction_updateUser" class="form-horizontal" style="background-color: white;width: 950px;height:380px;overflow: scroll;border-radius:2em;margin-left: 2px;margin-bottom: 10px;" role="form"  enctype="multipart/form-data" method="post" >
						          <input type="hidden" name="user.user_id" value='<s:property value="user.user_id" />'>
							<div class="form-group">
								<label for="inputEmail3" class="col-sm-2 control-label">邮箱：</label>
								<div class="col-sm-10">
									<input type="email" class="form-control" name="user.email" id="inputEmail"
										placeholder="Email" style="width: 50%" readonly="readonly"  value='<s:property value="user.email"/>'>
								</div>
							</div>
							<div class="form-group">
								<label for="inputPassword3" class="col-sm-2 control-label">密码:</label>
								<div class="col-sm-10">
									<input type="password" class="form-control" name="user.password" d="input1"
										placeholder="Password" style="width: 50%"  readonly="readonly"  value='<s:property value="user.password"/>'>
								</div>
							</div>
							<div class="form-group">
								<label for="inputPassword3" class="col-sm-2 control-label">昵称:</label>
								<div class="col-sm-10">
									<input type="text" class="form-control" name="user.nickname" id="input2"
										placeholder="昵称" style="width: 50%" value='<s:property value="user.nickname"/>'>
								</div>
							</div>
							<div class="form-group">
								<label for="inputPassword3" class="col-sm-2 control-label">真实姓名:</label>
								<div class="col-sm-10">
									<input type="text" class="form-control" name="user.realname" id="input3"
										placeholder="真实姓名" style="width: 50%" value='<s:property value="user.realname"/>'>
								</div>
							</div>
							<div class="form-group">
								<label for="inputPassword3" class="col-sm-2 control-label">身份证:</label>
								<div class="col-sm-10">
									<input type="text" class="form-control" name="user.idcard" id="input4"
										placeholder="身份证" style="width: 50%" value='<s:property value="user.idcard"/>'>
								</div>
							</div>
							<div class="form-group">
								<label for="inputPassword3" class="col-sm-2 control-label">地址:</label>
								<div class="col-sm-10">
									<input type="text" class="form-control" name="user.user_address" id="input5"
										placeholder="地址" style="width: 50%" value='<s:property value="user.user_address"/>'>
								</div>
							</div>
							
							<div class="form-group">
								<label for="inputPassword3" class="col-sm-2 control-label">个人图片:</label>
								<div class="col-sm-10">
								     <img alt="" src="${user.user_picture }" style="width: 50px;height: 50px">
								     <input type="file" name="imageService.image" >请选择要修改图片
					
									 
								</div>
							</div>
							<div class="form-group">
								<label for="inputPassword3" class="col-sm-2 control-label">专业:</label>
								<div class="col-sm-10">
									<input type="text" class="form-control" name="user.profession"   id="input5"
										placeholder="专业" style="width: 50%" value='<s:property value="user.profession"/>'>
								</div>
							</div>
							
							<div class="form-group">
								<label for="inputPassword3" class="col-sm-2 control-label">个人信息:</label>
								<div class="col-sm-10">
									<input type="text" class="form-control" name="user.user_info"   id="input6"
										placeholder="个人信息" style="width: 50%" value='<s:property value="user.user_info"/>'>
								</div>
							</div>			 
							<div class="form-group">
								<div class="col-sm-offset-2 col-sm-10">
									<button type="submit" class="btn btn-default">确认修改</button>
								</div>
							</div>
						</form>
						
					</div>
				</div>
				</center>
			</div>		
			</header>
			 

			<!-- content -->
			<div class="ic">
				More Website Templates @ <a href="http://www.cssmoban.com/">网页模板</a>!
			</div>
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
											<h3 class="color-1">
												<strong>Careful</strong>Analysis
											</h3>
										</div>
									</div>
									<div class="wrapper">
										<a class="button img-indent-r" href="rate.html">>></a>
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
										<a class="button img-indent-r" href="success.html"></a>
										<div class="extra-wrap">
											The quickest for the most outstanding creative <br />最快的最优秀创意孵化.
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
							<p class="color-4 p1">
								We'll show that history is always made by the masses of the
								people! <br /> 我们将再一次证明 历史——从来都是人民群众创造的！ <br /> We will liberate
								ourselves in economics!<br />您是否曾辗转反侧，因为Good idea燃起使命？<br />您是否曾备受煎熬，因为Good
								idea缺乏经济基础？ <br />您是否曾摸爬滚打，所以希望英雄之气魄代代相传？<br />起来，一起来，用我们的血肉筑起我们新的联盟，向着心中的理想，前进！
							</p>
							<div class="wrapper">
								<figure class="img-indent3">
								<img src="images/page1-img1.png" alt="" /></figure>
								<div class="extra-wrap">
									<div class="indent2">
										预售众筹——且行且珍惜<br /> 同行品鉴——煮酒论英雄<br /> 财务公开——让你看清楚<br />
										服务对接——人靠众人抬<br />

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
								<time class="tdate-1 fleft" datetime="2011-05-29">
								<strong>29</strong>may</time>
								<div class="extra-wrap">
									<h5>旗下梦塔网获千万级融资</h5>
									天鉴旗下在线教育与数字化教育资源交易平台Mengta.org梦塔网获千万级别融资，作为中国应用技术大学联盟教育资源公会的官方网站，其市场化运作模式逐渐明朗...
									<a href="#">more</a>
								</div>
							</div>
							<div class="wrapper">
								<time class="tdate-1 fleft" datetime="2011-05-24">
								<strong>24</strong>may</time>
								<div class="extra-wrap">
									<h5>黄淮学院商务中心孵化出新的电商项目</h5>
									驻马店晨钟生物科技赞助黄淮学院商务中心电商运营实习10万元，进行天罗伤流水的品牌内涵策划，并将持续跟进支持... <a
										href="#">more</a>
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
									<span>Country:</span>China
								</dt>
								<dd>
									<span>City:</span>Zhumadian
								</dd>
								<dd>
									<span>Address:</span>Kaiyuan st No.6
								</dd>
								<dd>
									<span>Email:</span><a href="#">Miguelyu@gmail</a>
								</dd>
							</dl>
						</div>
						<div class="col-2">
							<h4>Follow Us:</h4>
							<ul class="list-services">
								<li class="item-1"><a href="#">Facebook</a>
								</li>
								<li class="item-2"><a href="#">Twitter</a>
								</li>
								<li class="item-3"><a href="#">LinkedIn</a>
								</li>
							</ul>
						</div>
						<div class="col-3">
							<h4>College Division:</h4>
							<ul class="list-1">
								<li><a href="#">广州 SCUT SYSU</a>
								</li>
								<li><a href="#">上海 Fudan Tongji</a>
								</li>
								<li><a href="#">北京 Tsinghua PKU</a>
								</li>
								<li><a href="#">河南 ZZU Henan</a>
								</li>
							</ul>
						</div>
						<div class="col-4">
							<div class="indent3">
								<strong class="footer-logo">天鉴<strong>Tjian.org</strong>
								</strong> <strong class="phone"><strong>Call Us:</strong>
									86-0396-2869-192</strong>
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
					<script type="text/javascript">var cnzz_protocol = (("https:" == document.location.protocol) ? " https://" : " http://");document.write(unescape("%3Cspan id='cnzz_stat_icon_1000354874'%3E%3C/span%3E%3Cscript src='" + cnzz_protocol + "s22.cnzz.com/z_stat.php%3Fid%3D1000354874%26show%3Dpic' type='text/javascript'%3E%3C/script%3E"));</script>
					<br>
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
