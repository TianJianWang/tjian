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
<script src="front/front/js/cufon-yui.js" type="text/javascript"></script>
<script src="front/js/cufon-replace.js" type="text/javascript"></script>
<script src="front/js/Open_Sans_400.font.js" type="text/javascript"></script>
<script src="front/js/Open_Sans_Light_300.font.js" type="text/javascript"></script> 
<script src="front/js/Open_Sans_Semibold_600.font.js" type="text/javascript"></script>  
<script src="front/js/FF-cash.js" type="text/javascript"></script>
<link href="front/css/application.css" media="screen" rel="stylesheet" type="text/css" />
<link href="front/css/projects.css" media="screen" rel="stylesheet" type="text/css" />
<link href="front/css/bootstrap.css" rel="stylesheet" type="text/css" />
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
                  
                  
                  
                  
                  <div class="layout-c">
  <div id="project_intro" class="projects-home">
<div id="biaoqian"><span>
<a href="/projects">项目</a> / <a href="/projects/discover/0_927158_0_0">时尚科技</a> / <a href="">"Shield 宝儿"智能体温计</a></span>
<span class="two">
</span>
</div>
<div class="projects-home-left">
<div class="projects-home-synopsis-open">
<div class="projects-home-synopsis">
<div class="projects-home-left-top" id="project_poster_video">

<img src="front/images/front/bb.jpg">

</div>
<div class="projects-home-left-synopsis">
  zhelixie
  
  <ul class="nav nav-tabs" id="myTab">
							<li class="active"><a href='#first' data-toggle="tab">firstPane</a></li>
							<li ><a href='#second' data-toggle="tab">secondPane</a></li>
		</ul>
		<div class="tab-content">
							<div class="tab-pane  active" id="first">
							
							
							
							111
							
							
							
							</div>
							
							
							<div class="tab-pane  " id="second">
							<div class="bs-example">
      <table class="table">
        <thead>
          <tr>
            <th>项目标题</th>
            <th>支持金额</th>
            <th>支出金额</th>
            <th>盈余</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td>黄淮学院</td>
            <td>￥22222</td>
            <td>￥22222</td>
            <td>￥2822</td>
          </tr>
        </tbody>
      </table>
      <div class="table table-bordered">
      <table class="table table-hover">
        <thead>
          <tr class="success">
            <th> 经办人</th>
			<th>借贷标志</th>
			<th>金额</th>
             <th>时间</th>
             <th>用途</th>
             <th>发票图片</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td>1</td>
            <td>Mark</td>
            <td>Otto</td>
            <td>@mdo</td>
            <td>Otto</td>
            <td><div style="width: 50px;">sssh</div></td>
          </tr>
          <tr>
            <td>2</td>
            <td>Jacob</td>
            <td>Thornton</td>
            <td>@fat</td>
            <td>Thornton</td>
            <td>@fat</td>
          </tr>
          <tr>
            <td>3</td>
            <td>Larry the Bird</td>
            <td>@twitter</td>
            <td>Larry the Bird</td>
            <td>@twitter</td>
            <td>Larry the Bird</td>
          </tr>
        </tbody>
      </table>
      </div>
    </div>
							
							
							</div>
							
		</div>
		<script>
			$(function() {
				$('#myTab a:last').tab('show')
			});
		</script>
  
  <!-- 账单 -->
  
  
     <!-- 账单 -->
    
    
  
  
  
</div>
</div>
</div>
</div>



<div class="projects-home-right">
<h1>rgtrrrytr</h1>
<h2><p>
jufhgfhdgfhghkfnskdnfklsmflkdnmlkmsfklmsdlfmklsmkfldsmfnmgkfdnbkdmgklsdjkfoejgksdfmkd
</p></h2>
<div class="projects-right-top-h">
<div class="sidebar-funding">
<div class="sidebar-money-raised-top">
<div class="sidebar-money-raised-num-t"><p>
还有 37 天 / 已筹到
</p></div>
<div class="sidebar-money-raised-num"><b><b>¥</b>118240</b></div>
</div>
<div class="sidebar-percentage">
<span class="sidebar-percentage-progress-span">591%</span>
<div style="width:100%;" class="sidebar-percentage-progress"></div>
</div>
</div>
<div class="sidebar-number-days">
<div class="sidebar-number-days-l">
<a href="/forums/project-343965" title="查看所有话题"><i>13</i><strong>话题</strong></a></div>
<div class="sidebar-number-days-m">
<a href="/projects/343965/backers" title="查看所有支持者"><i>340</i><strong>支持者</strong></a>
</div>
<div class="sidebar-number-days-r"><a href="/projects/343965/reports" title="查看项目报表"><span></span><strong>统计</strong></a></div>
</div>
</div>

