<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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
									
		<table class="table table-hover">
			 <tr>
			<th scope="col">

项目名</th>
    <th scope="col">所需人数</th>
	 <th scope="col">已加入人数</th>
    <th scope="col">专业</th>
    
    <th>操作</th>
    <th></th>
    </tr>
			<s:iterator 

value="teamList" var="list">
			 <tr>
   <td> <s:property value="#list.name"/>

 </td>
	<td><s:property 

value="#list.num"/> </td>
    <td><s:property 

value="teamUserCount"/></td>
    <td><s:property 

value="#list.major"/></td>
    



    <td><a href="ming/team_listTeamDetail?team_id=<s:property value="#list.team_id"/>">详细信息</a></td>
  <td><a href="ming/team_listTeamById?team_id=<s:property value="#list.team_id"/>">申请加入</a></td>
  </tr>
			
			</s:iterator>
			
  
  <tr>
    <td>中华总会</td>
	<td>50</td>
    <td>20</td>
    <td>java开发</td>
   
     <td><a href="#">详细信息</a></td>
  </tr>
  <tr>
  <td>web开发</td>
    <td>30</td>
    <td>10</td>
    <td>j2ee</td>
     <td><a href="#">详细信息</a></td>
  </tr>
  <tr>
  <td>三人行</td>
    <td>12</td>
    <td>2</td>
    <td>美工</td>
     <td><a href="#">详细信息</a></td>
  </tr>
  <tr>
  <td>清新独处</td>
    <td>5</td>
    <td>1</td>
    <td>美工</td>
     <td><a href="#">详细信息</a></td>
  </tr>
            
          </table>											
									
									
									
									
									
									
								
								
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