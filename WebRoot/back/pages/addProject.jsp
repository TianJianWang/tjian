<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib uri="http://ckfinder.com" prefix="ckfinder"%>
<%@taglib uri="http://ckeditor.com" prefix="ckeditor"%>
<%@taglib prefix="s" uri="/struts-tags" %>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@page isELIgnored="false"%>

<!DOCTYPE HTML >
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>添加项目</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
    <script type="text/javascript" src="back/js/shizhong.js"></script>
    <script type="text/javascript" src="front/js/bootstrap.js"></script>
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

  </head>
  <body>
  
  
  
  
  

    <div>
		<form action="xpj/project_addProject" method="post"
			enctype="multipart/form-data">
		<table title="发起项目 ">
			<tr height="40px" >
			<th >项&nbsp目&nbsp名&nbsp称 </th>
			<th><input name="pro.pro_title" type="text"  style="width: 100px;height: 20px;"/></th>
			</tr>
	
			<tr height="40px" >
			<th>所&nbsp需&nbsp基&nbsp金</th>
			<th><input name="pro.pro_wantedMoney" type="text" style="width: 100px;height: 20px;" />*</th>
			</tr> 
			
			<tr height="40px" >
			<th>发&nbsp起&nbsp时&nbsp间</th>
			<th> <input id="startDate" name="pro.pro_startDate" type="text"	onfocus="c.showMoreDay = false;c.show(this);"style="width: 100px;height: 20px;" /></th>
			</tr>
		
		
			<tr height="40px" >
			<th><strong>结&nbsp束&nbsp时&nbsp间</th>
			<th><input id="endDate" name="pro.pro_endDate" type="text"	onfocus="c.showMoreDay = false;c.show(this);" style="width: 100px;height: 20px;"/></th>
			</tr> 
	  </table>
		
		<strong >图&nbsp片&nbsp展&nbsp示</strong>
			<s:file name="picture" cssStyle="height=100px:width=20px"></s:file>
		
		<!--<input  name="pro.pro_picture" type="file"  /><br>-->

			<br>
		<strong>项&nbsp目&nbsp类&nbsp型</strong>
			<select name="pro.pro_type" size="">
					<option value="时尚科技" style="width: 100px;height: 20px;">时尚科技</option>
					<option value="创意设计">创意设计</option>
					<option value="文艺生活">文艺生活</option>
					<option value="其他">其他</option>
			</select>
			</br>
		<strong>项&nbsp目&nbsp介&nbsp绍</strong>
			<textarea cols="80" id="editor1" name="pro.pro_info" rows="10"
				placeholder="不超过100个字！"></textarea>
				
				
	
			<br /> <input type="submit" value="提交项目" id="submit"onclick="return Judge()"  style="width: 100px;height: 20px;color: blue;"/>
			<ckfinder:setupCKEditor basePath="/tinajianwang/ckfinder/"
				editor="editor1" />
			<ckeditor:replace replace="editor1"
				basePath="/tianjianwang/ckeditor/" />
			</form>

    
    </div>
  </body>
</html>
