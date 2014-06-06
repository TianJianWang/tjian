<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>列出个人的所有项目</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script type="text/javascript" src="back/js/fenye.js"></script>
	<script type="text/javascript">   
	function fn(){
      if(confirm("确定删除吗")){
      return true;
         
      }else{
      return false;
         
      }
}
	</script>
	<script type="text/javascript" src="back/js/fenye.js"></script>
	
  </head>
<!-- 
	<c:if test="{empty session.project}">
    		<c:redirect url="ProjectAction!liatallmyProject.action"></c:redirect>

    	</c:if> -->
  <body>
  


 
    <table align="center" border="1" class="table" height="80%" width="85%">
		<tr>
			<td align="left" class="pro_title">项目名称</td>
			<td align="left" class="pro_wantedMoney">预期资金</td>

			<td align="left" class="pro_endDate">项目结束时间</td>

			<td align="left" class="pro_startdate">已筹资金</td>


			<td align="left" class="updateProject">修改项目</td>
			<td align="left" class="deleteProject">删除项目</td>
		</tr>
		<s:iterator value="projectList" var="list"   >
			<tr>

				<td align="left"><s:property value="#list.pro_title" /></td>
				<td align="left"><s:property value="#list.pro_wantedMoney" /></td>
				<td align="left"><s:property value="#list.pro_endDate" /></td>
				<td align="left"><s:property value="#list.pro_wantedMoney+100" /></td>
				<td align="left"><a	href='<s:url action="xpj/project_listdetailbyid"> 
				<s:param name="pro.pro_id" value="%{#list.pro_id}"></s:param> </s:url>'>修改</a></td>
				<!--       <td align="left" ><a href="xpj/project_updateProject?pro_id=<s:property value="#list.pro_id"/>">修改</a></td>  -->

				<!--   <td align="left" ><a href="xpj/project_updateProject">修改</a></td> -->
				<td align="left"><a	href="xpj/project_deleteProject?pro_id=<s:property  value="#list.pro_id" />"
					onclick="return fn()"> 删除</a></td>
			</tr>
		</s:iterator>
    
    </table>
  <!--  <div align="center">
		        <a href="xpj/project_listprojectbypage?page=1" style="text-decoration: none;font-size: 12px;">首页</a>&nbsp;
			    <a href="xpj/project_listprojectbypage?page=${prepage}"	style="text-decoration: none;font-size: 12px;">上一页</a>&nbsp;
				<a href="xpj/project_listprojectbypage?page=${nextpage }" style="text-decoration: none;font-size: 12px;">下一页</a>&nbsp;
		        <a href="xpj/project_listprojectbypage?page=${allpage}"style="text-decoration: none;font-size: 12px;">尾页</a>&nbsp;
		        当前${page}页/总共${allpage}页&nbsp;每页
		           <select id="count" onchange="alinkPage(${page})">
						<%
							for (int n = 1; n <= 100; n++) {
						%>
						<%
							if (n == Integer.parseInt(request.getAttribute("count")
										.toString())) {
						%>
						<option selected="selected" value="<%=n%>"><%=n%></option>
						<%
							} else {
						%>
						<option value="<%=n%>"><%=n%></option>
						<%
							}
							}
						%>
		         </select> 条/总共${allCount }&nbsp; 
		<input id="page" type="text" style="width:20px;" />
		<input	onclick="gotopage()" type="button" value="GO" />

 -->
	</div>
											


     
    
    
    
    
    
    
  </body>
</html>
