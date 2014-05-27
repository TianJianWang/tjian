<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<div class="ic">
	More Website Templates @ <a href="http://www.cssmoban.com/">网页模板</a>!
</div>
<section id="content">
	<div class="padding">
		<div class="wrapper p4">
			<div class="col-3">
				<div class="indent">

					<div class="team">

						<form name="finance_item" action="bianjizisuccess.html">
							<br />
							<br />
							<br />
							<p class="bb">添加项目组</p>
							<br /> <br />

							<table width="600" align="center">
								<input class="kuan" type="hidden" name="method" value="">
								<tr>
									<td width="107" height="60"><div align="right">发起人：</div>
									</td>
									<td width="281"><input class="kuan" type="text"
										name="item_person" id="item_personId" />
									</td>
								</tr>


								<tr>
									<td width="107" height="60"><div align="right">项目组名：</div>
									</td>
									<td width="281"><input class="kuan" type="text"
										name="name" id="nameId" />
									</td>
								</tr>
								<tr>
									<td width="107" height="60"><div align="right">项目组图片：</div>
									</td>
									<td width="281"><input class="kuan" type="file"
										name="team_picture" id="team_pictureId" />
									</td>
								</tr>

								<tr>
									<td width="107" height="60"><div align="right">所需人数：</div>
									</td>
									<td width="281"><input class="kuan" type="text" name="num"
										id="numId" />
									</td>
								</tr>
								<tr>
									<td width="107" height="60"><div align="right">专业：</div>
									</td>
									<td width="281"><input class="kuan" type="text"
										name="major" id="majorId" />
									</td>
								</tr>
								<tr>
									<td width="107" height="60"><div align="right">权限类型：</div>
									</td>
									<td width="281"><select name="power_type"
										id="power_typeId">
											<option name="1">One</option>
											<option name="2">Many</option>
											<option name="3">All</option>
									</select>
									</td>
								</tr>

								<tr>
									<td colspan="2"><p>宣言：</p>
										<div class="editorarea">

												<textarea cols="80" id="editor1" name="decl" rows="10"></textarea>
											<ckfinder:setupCKEditor basePath="/tianjianwang/ckfinder/"
												editor="editor1" />
											<ckeditor:replace replace="editor1"
												basePath="/tianjianwang/ckeditor/" />
										</div></td>
								</tr>
								<tr>
									<td height="60" colspan="2" align="center"><br /> <input
										type="submit" value="添加"
										style="background-color:#DC082B; width: 150px;height: 35px;color:#FFF;font-size: 18px;font-weight: bold;">
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
							<li><a href="#">May 2014</a>
							</li>
							<li><a href="#">April 2014</a>
							</li>
							<li><a href="#">March 2014</a>
							</li>
							<li><a href="#">February 2014</a>
							</li>
							<li><a href="#">January 2014</a>
							</li>
							<li><a href="#">December 2010</a>
							</li>
							<li><a href="#">November 2010</a>
							</li>
							<li><a href="#">October 2010</a>
							</li>
							<li><a href="#">September 2010</a>
							</li>
							<li><a href="#">August 2010</a>
							</li>
							<li><a href="#">July 2010</a>
							</li>
							<li><a href="#">June 2010</a>
							</li>
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
									<h3 class="color-1">
										<strong>Careful</strong>Analysis
									</h3>
								</div>
							</div>
							<div class="wrapper">
								<a class="button img-indent-r" href="#">>></a>
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
								<a class="button img-indent-r" href="#"></a>
								<div class="extra-wrap">
									The quickest for the most outstanding creative <br />最快的最优秀创意孵化.
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
									The most transparent and the most trusted finances <br />最透明最可信的财务管理.
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>