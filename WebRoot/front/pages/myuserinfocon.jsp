<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<div class="ic">
				More Website Templates @ <a href="http://www.cssmoban.com/">网页模板</a>!
			</div>
			<section id="content">
				<div class="padding">
					<div class="wrapper p4">
						<div class="col-3">
							<div class="indent">
							
							
							
							
							
							
							
								<%-- <div class="h-content">
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
									
									
									</div> --%>
									
			<%@ include file="11.jsp" %>						
									
		<div style="width:80%;">							
	<form action="user/UserAction_updateUser" class="form-horizontal" style="background-color: white;width: 950px;height:380px;border-radius:2em;margin-left: 2px;margin-bottom: 10px;"   enctype="multipart/form-data" method="post" >
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