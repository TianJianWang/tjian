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
    
    <title>My JSP 'addServiceBigType.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<script type="text/javascript" src="back/js/service.js"></script>
  </head>
  
  <body>
 
    <div>
     <s:form action="service/service_addServiceType" method="post" enctype="multipart/form-data" onsubmit="return checkType();" cssStyle="width:600px">
 <s:textfield id="type" name="type.type_name" label="一级服务类型名字"></s:textfield>
 <s:hidden name="type.type_leval" value="1"></s:hidden>

<s:submit value="添加服务类型"/>
  
  </s:form>
    
    </div>
  </body>
</html>
