<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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
<style type="text/css">
body {
	font-size: 14px;
}
.bb{
	color:#000;
	text-align:center;
	font-size: 38px;
	font-weight: bolder;
}
.kuan {
	width: 450px;
	height:35px;
}

a{
	 text-decoration: none;
	 }


</style>

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
<!-- header -->
	<div class="bg">
		<div class="main">
			<header>
				<div class="row-1">
					<h1>
						<a class="logo" href="index.html">Point.co</a>
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
						  <li><a href="index.html">Home Page</a></li>
						  <li><a class="active" href="news.html">Order and Invest</a></li>
						  <li><a href="services.html">Audit Accounts</a></li>
						  <li><a href="products.html">Join Projects</a></li>
						  <li class="last-item"><a href="contacts.html">Submit Project</a></li>
						</ul>
					</nav>
				</div>
			</header>
<!-- content --><div class="ic">More Website Templates @ <a href="http://www.cssmoban.com/" >网页模板</a>!</div>
			<section id="content">
				<div class="padding">
					<div class="wrapper p4">
						<div class="col-3">
						  <div class="indent">
						   
                            
                            
                            <div class="cont11">

<form  name="finance_item" action="bianjizisuccess.html">
<br/><br/><br/>
 <p class="bb">编辑子账单</p>
 <br/> <br/>

  <table width="600" align="center">
		<input class="kuan" type="hidden" name="method" value="">
			<tr>
				<td width="107" height="60"><div align="right">经办人：</div></td>
			  <td width="281"><input class="kuan" type="text" name="item_person" id="item_personId" /></td>
			</tr>
             <td width="107" height="60"><div align="right">借贷标志：</div></td>
			   <td width="281"><select name="finance_type" id="finance_typeId" >
                <option name="1"  >支持</option>
                <option name="2"  >支出</option>
                </select></td>
	  </tr>
			<tr>
				<td width="107" height="60"><div align="right">金额：</div></td>
			  <td width="281"><input class="kuan" type="text" name="item_money" id="item_moneyId" /></td>
			</tr>
            <tr>
				<td width="107" height="60"><div align="right">时间：</div></td>
			  <td width="281">
              
              <input class="kuan" type="text" name="item_time" id="item_timeId" /></td>
			</tr>
            <tr>
				<td width="107" height="86"><div align="right">用途：</div></td>
			  <td width="281">
              <textarea cols="30" rows="5" name="item_thing" id="item_thingId"></textarea>
              </td>
	  </tr>
			<tr>
				<td width="107" height="60"><div align="right">发票图片：</div></td>
			  <td width="281"><input class="kuan" type="file" name="invoice_pic" id="invoice_picId" /></td>
			</tr>
<tr>
				<td height="60" colspan="2" align="center">
                  <br />
                 <input type="submit" value="提交子账单" style="background-color:#DC082B; width: 150px;height: 35px;color:#FFF;font-size: 18px;font-weight: bold;">
                </td>
			</tr>
		</table>
  </form>

</div>
                            
                            
							</div>
						</div>
						<div class="col-4">
							<div class="block-news">
								<h3 class="color-4 p2">Archive</h3>
								<div class="wrapper indent-bot">
									<ul class="list-2">
										<li><a href="#">May 2014</a></li>
										<li><a href="#">April 2014</a></li>
										<li><a href="#">March 2014</a></li>
										<li><a href="#">February 2014</a></li>
										<li><a href="#">January 2014</a></li>
										<li><a href="#">December 2010</a></li>
										<li><a href="#">November 2010</a></li>
										<li><a href="#">October 2010</a></li>
										<li><a href="#">September 2010</a></li>
										<li><a href="#">August 2010</a></li>
										<li><a href="#">July 2010</a></li>
										<li><a href="#">June 2010</a></li>
									</ul>
								</div>
								<a class="button-2" href="#">Previous Years</a>
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
									<dd><span>Email:</span><a href="#">miguelyu@gmail</a></dd>
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

