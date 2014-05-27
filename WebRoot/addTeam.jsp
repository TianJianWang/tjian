<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://ckfinder.com" prefix="ckfinder"%>
<%@taglib uri="http://ckeditor.com" prefix="ckeditor"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'addTeam.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  </head>
  
  <body>
   <form action="ming/team_addTeam" method="post" enctype="multipart/form-data">
     team_id:<input type="text" name="team.team_id" /><br>
     pro_id:<input type="text" name="team.project.pro_id" /><br>
     header_id:<input type="text" name="team.user.user_id" /><br>
     项目名:<input type="text" name="team.name" /><br>
     人数:<input type="text" name="team.num" /><br>
     专业:<input type="text" name="team.major" /><br>
     权限类型:<input type="text" name="team.power_type" /><br>
     项目图片：<s:file name="picture"></s:file>
     项目组介绍:
      <textarea cols="80" id="editor1" name="team.decl" rows="10"></textarea><br>
			<input type="submit" value="Submit" id="submit" onclick="return check();" />
		
		<ckfinder:setupCKEditor basePath="/tinajianwang/ckfinder/"
			editor="editor1" />
		<ckeditor:replace replace="editor1"
			basePath="/tianjianwang/ckeditor/" />
     
     
       <input type="submit" value="提交"/>
   </form>
   <a href="ming/team_listTeamById?team_id=1">查询团队信息</a>
  </body>
</html>
