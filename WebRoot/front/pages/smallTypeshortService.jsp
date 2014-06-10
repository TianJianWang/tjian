<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'servicePlayout.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link href="front/css/Service.css" rel="stylesheet" type="text/css" />
</head>

<body>


	<div id="main">
		<div class="type">
		
			<div class="bigtype">
				<a
					href="service/service_queryFrontSmallTypeShortService?nowPage=1&type_id=<s:property
								value="type_id" />"
					target="_self" ><s:property
						value="serviceList[0].type_name" /></a>
			</div>

		</div>
		<s:iterator value="serviceList" status="st">
			<s:if test="#st.count%5==1">
				<br>
				<div
					style="width: 898px;border-top-width: 3px;
	border-top-color: #00CCCC;
	border-top-style: solid; clear: both;"></div>
				<div class="small"
					style=" margin-left:0px ;text-align: left;width: 172px; ">
					<div class="tinyimg">
						<a
							href="service/service_queryFrontDetailService?ser_id=<s:property value="ser_id"/>"
							target="_blank" title="<s:property value="com_name"/>"><img
							src="<s:property value="com_picture"/>" width="170" height="122"
							alt="<s:property value="com_name"/>" /> </a>
					</div>
					<div class="tinyname">
						名字： <a
							href="service/service_queryFrontDetailService?ser_id=<s:property value="ser_id"/>"
							target="_blank" title="<s:property value="com_name"/>"><s:property
								value="com_name" /> </a>
					</div>
					<div class="tinyintro">
						简介：
						<s:property value="short_info" />
					</div>
					<div class="tinygrade">
						分数：<span style="color:#ff6600"> <s:property value="score" />
						</span>
					</div>
					<div class="tinyurl">
						<a href="<s:property value="com_url"/>" target="_blank"> 公司的链接</a>
					</div>
				</div>
			</s:if>
			<s:if test="#st.count%5!=1">
				<div class="small" style="text-align: left;width: 172px;">
					<div class="tinyimg">
						<a
							href="service/service_queryFrontDetailService?ser_id=<s:property value="ser_id"/>"
							target="_blank" title="<s:property value="com_name"/>"><img
							src="<s:property value="com_picture"/>" width="170" height="122"
							alt="<s:property value="com_name"/>" /> </a>
					</div>
					<div class="tinyname">
						名字： <a
							href="service/service_queryFrontDetailService?ser_id=<s:property value="ser_id"/>"
							target="_blank" title="<s:property value="com_name"/>"><s:property
								value="com_name" /> </a>
					</div>
					<div class="tinyintro">
						简介：
						<s:property value="short_info" />
					</div>
					<div class="tinygrade">
						分数：<span style=" color:#ff6600"> <s:property value="score" />
						</span>
					</div>
					<div class="tinyurl">
						<a href="<s:property value="com_url"/>" target="_blank"> 公司的链接</a>
					</div>
				</div>
			</s:if>
		</s:iterator>
	</div>
</body>
</html>
