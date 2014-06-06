<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://ckfinder.com" prefix="ckfinder"%>
<%@taglib uri="http://ckeditor.com" prefix="ckeditor"%>
<%@taglib prefix="s" uri="/struts-tags"%>

<script language="JavaScript"> 
var today=new Date(); 
document.getElementById('startDate').value=today.getFullYear()+'-'+(today.getMonth()+1)+'-'+today.getDay(); 
document.getElementById('endDate').value=today.getFullYear()+'-'+(today.getMonth()+1)+'-'+today.getDay(); 
</script>
		
<!-- content -->
<div class="ic">
	More Website Templates @ <a href="http://www.cssmoban.com/">网页模板</a>!
</div>
<section id="content">
	<div class="padding">s
		<div class="wrapper p4">
			<div class="col-3">
				<div class="indent">
				<center>
				<div class="h-content">
					<div style="width:900; margin: 0 auto;margin-left: 30px;">
						<form action="xpj/project_updateProject" method="post" enctype="multipart/form-data">
							<table  title="修改项目">
								<tr>
								<th> <input type="hidden" name="pro.pro_id" value="<s:property value="projectList[0].pro_id"/>"></th>
								</tr>
								<tr>
									<td align="right" style="position: relative;top: 10px;">项目名称:</td>
									<td align="left"><input type="text" name="pro.pro_title" class="text" value='<s:property value="projectList[0].pro_title"/>'/></td>
								</tr>
								<tr>
							
									<td align="right" style="position: relative;top: 10px;">预期资金:</td>
									<td align="left"><input type="text" name="pro.pro_wantedMoney"  value='<s:property value="projectList[0].pro_wantedMoney"/>'class="text" /></td>
								</tr>
								<tr>
									<td align="right" style="position: relative;top: 10px;">开始日期:</td>
									<td align="left"><input id="startDate" name="pro.pro_startDate" type="text"
										onfocus="c.showMoreDay = false;c.show(this);" class="text"  value='<s:property value="projectList[0].pro_startDate"/>'/></td>
								</tr>


<tr ><input type="hidden" name="pro.useId" value="<s:property value="projectList[0].useId"/>"></tr>
								<tr>
									<td align="right" style="position: relative;top: 10px;">结束日期:</td>
									<td align="left"><input id="endDate" name="pro.pro_endDate" type="text"
										onfocus="c.showMoreDay = false;c.show(this);" class="text"  value='<s:property value="projectList[0].pro_endDate"/>'/></td>
								</tr>
						          <tr>
									<td align="right" style="position: relative;top: 10px;">展示图片:</td>
									
									<s:file name="picture" cssStyle="height=100px:width=20px" ></s:file>
									<image src="<s:property value="projectList[0].pro_picture"/>"></image>
								
								</tr>
								<tr>
									<td align="right" style="position: relative;top: 10px;">项目类型:</td>
									<td align="left">
									<select name="pro.pro_type" value='<s:property value="projectList[0].pro_type"/>'>
											<option name="">医疗健康</option>
											<option name="">家居生活</option>
											<option name="">出行定位</option>
											<option name="">影音娱乐</option>
											<option name="">科技外设</option>
											<option name="">其他</option>
									</select></td>
								</tr>
								<tr>
									<td align="right" style="position: relative;top: 10px;">项目详情介绍:</td>
									<td align="left"><textarea cols="50" id="editor1" name="pro.pro_info" rows="10" value="<s:property value="projectList[0].pro_type"/>"></textarea></td>
								</tr>
							</table>
							<tr>
							
							<td  align="right">
							<div style="float: right;margin-right: 30px;margin-top: 5px;">
							<input type="submit" value="提交"  style="width: 60px;height: 30px;background-color:#00CC00;" />
							<input type="reset" value="重置" style="width: 60px;height: 30px;background-color:#00CC00;" />
							</div>
							</td>
							</tr>
						</form>
						<ckfinder:setupCKEditor basePath="/tinajianwang/ckfinder/"
			editor="editor1" />
		<ckeditor:replace replace="editor1"
			basePath="/tianjianwang/ckeditor/" />
					</div>
					</div>
					</center>
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
