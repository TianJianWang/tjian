<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://ckfinder.com" prefix="ckfinder"%>
<%@taglib uri="http://ckeditor.com" prefix="ckeditor"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
  <!-- 此部分为通过jstl语言判断页面是否通过Action之后跳转到该页面 -->
  
  
  <c:if test="${empty SessionScope.projectList} " >
  
    <c:redirect url="ProjectAction!queryProject.action"></c:redirect>
    <c>
  </c:if>>
   <textarea cols="80" id="editor1" name="content1" rows="10"></textarea>
			<input type="submit" value="Submit" id="submit"  />
		
		<ckfinder:setupCKEditor basePath="/tinajianwang/ckfinder/"
			editor="editor1" />
		<ckeditor:replace replace="editor1"
			basePath="/tianjianwang/ckeditor/" />
  </body>
</html>
