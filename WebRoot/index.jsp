<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://ckfinder.com" prefix="ckfinder"%>
<%@taglib uri="http://ckeditor.com" prefix="ckeditor"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
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
  <form action="">
   <textarea cols="80" id="editor1" name="content1" rows="10"></textarea>
			<input type="submit" value="Submit" id="submit" onclick="return check();" />
		
		<ckfinder:setupCKEditor basePath="/tinajianwang/ckfinder/"
			editor="editor1" />
		<ckeditor:replace replace="editor1"
			basePath="/tianjianwang/ckeditor/" />
		</form>	
	<a href="ming/pre_listSalepre">查询与销售信息</a>
	<a href="addSalepre.jsp">添加与销售信息</a>
	<a href="ming/finance_listFinance">查看账单</a>
	<a href="ming/finance_isFinance?pro_id=20">添加账单</a>
	<a href="ming/team_listTeamById?team_id=1">查看项目组队</a>
	<a href="addTeam.jsp">添加项目组</a>
	
  </body>
</html>
