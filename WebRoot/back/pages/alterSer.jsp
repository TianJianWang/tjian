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
    
    <title>My JSP 'alterSer.jsp' starting page</title>
    
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
  
  <body >
  <div>
 
  
<s:form action="service/service_alterService" method="post" enctype="multipart/form-data" onsubmit="return confirm('您确定要修改吗？')" cssStyle="width:600px">
 
 <s:hidden name="service.ser_id" ></s:hidden>
 <input type="hidden"name="service.com_picture" value="<s:property value="service.com_picture"/>"/>
 <input type="hidden"name="service.ser_type.type_id" value="<s:property value="service.ser_type.type_id"/>"/>
 服务类型<input name="" value=" <s:property value="service.ser_type.type_name"/>" disabled="disabled">
 <s:textfield id="com_name" name="service.com_name"  label="公司名字" ></s:textfield><br>
<s:textfield  id="score" name="service.score" label=" 服务分数" ></s:textfield><br>
 
<s:textfield id="com_url" name="service.com_url" label="公司链接" ></s:textfield><br>
<img src="<s:property value="service.com_picture"/>" alt="service.com_name" width="300px" height="200px"/><br>
<s:file id="image" label="更换图片" name="imageService.image" ></s:file><br>
<s:textarea id="short_info" name="service.short_info" rows="5" cols="50"  label="公司简介"></s:textarea><br>
<s:textarea name="service.com_info"  id="editor1" rows="" cols="" label="公司介绍" ></s:textarea><br>
 <s:reset value="重置"/><s:submit value="确认修改" onclick="return upload()"/>
  
  </s:form>
  <ckfinder:setupCKEditor basePath="/tinajianwang/ckfinder/"
			editor="editor1" />
		<ckeditor:replace replace="editor1"
			basePath="/tianjianwang/ckeditor/" />
  </div>
  </body>
</html>
