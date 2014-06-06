<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>


<%@ taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <title>项目详情</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->


  <script type="text/javascript" src="back/js/shizhong.js"></script>

   
  </head>
  
  
  
  <body>
       <div>
    <form action="xpj/project_updateProject" method="post" enctype="multipart/form-data">
    
   <input name="pro.pro_id" type="hidden" value="<s:property value="projectList[0].pro_id"/>" />
    项目名称: <input  name="pro.pro_title" type="text" value="<s:property value="projectList[0].pro_title"/>"     placeholder="<s:property value="projectList[0].pro_title"/>"  /><br>  
    项目所需基金  <input  name="pro.pro_wantedMoney" value="<s:property value="projectList[0].pro_wantedMoney"/>" placeholder="<s:property value="projectList[0].pro_wantedMoney"/>" type="text"  /><br>
    <input name="pro.userId" type="hidden" value="<s:property value="projectList[0].userId"/>" />
    项目开始时间<input id="startDate" readonly="readonly" name="pro.pro_startDate" type="text" placeholder="<s:property  value="projectList[0].pro_startDate"/>"  onfocus="c.showMoreDay = false;c.show(this);" /><br>
    项目结束时间 <input id="endDate" name="pro.pro_endDate" placeholder="<s:property value="projectList[0].pro_endDate"/>" type="text" onfocus="c.showMoreDay = false;c.show(this);"/><br>
    项目展示图片 <s:file name="picture" ></s:file><br>
    项目类型<select name="pro.pro_type" >
				<option value="时尚科技">时尚科技</option>
				<option value="创意设计">创意设计</option>
				<option value="文艺生活">文艺生活</option>
				<option value="其他">其他</option>
			</select>
  项目介绍 <textarea cols="80" id="editor1" name="pro.pro_info" rows="10"  placeholder="<s:property value="projectList[0].pro_info"/>" ></textarea>
			<a href="xpj/project_updateProject"><input type="submit" value="完成修改" id="submit"  /></a>
		<ckfinder:setupCKEditor basePath="/tinajianwang/ckfinder/" editor="editor1" />
		<ckeditor:replace replace="editor1"	basePath="/tianjianwang/ckeditor/" />
    </form>
  <script language="JavaScript"> 
var today=new Date(); 
document.getElementById('startDate').value=today.getFullYear()+'-'+(today.getMonth()+1)+'-'+today.getDay(); 
document.getElementById('endDate').value=today.getFullYear()+'-'+(today.getMonth()+1)+'-'+today.getDay(); 
</script> 
    
    </div>
  <body>
   
  </body>
</html>
