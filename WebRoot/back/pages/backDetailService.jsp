<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'backDetailService.jsp.jsp' starting page</title>
    
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
 
    <div >
			<div>
		<a href=""> <s:property value="service.ser_type.type_name" />服务</a>
			</div>
			<div>
				<h3>
					<s:property value="service.com_name" />
				</h3>
			<p>服务分数：<s:property value="service.score" /></p>
      <p> <a href="<s:property value="service.com_url" />" target="_blank"></a></p>
      <img alt="<s:property value="service.com_name" />" src="<s:property value="service.com_picture" />" width="300px"height="200px">
      <p><s:property value="service.short_info" escape="false" /></p>
      <p><s:property value="service.com_info" escape="false" /></p>
      </div>
			</div>
  </body>
</html>
