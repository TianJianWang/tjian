<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<div class="ic">More Website Templates @ <a href="http://www.cssmoban.com/" >网页模板</a>!</div>
			<section id="content">
				<div class="padding">
					<div class="wrapper p4">
						<div class="col-3">
						  <div class="indent">
                            

 
 
 
 
  <div class="table table-bordered">
  <br/><br/><br/><br/><br/><br/><br/><br/>
 <p class="bb"> 项目组申请信息</p>
 <br/> <br/><br/>
        
        <s:iterator value="applyList" var="list">
             <table class="table table-hover">
        
          <tr style="height: 45px;">
          <td rowspan="5" style="width: 100px; height: 45px;" >
                         项目发起人<br><br>
          <div style="width: 50px;height: 50px;">
              <img width="50px" height="50px" alt="" src="myimages/<s:property value="#list.user.user_picture"/>"><br>
               <s:property value="#list.user.realname"/>
          </div>   
           </td>
            <td class="success" style="width: 80px;">项目组名称</td>
            <td>  <s:property value="#list.team.name"/>   </td>
            
          </tr>
			
			
			<tr style="height: 45px;">
             <td class="success">时间</td>
             <td><s:property value="#list.time"/></td>
             </tr>
             <tr style="height: 45px;">
             <td class="success">留言</td>
             <td><s:property value="#list.message"/></td>
             </tr>
          
       
         
      </table>
      <center>
      <a href="ming/team_deleteApply?team_id=<s:property value="#list.team.team_id"/>&apply.id=<s:property value="#list.id"/>&teamUser.user.user_id=<s:property value="#list.user.user_id"/>&teamUser.team.team_id=<s:property value="#list.team.team_id"/>"> 
      <button type="button" class="btn btn-primary btn-lg active" style="width: 150px;background-color:#C33;">
       不通过</button></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <a href="ming/team_deleteApplyAndAddTeamUser?team_id=<s:property value="#list.team.team_id"/>&apply.id=<s:property value="#list.id"/>&teamUser.user.user_id=<s:property value="#list.user.user_id"/>&teamUser.team.team_id=<s:property value="#list.team.team_id"/>">
      <button type="button" class="btn btn-primary btn-lg active" style="width: 150px;">
      通过</button></a>
      </center>
        <br><br><br><br><br><br>
        
        
        </s:iterator>
        
      <table class="table table-hover">
        
          <tr style="height: 45px;">
          <td rowspan="5" style="width: 100px; height: 45px;" >
                         项目发起人<br>
          <div style="width: 50px;height: 50px;">
              <img alt="" src="">
          
          </div>   
           </td>
            <td class="success" style="width: 80px;">项目组名称</td>
            <td>  项目名称   </td>
            
          </tr>
			
			
			<tr style="height: 45px;">
             <td class="success">时间</td>
             <td>时间</td>
             </tr>
             <tr style="height: 45px;">
             <td class="success">留言</td>
             <td>留言</td>
             </tr>
          
       
         
      </table>
      <center>
       <button type="button" class="btn btn-primary btn-lg active" style="width: 150px;background-color:#C33;">
       不通过</button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <button type="button" class="btn btn-primary btn-lg active" style="width: 150px;">
      通过</button>
      </center>
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