<div class="project-by">
<div class="project-by-dotty">项目发起人</div>
<div class="project-by-img"><a href="/1207924" target="_blank">
<img src="" width="80" height="80"></a>
<div class="project-by-img-r"><a href="/1207924" class="project-by-img-r-author" target="_blank">宝儿智能温度计</a>
<div class="project-by-last-time">上次登录时间：2014/05/13
</div>
<div class="project-by-post">
<a href="/1207924" target="_blank">支持的项目：<span>0</span></a>
<a href="/1207924?filter=created" target="_blank">发起的项目：<span>1</span></a>
</div>
</div>
</div>
</div>

<div class="reward-options">
<ul>
<li class="support-amount">
支持 <b>¥</b>98
<span>（200 位支持者）</span>
</li>
<li class="supporter-number"><div class="supporter-limit">
<p>限额 200 位，剩余 0 位</p>
</div></li>
<li class="returns-contents"><p>dghghdgdfgvd</p>

<p>快来挑选宝宝喜欢的颜色吧！ （颜色请写在备注区，如无备注将随机发送）
</p></li>
<li class="returns-contents-img">
<a href="#preview" class="ui-popup-preview"><img src=""></a>
<a href="#preview" class="ui-popup-preview"><img src=""></a>
<a href="#preview" class="ui-popup-preview"><img src=""></a>
</li>
<li class="returns-contents-time">
<p>包邮（大陆地区）</p>
<p>预计回报发放时间：项目成功结束后30天内</p>
</li>
<li>
<div class="ui-button ui-button-special-disabled"><span><a href="#">限额已满</a></span></div>
</li>
</ul>
<ul>
<li class="support-amount">
支持 <b>¥</b>128
<span>（99 位支持者）</span>
</li>
<li class="supporter-number"><div class="supporter-limit">
<p>限额 100 位，剩余 1 位</p>
</div></li>
<li class="returns-contents"><p>gfhgfhhfghgh</p>

<p>快来挑选宝宝喜欢的颜色吧！（颜色请写在备注区，如无备注将随机发送）</p></li>
<li class="returns-contents-img">
<a href="" class="ui-popup-preview"><img src=""></a>
<a href="#preview" class="ui-popup-preview"><img src=""></a>
<a href="#preview" class="ui-popup-preview"><img src=""></a>
</li>
<li class="returns-contents-time">
<p>包邮（大陆地区）</p>
<p>预计回报发放时间：项目成功结束后30天内</p>
</li>
<li>
<div class="ui-button ui-button-special"><span><a href="" class=ui-popup-login ui-popup-open>支持<b>¥</b>128</a></span></div>
</li>
</ul>
<ul>
<li class="support-amount">
支持 <b>¥</b>248
<span>（6 位支持者）</span>
</li>
<li class="supporter-number"><div class="supporter-limit">
<p>限额 100 位，剩余 94 位</p>
</div></li>
<li class="returns-contents"><p>huytthgjgj</p>

<p>快来挑选宝宝喜欢的颜色吧！（颜色请写在备注区，如无备注将随机发送）</p></li>
<li class="returns-contents-img">
<a href="#" class="ui-popup-preview"><img src=""></a>
<a href="#" class="ui-popup-preview"><img src=""></a>
<a href="#" class="ui-popup-preview"><img src=""></a>
</li>
<li class="returns-contents-time">
<p>包邮（大陆地区）</p>
<p>预计回报发放时间：项目成功结束后30天内</p>
</li>
<li>
<div class="ui-button ui-button-special"><span><a href="" class=ui-popup-login ui-popup-open>支持<b>¥</b>248</a></span></div>
</li>
</ul>
<ul>
<li class="support-amount">
支持 <b>¥</b>360
<span>（8 位支持者）</span>
</li>
<li class="supporter-number"><div class="supporter-limit">
<p>限额 100 位，剩余 92 位</p>
</div></li>
<li class="returns-contents"><p>gjghjghjgg</p>

<p>快来挑选宝宝喜欢的颜色吧！（颜色请写在备注区，如无备注将随机发送）</p></li>
<li class="returns-contents-img">
<a href="#" class="ui-popup-preview"><img src=""></a>
<a href="#preview" class="ui-popup-preview"><img src=""></a>
<a href="#preview" class="ui-popup-preview"><img src=""></a>
</li>
<li class="returns-contents-time">
<p>包邮（大陆地区）</p>
<p>预计回报发放时间：项目成功结束后30天内</p>
</li>
<li>
<div class="ui-button ui-button-special"><span><a href="" class=ui-popup-login ui-popup-open>支持<b>¥</b>360</a></span></div>
</li>
</ul>
<ul>
<li class="support-amount">
支持 <b>¥</b>1800
<span>（10 位支持者）</span>
</li>
<li class="supporter-number"><div class="supporter-limit">
<p>限额 10 位，剩余 0 位</p>
</div></li>
<li class="returns-contents"><p>uyttrytrytry</p>

