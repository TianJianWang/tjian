<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

				<div class="row-1">
					<h1>
						<a class="logo" href="front/pages/index.jsp">梦塔Mengta.org</a>
						<strong class="slog">The most creative ideas</strong>
					</h1><span id="login">
					<c:if test="${empty sessionScope.User.email }">
                    <a href="#" onclick="showmodal();" style="font: bolder;color: pink;font-style: normal;margin-right: 5px">登陆</a>|<a href="front/pages/regist.jsp" style="color:orange;margin-right: 5px;margin-left: 5px">注册</a>|<a href="front/pages/forgetPassword.jsp" style="color:deepskyblue padding-left: 10px">忘记密码</a>
				</c:if>
				<c:if test="${!empty sessionScope.User.email}">您好:<a href="front/pages/usercenter.jsp" onclick="return isLogin(${User.email})">${sessionScope.User.email }</a>|<a
						href="user/UserAction_exitLogin">退出</a>
				</c:if></span>
<script type="text/javascript" src="http://qzonestyle.gtimg.cn/qzone/openapi/qc_loader.js" data-appid="101084219" data-redirecturi="http://tjian.org/qq.jsp" charset="utf-8" ></script>

<span id="qqLoginBtn"></span>
<script type="text/javascript">
if(QC.Login.check()){document.getElementById("login").style.display="none";}
else{document.getElementById("login").style.display="inline";}
 QC.Login({
  btnId : "qqLoginBtn",//插入按钮的html标签id
  size : "A_M",//按钮尺寸
  scope : "get_user_info",//展示授权，全部可用授权可填 all
  display : "pc"//应用场景，可选
 }, function(reqData, opts){//登录成功
       //根据返回数据，更换按钮显示状态方法
       var dom = document.getElementById(opts['btnId']),
       _logoutTemplate=[
            //头像
            '<span><img src="{figureurl}" class="{size_key}"/></span>',
            //昵称
            '<span>{nickname}</span>',
            //退出
            '<span><a href="javascript:QC.Login.signOut();">退出</a></span>'    
       ].join("");
       dom && (dom.innerHTML = QC.String.format(_logoutTemplate, {
           nickname : QC.String.escHTML(reqData.nickname), //做xss过滤
           figureurl : reqData.figureurl
       }));
   }, function(opts){//注销成功
        // alert('QQ登录 注销成功');
   }
);
</script>
					<form id="search-form" action="" method="post" enctype="multipart/form-data">
						<fieldset>
							<div class="search-form">					
								<input type="text" name="search" value="Type Keyword Here" onBlur="if(this.value=='') this.value='Type Keyword Here'" onFocus="if(this.value =='Type Keyword Here' ) this.value=''" />
								<a href="#" onClick="document.getElementById('search-form').submit()">Search</a>									
							</div>
						</fieldset>
					</form>
				</div>
