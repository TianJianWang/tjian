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
    
    <title>My JSP 'querysuccess.jsp' starting page</title>
    
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
 
    <s:iterator value="projectList" var="list">
    <ul class="project-one">
                    <li class="project-pic"><a href="#" title="<s:property value="#list.pro_title"/>"><img src="<s:property value="#list.pro_picture"/>" width="223" height="165"></a> </li>
                    <li class="project-title"><a href="#"> <s:property value="#list.pro_title"/> </a></li>
                    <li class="project-function"> <a href="/forums/project-297159" title="此项目有1个话题" class="project-p-on">话题：1</a> <a href="/projects/297159/backers" title="11用户支持此项目" class="project-g-on">支持：11</a> <a href="/projects/discover/10_0_0_0" class="project-g-failure">筹资失败</a> </li>
                    <li class="project-list-stats">
                      <div class="projectpledgedwrap">
                        <div style="width:0%;" class="projectpledged projectpledged-failure"></div>
                      </div>
                      <div class="projectstats">
                        <p class="widtha"><strong>0%</strong>已达到</p>
                        <p class="widthb"><strong><span><b>¥</b>245</span></strong>已获支持</p>
                        <p class="widthd"><strong>11/08/20</strong>结束时间</p>
                      </div>
                    </li>
                  </ul>
    
    </s:iterator>
    <!-- <s:debug></s:debug>-->
  </body>
</html>
