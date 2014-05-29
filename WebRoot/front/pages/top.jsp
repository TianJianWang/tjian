<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

				<div class="row-1">
					<h1>
						<a class="logo" href="front/pages/index.jsp">梦塔Mengta.org</a>
						<strong class="slog">The most creative ideas</strong>
					</h1>
					<c:if test="${empty sessionScope.User.email }">
                    <a href="#" onclick="showmodal();" style="font: bolder;color: pink;font-style: normal;margin-right: 5px">登陆</a>|<a href="front/pages/regist.jsp" style="color:orange;margin-right: 5px;margin-left: 5px">注册</a>|<a href="front/pages/forgetPassword.jsp" style="color:deepskyblue padding-left: 10px">忘记密码</a>
				</c:if>
				<c:if test="${!empty sessionScope.User.email}">您好:<a href="user/UserAction_listUserByEmail?email=${sessionScope.User.email}">${sessionScope.User.email }</a>|<a
						href="user/UserAction_exitLogin">退出</a>
				</c:if>
					<form id="search-form" action="" method="post" enctype="multipart/form-data">
						<fieldset>
							<div class="search-form">					
								<input type="text" name="search" value="Type Keyword Here" onBlur="if(this.value=='') this.value='Type Keyword Here'" onFocus="if(this.value =='Type Keyword Here' ) this.value=''" />
								<a href="#" onClick="document.getElementById('search-form').submit()">Search</a>									
							</div>
						</fieldset>
					</form>
				</div>
