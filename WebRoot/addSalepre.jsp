<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
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
    
    <title>My JSP 'addSalepre.jsp' starting page</title>
    
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
  <form method="post" action="ming/pre_addSalepre">
         预售详细信息：<br><br>
        <input type="hidden" name="salepre.pro_id" value="2" >
    邮寄类型：<input type="text" name="salepre.type_post"><br>
 支持费用：<input type="text" name="salepre.pre_money"><br>   
 限制人数：<input type="text" name="salepre.pre_limit"><br>   
 预售详情： 
  <textarea cols="80" id="editor1" name="salepre.pre_info" rows="10"></textarea>
			<input type="submit" value="Submit" id="submit" onclick="return check();" />
		
		<ckfinder:setupCKEditor basePath="/tinajianwang/ckfinder/"
			editor="editor1" />
		<ckeditor:replace replace="editor1"
			basePath="/tianjianwang/ckeditor/" />  
 <input type="submit" value="提交">
    </form>  
    </body>
    </html>
