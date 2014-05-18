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
    
    <title>My JSP 'finance.jsp' starting page</title>
    
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
 支持金额：  ${finance.inCome }元 <br>
  支出金额： ${finance.outCome }元<br>
  盈余： ${finance.bonus }元<br><br>
   下边是账单单项：
  <hr>
   <s:iterator value="itemList" var="list"><br>
   
    用途：   <s:property value="#list.item_thing"/><br>
    借贷类型：   <s:property value="#list.item_type"/><br>
    金额：  <s:property value="#list.item_money"/><br>
    日期： <s:property value="#list.item_time"/><br>
    经办人： <s:property value="#list.item_person"/>

         </s:iterator>
   
   
   
   
  </body>
</html>
