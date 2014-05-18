<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags"   %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'success.jsp' starting page</title>
    
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
         <s:iterator value="salepreList" var="list">
         <s:property value="#list.type_post"/>&nbsp;&nbsp;
         <s:property value="#list.pre_money"/>&nbsp;&nbsp;
         <s:property value="#list.pre_info" escape="false"/>&nbsp;&nbsp;
         <a href="ming/pre_listSalepreById?method=Front&pre_id=<s:property value="#list.pre_id"/>">修改</a>
         <a href="ming/pre_deleteSalepreById?method=Front&pre_id=<s:property value="#list.pre_id"/>">删除</a><br>
         </s:iterator>
  </body>
</html>
