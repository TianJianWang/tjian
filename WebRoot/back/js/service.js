
function required(require){
	if(require.value==null||require.value==""){
		return true ;
	}else
		return false ;
}
function isUrl(str_url) {// 验证url
    var strRegex = "^((https|http|ftp|rtsp|mms)?://)"
            + "?(([0-9a-z_!~*'().&=+$%-]+: )?[0-9a-z_!~*'().&=+$%-]+@)?" // ftp的user@
            + "(([0-9]{1,3}\.){3}[0-9]{1,3}" // IP形式的URL- 199.194.52.184
            + "|" // 允许IP和DOMAIN（域名）
            + "([0-9a-z_!~*'()-]+\.)*" // 域名- www.
            + "([0-9a-z][0-9a-z-]{0,61})?[0-9a-z]\." // 二级域名
            + "[a-z]{2,6})" // first level domain- .com or .museum
            + "(:[0-9]{1,4})?" // 端口- :80
            + "((/?)|" // a slash isn't required if there is no file name
            + "(/[0-9a-z_!~*'().;?:@&=+$,%#-]+)+/?)$";
    var re = new RegExp(strRegex);
    return re.test(str_url);
}
function checkType(){
	var type=document.getElementById("type");
	if(required(type)){
		alert("请输入服务类型！")
		type.focus();
		return false;
	}
	else
		return true;
}


function upload() {
	var title=document.getElementById("com_name");
	var score=document.getElementById("score");
	var com_url=document.getElementById("com_url");
	var short_info=document.getElementById("short_info");
	  var reg = new RegExp("^[0-9]*$");
 

	 var editor=CKEDITOR.instances.editor1.getData();
	 
	 if(required(title))
	   {
	      alert("请输入公司名字！");
	      title.focus(); 
	      return false;
	   }else if(title.value.length>50){ 
		   alert("公司名字长度不能超过50个字!"); 
		   title.focus(); 
		   return false; 
		   }
//	   else if(required(score)){
//		   alert("请为公司服务评分！");
//		   score.focus();
//		   return false;
//	   }
	   else if(!reg.test(score.value)){
		   alert("请输入0-10之间的数字!"); 
		   score.focus();
		   return false;
	   }
	   else if(parseInt(score.value) >10||parseInt(score.value)<0){
		   alert("请输入0-10之间的数字!"); 
		   score.focus();
		   return false;
	   }
	   else if(!isUrl(com_url.value)){
		   alert("请输入正确的网站地址");
		   com_url.focus();
		   return false;
	   }
	   
	   else if(required(short_info))
	   {
		   alert("请输入公司简介内容！");
		   short_info.focus();
		   return false;
	   }
	   else if(short_info.value.length>500)
	   {
		   alert("公司简介内容不能超过500个字！");
		   short_info.focus();
		   return false;
	   }
	   else if(editor==null||editor=="")
	   {
		      alert("请输入公司详细内容！");
		
		      return false;
		   }
	 else{
		 return true; 
	 }
	 
}