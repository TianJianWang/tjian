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
<script language="JavaScript"> 
var today=new Date(); 
document.getElementById('startDate').value=today.getFullYear()+'-'+(today.getMonth()+1)+'-'+today.getDay(); 
document.getElementById('endDate').value=today.getFullYear()+'-'+(today.getMonth()+1)+'-'+today.getDay(); 
</script> 
  </head>
  <body>
  
  
  
  
  

    <div>
    <form action="xpj/project_addProject" method="post" enctype="multipart/form-data">
    项目名称: <input  name="pro.pro_title" type="text"  /><br>    
    项目所需基金  <input  name="pro.pro_wantedMoney" type="text"  /><br>
    项目开始时间<input id="startDate" name="pro.pro_startDate" type="text" onfocus="c.showMoreDay = false;c.show(this);"/><br>
    项目结束时间 <input id="endDate" name="pro.pro_endDate" type="text" onfocus="c.showMoreDay = false;c.show(this);"/><br>
    项目展示图片<!--<input  name="pro.pro_picture" type="file"  /><br>-->
   <input  name="pro.pro_picture" type="text" /><br>
  <s:file name="picture" ></s:file><br>
   项目类型<select name="pro.pro_type" >
   <option value="时尚科技">时尚科技</option>
    <option value="创意设计">创意设计</option>
    <option value="文艺生活">文艺生活</option>
    <option value="其他">其他</option><br/>
   </select>
       项目介绍 
  <textarea cols="80" id="editor1" name="pro.pro_info" rows="10"  placeholder="不超过100个字！" ></textarea><br/>
			<input type="submit" value="提交项目" id="submit"  />
		<ckfinder:setupCKEditor basePath="/tinajianwang/ckfinder/" editor="editor1" />
		<ckeditor:replace replace="editor1"	basePath="/tianjianwang/ckeditor/" />
    </form>

    
    </div>
  </body>
</html>
