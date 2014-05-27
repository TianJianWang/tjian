<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<div class="ic">More Website Templates @ <a href="http://www.cssmoban.com/" >网页模板</a>!</div>
			<section id="content">
				<div class="padding">
					<div class="wrapper p4">
						<div class="col-3">
						  <div class="indent">
						   
                            
  
  <div class="bian">
<br/><br/>
				<p class="bb">编辑预售信息</p>
                <br>
                <br>
                <br>
             
					<form action="ming/pre_addSalepre" method="post"
						enctype="multipart/form-data">
						<input type="hidden" name="salepre.pro_id" value="2"/>
						<input type="hidden" name="project.pro_id" value="2"/>
						<table>
							<tr>
							  <td width="238" align="right">支持金额：</td> 
							   <td width="422" > <input type="text" name="salepre.pre_money"
									width="200px">￥<br><br>
								</td>
							</tr>
							<tr>
							  <td align="right">限制名额：</td>
                              <td> <input type="text" name="salepre.pre_limit"><br><br></td>
							</tr>
							<tr>
							  <td align="right">包邮</td>
                              <td> 
                              <input type="radio"  checked="checked"  value="1" name="salepre.type_post">包邮（大陆地区）
                               <input type="radio" value="2" name="salepre.type_post">不包邮
                               
								</td>
							</tr>
							<tr>
								<td colspan="2"><p>请输入内容：
                                </p>
                                <div class="editorarea">
								  <p>
								  
  <textarea  cols="80" id="editor1" name="salepre.pre_info" rows="10"></textarea>
							      </p>
								  <ckfinder:setupCKEditor
										basePath="/tianjianwang/ckfinder/" editor="editor1" /> 
								  <ckeditor:replace
										replace="editor1" basePath="/tianjianwang/ckeditor/" />
										</div>
							  </td>
							</tr>
							
							<tr>
						  <td colspan="2" align="center"><input type="submit" value="上传">
									&nbsp;&nbsp;&nbsp;&nbsp;<input type="reset">
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