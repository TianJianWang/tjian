<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://ckfinder.com" prefix="ckfinder"%>
<%@taglib uri="http://ckeditor.com" prefix="ckeditor"%>
<%@taglib prefix="s" uri="/struts-tags"%>

<script language="JavaScript"> 
var today=new Date(); 
document.getElementById('startDate').value=today.getFullYear()+'-'+(today.getMonth()+1)+'-'+today.getDay(); 
document.getElementById('endDate').value=today.getFullYear()+'-'+(today.getMonth()+1)+'-'+today.getDay(); 

function Judge()
   {   

 //得到日期值并转化成日期格式，replace(/\-/g, "\/")是根据验证表达式把日期转化成长日期格式，这样

//再进行判断就好判断了
       var sDate = new Date(document.getElementById("startDate").value.replace(/\-/g, "\/"));
    var eDate = new Date(document.getElementById("endDate").value.replace(/\-/g, "\/"));
    if(sDate > eDate)
    {
     alert("结束日期不能小于开始日期");
     return false;
    }else
    return true;
   }
</script>
		
<!-- content -->
<div class="ic">
	More Website Templates @ <a href="http://www.cssmoban.com/">网页模板</a>!
</div>
<section id="content">
	<div class="padding">
		<div class="wrapper p4">
			<div class="col-3">
				<div class="indent">
				<center>
			
				<div class="h-content">
					<div style="width:900; margin: 0 auto;margin-left: 30px;">
					<h2 class="p0">Submit Project Form</h2>
						<form id="contact-form" action="xpj/project_addProject" method="post" enctype="multipart/form-data">
							<table  title="发起项目" style="height: 700px;" >
								<input type="hidden" name="pro.userId" class="text" value="${User.user_id }"/>
								<tr>
									<td align="right" style="position: relative;top: 10px;">发起人:&nbsp;&nbsp;&nbsp;</br></br></td>
									
									<td align="left"><input type="text" readonly="readonly" class="text" value="${User.email }"/></br></br></td>
									
								</tr>
								
								<tr>
									<td align="right" style="position: relative;top: 10px;">项目名称:&nbsp;&nbsp;&nbsp;</br></br></td>
									<td align="left"><input type="text" name="pro.pro_title" class="text"/></br></br></td>
								</tr>
								<tr>
							
									<td align="right" style="position: relative;top: 10px;">预期资金:&nbsp;&nbsp;&nbsp;</br></br></td>
									<td align="left"><input type="text" name="pro.pro_wantedMoney" class="text" /></br></br></td>
								</tr>
								<tr>
									<td align="right" style="position: relative;top: 10px;">开始日期:&nbsp;&nbsp;&nbsp;</br></br></td>
									<td align="left"><input id="startDate" name="pro.pro_startDate" type="text"
										onfocus="c.showMoreDay = false;c.show(this);" class="text" /></br></br></td>
								</tr>


								<tr>
									<td align="right" style="position: relative;top: 10px;">结束日期:&nbsp;&nbsp;&nbsp;</br></br></td>
									<td align="left"><input id="endDate" name="pro.pro_endDate" type="text"
										onfocus="c.showMoreDay = false;c.show(this);" class="text" /></br></br></td>
								</tr>
						<tr>
									<td align="right" style="position: relative;top: 10px;">添加图片:&nbsp;&nbsp;&nbsp;</td>
									<s:file name="picture" cssStyle="height=100px:width=20px"></s:file>
									</br></br>
								
								
								</tr>
								<tr>
								
									<td align="right" style="position: relative;top: 10px;"></br>项目类型:&nbsp;&nbsp;&nbsp;</br></td>
									<td align="left"></br></br>
									<select name="pro.pro_type">
											<option name="">医疗健康</option>
											<option name="">家居生活</option>
											<option name="">出行定位</option>
											<option name="">影音娱乐</option>
											<option name="">科技外设</option>
											<option name="">其他</option>
									</select></td>
								</tr>
								<tr>
									<td align="right" style="position: relative;top: 10px;">项目详情介绍:&nbsp;&nbsp;&nbsp;</td>
									<td align="left"><textarea cols="50" id="editor1" name="pro.pro_info" rows="10" placeholder="不超过100个字！"></textarea></td>
								</tr>
							</table>
							<tr>
							
							<td  align="right">
							<div class="buttons">
							<p>
  <button type="reset" class="btn btn-warning btn-lg">&nbsp;&nbsp;&nbsp;reset&nbsp;&nbsp;&nbsp;</button>
  <button type="submit" class="btn btn-success btn-lg">&nbsp;&nbsp;&nbsp;submit&nbsp;&nbsp;&nbsp;</button>
</p>
										</div>	
							</td>
							</tr>
						</form>
						<ckfinder:setupCKEditor basePath="/ckfinder/"
			editor="editor1" />
		<ckeditor:replace replace="editor1"
			basePath="/ckeditor/" />
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
