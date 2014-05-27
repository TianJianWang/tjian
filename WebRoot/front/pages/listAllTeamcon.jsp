<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
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
									
									
									</div>
									
									
									
									
	                          <div class="project-list">
										<s:iterator value="teamList" var="list">
											<ul class="project-one">
												<li class="project-pic"><a href="ming/team_listTeamDetail?team_id=<s:property value="#list.team_id"/>"
													title="<s:property value="#list.name"/>"><img
														src="myimages/<s:property value="#list.team_picture"/>" width="223"
														height="165"></a></li>
												<li class="project-title"><a href="ming/team_listTeamDetail?team_id=<s:property value="#list.team_id"/>"> 
												<s:property  value="#list.name" />
												</a></li>
												<li class="project-function"><a
													href="/forums/project-297159" title="此项目有1个话题"
													class="project-p-on">所需人数：<s:property  value="#list.num" /></a> <a
													href="/projects/297159/backers" title="11用户支持此项目"
													class="project-g-on">加入人数：${teamUserCount }</a> <a
													href="/projects/discover/10_0_0_0"
													class="project-g-running">筹资中</a></li>
												<li class="project-list-stats">
													<div class="projectpledgedwrap">
														<div style="width:24%;"
															class="projectpledged projectpledged-failure"></div>
													</div>
													<div class="projectstats">
														<p class="widtha">
															<strong>0%</strong>已达到
														</p>
														<p class="widthb">
															<strong><span><b>¥</b>245</span></strong>已获支持
														</p>
														<p class="widthd">
															<strong><s:property  value="#list.project.pro_endDate" /></strong>结束时间
														</p>
													</div>
												</li>
											</ul>

										</s:iterator>
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