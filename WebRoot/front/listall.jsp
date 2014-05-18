<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML >
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'listall.jsp' starting page</title>
    <meta charset="utf-8">
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  
<link rel="stylesheet" href="css/reset.css" type="text/css" media="screen">
<link rel="stylesheet" href="css/style.css" type="text/css" media="screen">
<link rel="stylesheet" href="css/layout.css" type="text/css" media="screen">
<style type="text/css">
table.tbcss, table.tbcss td {
	padding:2px;
	border:2px;
	color:#FFF;
}
</style>
<script type="text/javascript" src="js/jquery-1.6.min.js"></script>
<script src="js/cufon-yui.js" type="text/javascript"></script>
<script src="js/cufon-replace.js" type="text/javascript"></script>
<script src="js/Open_Sans_400.font.js" type="text/javascript"></script>
<script src="js/Open_Sans_Light_300.font.js" type="text/javascript"></script>
<script src="js/Open_Sans_Semibold_600.font.js" type="text/javascript"></script>
<script src="js/FF-cash.js" type="text/javascript"></script>
<!--[if lt IE 7]>
    <div style=' clear: both; text-align:center; position: relative;'>
        <a href="http://www.microsoft.com/windows/internet-explorer/default.aspx?ocid=ie6_countdown_bannercode"><img src="http://www.theie6countdown.com/images/upgrade.jpg" border="0"  alt="" /></a>
    </div>
<![endif]-->
<!--[if lt IE 9]>
    <script type="text/javascript" src="js/html5.js"></script>
    <link rel="stylesheet" href="css/ie.css" type="text/css" media="screen">
<![endif]-->

<link href="css/h-countent.css" rel="stylesheet" type="text/css">
</head>
<body id="page2">
<!-- header -->
<div class="bg">
  <div class="main">
    <header>
      <div class="row-1">
        <h1> <a class="logo" href="index.html">Point.co</a> <strong class="slog">The most creative ideas</strong> </h1>
        <form id="search-form" action="" method="post" enctype="multipart/form-data">
          <fieldset>
            <div class="search-form">
              <input type="text" name="search" value="Type Keyword Here" onBlur="if(this.value=='') this.value='Type Keyword Here'" onFocus="if(this.value =='Type Keyword Here' ) this.value=''" />
              <a href="#" onClick="document.getElementById('search-form').submit()">Search</a> </div>
          </fieldset>
        </form>
      </div>
      <div class="row-2">
        <nav>
          <ul class="menu">
            <li><a href="index.html">Home Page</a></li>
            <li><a class="active" href="list.html">Order and Invest</a></li>
            <li><a href="services.html">Audit Accounts</a></li>
            <li><a href="products.html">Join Projects</a></li>
            <li class="last-item"><a href="contacts.html">Submit Project</a></li>
          </ul>
        </nav>
      </div>
    </header>
    <!-- content -->
    <div class="ic">More Website Templates @ <a href="http://www.cssmoban.com/" >网页模板</a>!</div>
    <section id="content">
      <div class="padding">
        <div class="wrapper p4">
          <div class="col-3">
            <div class="indent">
              <div class="h-content">
                <div class="h-title">
                  <div class="h-pic">筹资中</div>
                  <div class="h-t"> <a href="http://www.demohour.com/projects/discover/3_0_0_0">最新上线</a> <a href="http://www.demohour.com/projects/discover/3_0_0_2">金额最高</a> <a href="http://www.demohour.com/projects/discover/3_0_0_5">关注最多</a> <a href="http://www.demohour.com/projects/discover/3_0_0_3">话题最多</a> <span>|</span> <a href="http://www.demohour.com/projects/discover/3_927158_0_0">时尚科技</a> <a href="http://www.demohour.com/projects/discover/3_927151_0_0">创意设计</a> <a href="http://www.demohour.com/projects/discover/3_927162_0_0">文艺生活</a> <a href="http://www.demohour.com/projects/discover/3_0_0_0">更多筹资</a> </div>
                </div>
                <div  class="project-list">
                
                 <s:iterator value="projectList" var="list">
    <ul class="project-one">
                    <li class="project-pic"><a href="#" title="<s:property value="#list.pro_title"/>"><img src="<s:property value="#list.pro_picture"/>" width="223" height="165"></a> </li>
                    <li class="project-title"><a href="#"> <s:property value="#list.pro_title"/> </a></li>
                    <li class="project-function"> <a href="/forums/project-297159" title="此项目有1个话题" class="project-p-on">话题：1</a> <a href="/projects/297159/backers" title="11用户支持此项目" class="project-g-on">支持：11</a> <a href="/projects/discover/10_0_0_0" class="project-g-failure">筹资失败</a> </li>
                    <li class="project-list-stats">
                      <div class="projectpledgedwrap">
                        <div style="width:0%;" class="projectpledged projectpledged-failure"></div>
                      </div>
                      <div class="projectstats">
                        <p class="widtha"><strong>0%</strong>已达到</p>
                        <p class="widthb"><strong><span><b>¥</b>245</span></strong>已获支持</p>
                        <p class="widthd"><strong><s:date name="#list.pro_endDate" nice="ture"/></hr></strong>结束时间</p>
                      </div>
                    </li>
                  </ul>
    
    
    </s:iterator>
                  
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
                  <div class="wrapper indent-bot"> <strong class="numb img-indent2">01</strong>
                    <div class="extra-wrap">
                      <h3 class="color-1"><strong>Careful</strong>Analysis</h3>
                    </div>
                  </div>
                  <div class="wrapper"> <a class="button img-indent-r" href="#">>></a>
                    <div class="extra-wrap"> The most of the most professional <br/>
                      最多的最专业人士评价. </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-1">
              <div class="box second">
                <div class="pad">
                  <div class="wrapper indent-bot"> <strong class="numb img-indent2">02</strong>
                    <div class="extra-wrap">
                      <h3 class="color-2"><strong>Quick</strong>Research</h3>
                    </div>
                  </div>
                  <div class="wrapper"> <a class="button img-indent-r" href="#"></a>
                    <div class="extra-wrap"> The quickest for the most outstanding creative <br/>
                      最快的最优秀创意孵化. </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-2">
              <div class="box third">
                <div class="pad">
                  <div class="wrapper indent-bot"> <strong class="numb img-indent2">03</strong>
                    <div class="extra-wrap">
                      <h3 class="color-3"><strong>New</strong>Strategies</h3>
                    </div>
                  </div>
                  <div class="wrapper"> <a class="button img-indent-r" href="#">>></a>
                    <div class="extra-wrap"> The most transparent and the most trusted finances <br/>
                      最透明最可信的财务管理. </div>
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
              <div class="indent3"> <strong class="footer-logo">Tjian.<strong>org</strong></strong> <strong class="phone"><strong>Toll Free:</strong> 1-800-567-8934</strong> </div>
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

