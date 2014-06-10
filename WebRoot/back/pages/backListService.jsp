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
  
    <div>
   <ul style="list-style-type: none">
   <s:iterator value="serviceList"  status="st" >
   <s:if test="#st.odd">
   <li style="background-color: gray">
   
   <s:property value="ser_id"/>
    <s:property value="com_name"/>
    <s:property value="score"/>
    
    <s:property value="com_url"/>
    <s:property value="short_info" escape="false"/>
    
    </li></s:if>
     <s:else>
   <li style="background-color: white">
   
   <s:property value="ser_id"/>
    <s:property value="com_name"/>
    <s:property value="score"/>
    
    <s:property value="com_url"/>
    <s:property value="short_info" escape="false"/>
    
    </li></s:else>
    </s:iterator>
    </ul>
    
     
    </div>
   
  </body>
</html>
