<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
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
	<!-- content -->
			<div class="ic">
				More Website Templates @ <a href="http://www.cssmoban.com/">网页模板</a>!
			</div>
			<section id="content">
				<div class="padding">
					<div class="wrapper p4">
						<div class="col-3">
							<div class="indent">
								<div class="h-content">
									<div class="h-title">
										<div class="h-pic">筹资中</div>
										<div class="h-t">
											<a href="http://www.demohour.com/projects/discover/3_0_0_0">最新上线</a>
											<a href="http://www.demohour.com/projects/discover/3_0_0_2">金额最高</a>
											<a href="http://www.demohour.com/projects/discover/3_0_0_5">关注最多</a>
											<a href="http://www.demohour.com/projects/discover/3_0_0_3">话题最多</a>
											<span>|</span> <a
												href="http://www.demohour.com/projects/discover/3_927158_0_0">时尚科技</a>
											<a
												href="http://www.demohour.com/projects/discover/3_927151_0_0">创意设计</a>
											<a
												href="http://www.demohour.com/projects/discover/3_927162_0_0">文艺生活</a>
											<a href="http://www.demohour.com/projects/discover/3_0_0_0">更多筹资</a>
										</div>
									</div>
									
									
									
									
								 <div  class="project-list">
                
    <s:iterator value="projectList" var="list">
    <ul class="project-one">
    
    
                     <s:date name="#list.pro_endDate" nice="ture"></s:date>
                    <li class="project-pic"><a href="#" title="<s:property value="#list.pro_title"/>"><img src="<s:property value="#list.pro_picture"/>" width="223" height="165"></a> </li>
                    <li class="project-title"><a href="#"> <s:property value="#list.pro_title"/> </a></li>
                    <li class="project-function"> <a href="/forums/project-297159" title="此项目有1个话题" class="project-p-on">话题：1</a> <a href="/projects/297159/backers" title="11用户支持此项目" class="project-g-on">支持：11</a> 
                    	<s:if test="#list.pro_wantedMoney>100000"><a href="#"class="project-g-success">筹资成功</a></s:if>
                    	<s:elseif test="#list.pro_wantedMoney>10000"><a href="#" class="project-g-running">筹资中</a></s:elseif>
                    	<s:else><a href="#" class="project-g-failure">筹资失败</a></s:else >
                </li>
                    <li class="project-list-stats">
                      <div class="projectpledgedwrap">
                        <div style="width:50%;" class="projectpledged projectpledged-failure"></div>
                      </div>
                      <div class="projectstats">
                        <p class="widtha"><strong>0%</strong>已达到</p>
                        <p class="widthb"><strong><span><b>¥</b>245</span></strong>已获支持</p>
                        <p class="widthd"><strong><s:property value="#list.pro_endDate" /></strong>结束时间</p>
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
												The most of the most professional <br /> 最多的最专业人士评价.
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
												The quickest for the most outstanding creative <br />
												最快的最优秀创意孵化.
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
												The most transparent and the most trusted finances <br />
												最透明最可信的财务管理.
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</section>
