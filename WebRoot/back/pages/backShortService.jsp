<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"  %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'backShortService.jsp' starting page</title>
    
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
  为什么显示不出来呢为什么显示不出来呢为什么显示不出来呢为什么显示不出来呢为什么显示不出来呢
    <div>
   <ul>
   <s:iterator value="serviceList"  >
   <li>
   
   <s:property value="ser_id"/>
    <s:property value="com_name"/>
    <s:property value="score"/>
    
    <s:property value="com_url"/>
    <s:property value="short_info" />
    
    </li>
    </s:iterator>
    </ul>
    
     
    </div>
    <div>
    为什么显示不出来呢
    
    
    
    
    
    
   
    </div>
    

    
  </body>
</html>
