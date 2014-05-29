 
/*
 * 判断密码的位数及设置难度 
 * 
 */
 function chk() {
		var ele = document.getElementById("passwordId");
		var val = ele.value;
		if (val.length < 6) {
			alert("最少六位");
			return;
		} else {
			var easy = 0;//用数值来表示密码的复杂度
			//先判断是否是全部相同的字符
			var len = val.length;
			len = len - 1;
			p = new RegExp("(.)\\1{" + len + "}");//匹配相同的N个字符
			if (p.test(val)) {
				easy = 0;//0为非常简
			} else {
				//声明只包含a-z的字符正则 
				var p = /[a-z]/g;//如果只包含小写的字母
				var chars = val.match(p);
				if (chars) {
					easy++;//
				}
				p = /[0-9]/g;//如果再包含数字则再加
				chars = val.match(p);
				if (chars) {
					easy++;
				}
				//如果再包含
				p = /(_|#|@|!)/;
				chars = val.match(p);
				if (chars) {
					easy++;
				}
			}
		}
		if (easy == 1) {
			window.document.getElementById("repasswordError").innerHTML = '<img src="font/indeximages/yes.png"/> 密码太过简单';
		} else if (easy == 2) {
			window.document.getElementById("repasswordError").innerHTML ='<img src="font/indeximages/yes.png"/> <font color="orange">密码一般!</font>';
		} else if (easy == 3) {
			window.document.getElementById("repasswordError").innerHTML ='<img src="font/indeximages/yes.png"/> <font color="orange">密码强度很好!</font>';
		} else {
			window.document.getElementById("repasswordError").innerHTML = '<img src="font/indeximages/yes.png"/> <font color="orange">密码极其简单!</font>';
		}
	}
  
 	
 
 	/*
 	 * 
 	 * 判断各个信息是否正确填写
 	 */
 	function recoverDefaultText() { 
		var username = window.document.getElementById("userEmailId").value;
		var password= window.document.getElementById("passwordId").value;
		var repassword = window.document.getElementById("repasswordId").value;
		 

		        
		        
		if (username == '' || username.length == 0) {
			window.document.getElementById("userEmailId").value = "请输入用户邮箱!";
			window.document.getElementById("userEmailError").innerHTML = '<font color="red">温馨提示:请输入注册邮箱!</font>';
			return false;
		} else if (username == '请输入用户邮箱!') {
			window.document.getElementById("userEmailError").innerHTML = '<font color="red">温馨提示:请输入注册邮箱!</font>';
			return false;
		} else {
		   
			window.document.getElementById("userEmailError").innerHTML = '<img src="font/indeximages/yes.png"/>';
			if (password == '' || password.length == 0) {
			window.document.getElementById("passwordError").innerHTML = '<font color="red">温馨提示:请输密码!</font>';
			return false;
		} else if(password.length>15){
			window.document.getElementById("passwordError").innerHTML = '<font color="red">温馨提示:密码不能超过15位!</font>';
		}else if(password.length<6){
			window.document.getElementById("passwordError").innerHTML = '<font color="red">温馨提示:密码不能少于6位!</font>';
		}
			
			else {
			window.document.getElementById("passwordError").innerHTML = '<img src="font/indeximages/yes.png"/>';
			if (repassword == '' || repassword.length == 0) {
			window.document.getElementById("repasswordError").innerHTML = '<font color="red">温馨提示:再次请输密码!</font>';
			return false;
		} else if (repassword == password) {
		       chk();
		      
					if(verify==''||verify.lenght==0){
							   window.document.getElementById("codeError").innerHTML = '<font color="red">温馨提示:请输入验证码!</font>';
						  }else if(verify.toLocaleLowerCase()==show.toLocaleLowerCase()){
	             
	              window.document.getElementById("codeError").innerHTML = '<img src="font/indeximages/yes.png"/>';
	    
	                         }else{
								 
								  window.document.getElementById("codeError").innerHTML = '<font color="red">温馨提示:验证码错误!</font>';
							 }
					  }
				  }
		
		} else {
			window.document.getElementById("repasswordError").innerHTML = '<font color="red"> 输入密码不一致！请重输！</font>';
		}
		
		}
		}

		
		}
		
		
		
		 //在全局 定义验证码
		
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
		
		
	
