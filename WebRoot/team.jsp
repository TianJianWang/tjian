<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'team.jsp' starting page</title>
    
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
  <form action="ming/team_addTeam" method="post">
     team_id:<input type="text" name="team.team_id" value="${team.team_id }"/><br>
     pro_id:<input type="text" name="team.pro_id" value="${team.pro_id }"/><br>
     header_id:<input type="text" name="team.header" value="${team.header }"/><br>
     项目名:<input type="text" name="team.name" value="${team.name }"/><br>
     人数:<input type="text" name="team.num" value="${team.num}"/><br>
     专业:<input type="text" name="team.major" value="${team.major }"/><br>
     权限类型:<input type="text" name="team.power_type" value="${team.power_type }"/><br>
     宣言:<input type="text" name="team.decl" value="${team.decl }"/><br>
     专业:<input type="text" name="team.major" value="${team.major }"/><br>
   
   </form>
   <a href="ming/team_listTeamUserByTeam?team_id=${team.team_id }">查看项目组的成员</a>
  </body>
</html>