<p>快来挑选宝宝喜欢的颜色吧！（颜色请写在备注区，如无备注将随机发送）</p></li>
<li class="returns-contents-img">
<a href="#" class="ui-popup-preview"><img src=""></a>
<a href="#" class="ui-popup-preview"><img src=""></a>
<a href="#" class="ui-popup-preview"><img src=""></a>
</li>
<li class="returns-contents-time">
<p>包邮（大陆地区）</p>
<p>预计回报发放时间：项目成功结束后30天内</p>
</li>
<li>
<div class="ui-button ui-button-special-disabled"><span><a href="#">限额已满</a></span></div>
</li>
</ul>
<ul>
<li class="support-amount">
支持 <b>¥</b>1850
<span>（4 位支持者）</span>
</li>
<li class="supporter-number"><div class="supporter-limit">
<p>限额 9 位，剩余 5 位</p>
</div></li>
<li class="returns-contents"><p>huhfgfgfg</p></li>
<li class="returns-contents-img">
</li>
<li class="returns-contents-time">
<p>包邮（大陆地区）</p>
<p>预计回报发放时间：项目成功结束后30天内</p>
</li>
<li>
<div class="ui-button ui-button-special"><span><a href="" class=ui-popup-login ui-popup-open>支持<b>¥</b>1850</a></span></div>
</li>
</ul>
<ul>
<li class="support-amount">
支持 <b>¥</b>4300
<span>（10 位支持者）</span>
</li>
<li class="supporter-number"><div class="supporter-limit">
<p>限额 10 位，剩余 0 位</p>
</div></li>
<li class="returns-contents"><p>ghfhgfhgg</p>

<p>快来挑选宝宝喜欢的颜色吧！（颜色请写在备注区，如无备注将随机发送）</p></li>
<li class="returns-contents-img">
<a href="#" class="ui-popup-preview"><img src=""></a>
<a href="#" class="ui-popup-preview"><img src=""></a>
<a href="#" class="ui-popup-preview"><img src=""></a>
</li>
<li class="returns-contents-time">
<p>包邮（大陆地区）</p>
<p>预计回报发放时间：项目成功结束后30天内</p>
</li>
<li>
<div class="ui-button ui-button-special-disabled"><span><a href="#">限额已满</a></span></div>
</li>
</ul>
<ul>
<li class="support-amount">
支持 <b>¥</b>4400
<span>（3 位支持者）</span>
</li>
<li class="supporter-number"><div class="supporter-limit">
<p>限额 9 位，剩余 6 位</p>
</div></li>
<li class="returns-contents"><p>hggjgjhk</p></li>
<li class="returns-contents-img">
</li>
<li class="returns-contents-time">
<p>包邮（大陆地区）</p>
<p>预计回报发放时间：项目成功结束后30天内</p>
</li>
<li>
<div class="ui-button ui-button-special"><span><a href="" class=ui-popup-login ui-popup-open>支持<b>¥</b>4400</a></span></div>
</li>
</ul>
</div>
<div class="payment-refund">关于支持与退款：<p></p>
这个项目必须在2014年06月20日 14:22之前达到<b>¥</b>20000的目标才算成功，否则已经支持的订单将取消。<p></p>
订单取消时，您的支持金额将自动退款至<a href="/transactions">【点名时间余额】</a>中。您可以支持其他项目，或在此<a href="/credits/refund">【申请取现】</a>至您的支付宝或其他付款账户。
</div>

</div>
</div>
<div id="ui_popup_preview" class="ui-popup" style="display:none">
<div class="ui-popup-background">
<div class="ui-popup-content">
<div class="returns-contents-img-popup">
<a href="#close" class="ui-popup-close">关闭</a>
<div class="returns-contents-img-arrow">
<a href="#prev" class="returns-contents-img-l-on" id="ui_popup_preview_prev">上一张</a>
<a href="" class="returns-contents-img-m" target="_blank" id="ui_popup_preview_open">查看原图</a>
<a href="#next" class="returns-contents-img-r-on" id="ui_popup_preview_next">下一张</a>
</div>
<table width="700" border="0" cellspacing="0" cellpadding="0">
<tbody><tr>
<td height="526" align="center" valign="middle" id="ui_popup_preview_image"></td>
</tr>
</tbody></table>
</div>
</div> 
</div>
</div>
<div id="ui_popup_confirm" class="ui-popup ui-popup-blank ui-popup-delete">
<div class="ui-popup-background">
<div class="ui-popup-content"></div>
</div>
</div>



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
	<script src="front/js/jquery-2.1.0.min.js"></script>
	<script src="front/js/bootstrap.js"></script>
</body>

</html>
<script src="front/js/application.js" type="text/javascript"></script>
<script src="front/js/projects.js" type="text/javascript"></script>
