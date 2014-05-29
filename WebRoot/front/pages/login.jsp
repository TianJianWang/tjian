<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>登陆界面</title>
    <meta charset="utf-8">
      <META NAME="GENERATOR" Content="oscar999"> 
     <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <meta NAME="GENERATOR" Content="oscar999">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
 <meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<script src="front/js/jquery-2.1.1.js" type="text/javascript"></script>
<script src="front/js/bootstrap.js" type="text/javascript"></script>
<link href="front/css/bootstrap.css" rel="stylesheet" type="text/css">
<link href="front/css/h-countent.css" rel="stylesheet" type="text/css">
<link href="css/reset.css" rel="stylesheet" type="text/css" media="screen">
<link href="css/style.css" rel="stylesheet" type="text/css" media="screen">
<link href="css/layout.css" rel="stylesheet" type="text/css" media="screen">
<script src="js/jquery-1.6.min.js" type="text/javascript"></script>
<script src="js/cufon-yui.js" type="text/javascript"></script>
<script src="js/cufon-replace.js" type="text/javascript"></script>
<script src="js/Open_Sans_400.font.js" type="text/javascript"></script>
<script src="js/Open_Sans_Light_300.font.js" type="text/javascript"></script>
<script src="js/Open_Sans_Semibold_600.font.js" type="text/javascript"></script>
<script src="js/tms-0.3.js" type="text/javascript"></script>
<script src="js/tms_presets.js" type="text/javascript"></script>
<script src="js/jquery.easing.1.3.js" type="text/javascript"></script>
<script src="js/FF-cash.js" type="text/javascript"></script>
 
    <link href="front/css/bootstrap.css" rel="stylesheet" type="text/css">
    <link href="front/css/h-countent.css" rel="stylesheet" type="text/css">
    <script type="text/javascript">
  function createCode(){ 
			
			var code ;
		code = new Array();
		var codeLength = 4;//验证码的长度
		var checkCode = document.getElementById("checkCode");
		checkCode.value = "";

		var selectChar = new Array(2,3,4,5,6,7,8,9,'A','B','C','D','E','F','G','H','J','K','L','M','N','P','Q','R','S','T','U','V','W','X','Y','Z');

		for(var i=0;i<codeLength;i++) {
		   var charIndex = Math.floor(Math.random()*32);
		   code +=selectChar[charIndex];
		}
		if(code.length != codeLength){
		   createCode();
		}
		checkCode.value = code;
		}

		function validate () {
		var inputCode = document.getElementById("input1").value.toUpperCase();

		if(inputCode.length <=0) {
		   alert("请输入验证码！");
		   return false;
		}
		else if(inputCode != code ){
		   alert("验证码输入错误！");
		   createCode();
		   return false;
		}
		else {
		   alert("成功！");
		   return true;
		}
		}
  </script>
     <!--<link href="front/css/bootstrap.min.css" rel="stylesheet" type="text/css">
    <link href="css/ie.css" rel="stylesheet" type="text/css">
    <link href="css/layout.css" rel="stylesheet" type="text/css">
    <link href="css/reset.css" rel="stylesheet" type="text/css">
    <link href="css/style.css" rel="stylesheet" type="text/css">-->

	<!--<link rel="stylesheet" type="text/css" href="styles.css">-->
  </head>
  
  <body onload="createCode();">
  <center> 
 				
<form action="user/UserAction_checkLogin" method="post" style="width: 500px;height: 500px;" >
<div class="form-group">
								<label for="inputEmail3" class="col-sm-2 control-label">邮箱：</label>
								<div class="col-sm-10">
									<input type="email" class="form-control" name="user.email" id="inputEmail"
										placeholder="邮箱" style="width: 50%"   value="">
								</div>
							</div>
							<div class="form-group">
								<label for="inputPassword3" class="col-sm-2 control-label">密码:</label>
								<div class="col-sm-10">
									<input type="password" class="form-control" name="user.password" id="inputPassword"
										placeholder="密码" style="width: 50%"    value="">
								</div>
							</div>
							<div class="form-group">
								<label for="inputPassword3" class="col-sm-2 control-label">校验码:</label>
								<div class="col-sm-10">
								<input type="text" class="form-control"  id="Code"
										placeholder="校验码" style="width: 50%;margin-bottom: 20px"  onblur="validate();"   value=""/>
 
                            <input type="button" id="checkCode" class="code" style="width:100px;height: 30px;float: none;" onclick="createCode()"  /> 
                        
                            <input type="button" value="看不清，还一张" onclick="createCode()" />
										<span id="repasswordError"></span>
								</div>
							</div>
							
<input type="reset" value="重置" style="margin-left:  50px"/>
<input type="button" value="提交" onclick="window.document.forms[0].submit();" style="margin-left:  30px"/>
</form>   
</center>
  </body>
</html>
