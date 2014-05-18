<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
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
    
    <title>My JSP 'addService.jsp' starting page</title>
    
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
  private int ser_id;
	private String com_name;
	private int score;
	private String com_info;
	private String short_info;
	private String com_url;
  <div>
  <form action="service/service_addService" method="post" enctype="multipart/form-data" onsubmit="return confirm('您确认要添加服务吗？')">
  
  公司名字<input type="text" name="service.com_name"><br>
  服务分数<input type="text" name="service.score"><br>
 
  公司链接<input type="text" name="service.com_url"><br>
  <input type="file" name="imageService.image">
  公司简介<textarea name="service.short_info"  rows="" cols="" ></textarea><br>
  公司介绍<textarea name="service.com_info"  id="editor1" rows="" cols="" ></textarea><br>
  <input type="submit" value="重置"><input type="submit" value="添加服务">
  
  </form>
  <ckfinder:setupCKEditor basePath="/tinajianwang/ckfinder/"
			editor="editor1" />
		<ckeditor:replace replace="editor1"
			basePath="/tianjianwang/ckeditor/" />
  </div>
  </body>
</html>
