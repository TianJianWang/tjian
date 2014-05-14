<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'item.jsp' starting page</title>
    
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
    <%request.getParameter("pro_id");%>
   <form action="ming/finance_addItem" method="post">
   <input type="text" name="pro_id" value="<%request.getParameter("pro_id");%>">
   用途：<input type="text" name="item.item_thing"><br>
   费用：<input type="text" name="item.item_money"><br>
   借贷标志：<input type="text" name="item.item_type"><br>
   时间：<input type="text" name="item.item_time"><br>
   经办人：<input type="text" name="item.item_person"><br>
   发票图片：<input type="text" name="item.invoice_pic"><br>
   <input type="submit" value="提交">
   </form>
  </body>
</html>
