<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML>
<html lang="en">
<head>
<base href="<%=basePath%>">

<title>申请加入项目组</title>
<meta charset="utf-8">
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link rel="stylesheet" href="front/css/reset.css" type="text/css"
	media="screen">
<link rel="stylesheet" href="front/css/style.css" type="text/css"
	media="screen">
<link rel="stylesheet" href="front/css/layout.css" type="text/css"
	media="screen">
<link rel="stylesheet" href="front/css/bootstrap.css">
	
<style type="text/css">
table.tbcss,table.tbcss td {
	padding: 2px;
	border: 2px;
	color: #FFF;
}
</style>
<script type="text/javascript" src="front/js/jquery-1.6.min.js"></script>
<script src="front/js/cufon-yui.js" type="text/javascript"></script>
<script src="front/js/cufon-replace.js" type="text/javascript"></script>
<script src="front/js/Open_Sans_400.font.js" type="text/javascript"></script>
<script src="front/js/Open_Sans_Light_300.font.js"
	type="text/javascript"></script>
<script src="front/js/Open_Sans_Semibold_600.font.js"
	type="text/javascript"></script>
<script src="front/js/FF-cash.js" type="text/javascript"></script>
<script language="javascript">
function Calendar(objName)
{
this.style = {
borderColor         : "#909eff", //边框颜色
headerBackColor      : "#909EFF", //表头背景颜色
headerFontColor      : "#ffffff", //表头字体颜色
bodyBarBackColor    : "#f4f4f4", //日历标题背景色
bodyBarFontColor    : "#000000", //日历标题字体色
bodyBackColor       : "#ffffff", //日历背景色
bodyFontColor            : "#000000", //日历字体色
bodyHolidayFontColor     : "#ff0000", //假日字体色
watermarkColor       : "#d4d4d4",  //背景水印色
moreDayColor             : "#cccccc"
};
this.showMoreDay = false; //是否显示上月和下月的日期
this.Obj = objName;
this.date = null;
this.mouseOffset = null;
this.dateInput = null;
this.timer = null;
};
Calendar.prototype.toString = function()
{
var str = this.getStyle();
str += '<div Author="alin" class="calendar" style="display:none;" onselectstart="return false" oncontextmenu="return false" id="Calendar">\n';
str += '<div Author="alin" class="cdrWatermark" id="cdrWatermark"></div><div id="cdrBody" style="position:absolute;left:0px;top:0px;z-index:2;width:140px;">';
str += this.getHeader();
str += this.getBody();
str += '</div><div Author="alin" id="cdrMenu" style="position:absolute;left:0px;top:0px;z-index:3;display:none;"  onmouseover="' + this.Obj + '.showMenu(null);" onmouseout="' + this.Obj + '.hideMenu();"></div></div>';
return str;
};
Calendar.prototype.getStyle = function()
{
var str = '<style type="text/css">\n';
str += '.calendar{position:absolute;width:140px!important;width /**/:142px;height:184px!important;height /**/:174px;background-color:'+this.style.bodyBackColor+';border:1px solid ' + this.style.borderColor + ';left:0px;top:0px;z-index:9999;}\n';
str += '.cdrHeader{background-color:'+ this.style.headerBackColor +';width:140px;height:22px;font-size:12px;color:'+this.style.headerFontColor+';}\n';
str += '.cdrWatermark{position:absolute;left:0px;top:55px;width:140px;font-family: Arial Black;font-size:50px;color:'+this.style.watermarkColor+';z-index:1;text-align:center;}\n';
str += '.cdrBodyBar{background-color:' + this.style.bodyBarBackColor + ';font-size:12px;color:' + this.style.bodyBarFontColor + ';width:140px;height:20px;}\n';
str += '.cdrBody{width:140px;height:122px!important; height /**/:110px;font-size:12px;cursor:pointer;color:' + this.style.bodyFontColor + ';}\n';
str += '.dayOver{height:16px;padding:0px;border:1px solid black;background-color:#f4f4f4;}\n';
str += '.dayOut{padding:1px;border:none;height:16px;}\n';
str += '.menuOver{background-color:'+this.style.headerBackColor+';color:'+this.style.headerFontColor+';font-size:12px;}\n';
str += '.headerOver{border:1px solid black;background-color:#f4f4f4;color:black;cursor:default;}\n';
str += '.cdrMenu{font-size:12px;border:1px solid #000000;background-color:#ffffff;cursor:default;width:100%}\n';
str += 'html>body #Calendar{width:142px;174px;}';
str += '</style>\n';
return str;
};
Calendar.prototype.getHeader = function()
{
var str = '<table Author="alin" class="cdrHeader" cellSpacing="2" cellPadding="0"><tr Author="alin" align="center">\n';
str += '<td Author="alin" onmouseover="this.className=\'headerOver\'" onmouseout="this.className=\'\'" id="previousYear" title="上一年份" style="cursor:pointer;width:10px;" onclick="'+this.Obj+'.onChangeYear(false);"><<</td>\n';
str += '<td Author="alin" onmouseover="this.className=\'headerOver\'" onmouseout="this.className=\'\'" id="previousMonth" title="上一月份" style="cursor:pointer;width:10px;" onclick="'+this.Obj+'.onChangeMonth(false);"><</td>\n';
str += '<td Author="alin" onmouseover="this.className=\'headerOver\'" id="currentYear" style="width:50px;" onclick="' + this.Obj + '.showMenu(true);" onmouseout="' + this.Obj + '.hideMenu();this.className=\'\';">0</td>\n';
str += '<td Author="alin" onmouseover="this.className=\'headerOver\'" id="currentMonth" onclick="' + this.Obj + '.showMenu(false);" onmouseout="' + this.Obj + '.hideMenu();this.className=\'\';">0</td>\n';
str += '<td Author="alin" onmouseover="this.className=\'headerOver\'" onmouseout="this.className=\'\'" id="nextMonth" title="下一月份" style="cursor:pointer;width:10px;" onclick="'+this.Obj+'.onChangeMonth(true);">></td>\n';
str += '<td Author="alin" onmouseover="this.className=\'headerOver\'" onmouseout="this.className=\'\'" id="nextYear" title="下一年份" style="cursor:pointer;width:10px;" onclick="'+this.Obj+'.onChangeYear(true);">>></td></tr>\n';
str += '</table>\n';
return str;
};
Calendar.prototype.getBody = function()
{
var n = 0;
var str = this.getBodyBar();
str += '<table Author="alin" class="cdrBody" cellSpacing="2" cellPadding="0">\n';
for(i = 0; i < 6; i++)
{
str += '<tr Author="alin" align="center">';
for(j = 0; j < 7; j++)
{
str += '<td Author="alin" class="dayOut" id="cdrDay'+(n++)+'" width="13%"></td>\n';
}
str += '</tr>';
}
str += '</table>\n';
str += '<table Author="alin" class="cdrBodyBar" cellSpacing="2" cellPadding="0"><tr align="center" Author="alin"><td Author="alin" style="cursor:pointer;" onclick="'+this.Obj+'.getToday();">今天：'+new Date().toFormatString("yyyy年mm月dd日")+'</td></tr></table>\n';
return str;
};
Calendar.prototype.getBodyBar = function()
{
var str = '<table Author="alin_bar" id="cdrBodyBar" class="cdrBodyBar" style="cursor:move;" cellSpacing="2" cellPadding="0"><tr Author="alin_bar" align="center">\n';
var day = new Array('日','一','二','三','四','五','六');
for(i = 0; i < 7; i++)
{
str += '<td Author="alin_bar">' + day[i] + '</td>\n';
}
str += '</tr></table>';
return str;
}
Calendar.prototype.getYearMenu = function(year)
{
var str = '<table Author="alin" cellSpacing="0" class="cdrMenu" cellPadding="0">\n';
for(i = 0; i < 10; i++)
{
var _year = year + i;
var _date = new Date(_year,this.date.getMonth(),this.date.getDate());
str += '<tr Author="alin" align="center"><td Author="alin" width="13%" height="16" ';
if(this.date.getFullYear() != _year)
{
str += 'onmouseover="this.className=\'menuOver\'" onmouseout="this.className=\'\'" ';
}
else
{
str += 'class="menuOver"';
}
str += 'onclick="' + this.Obj + '.bindDate(\'' + _date.toFormatString("-") + '\')">' + _year + '年</td>\n';
str += '</tr>';
}
str += '<tr Author="alin" align="center"><td Author="alin"><table Author="alin" style="font-size:12px;width:100%;" cellSpacing="0" cellPadding="0">\n';
str += '<tr Author="alin" align="center"><td Author="alin" onmouseover="this.className=\'menuOver\'" onmouseout="this.className=\'\'" onclick="'+this.Obj+'.getYearMenu('+ (year - 10) + ')"><<</td>\n';
str += '<td Author="alin" onmouseover="this.className=\'menuOver\'" onmouseout="this.className=\'\'" onclick="'+this.Obj+'.getYearMenu('+ (year + 10) +')">>></td><tr>\n';
str += '</table></td></tr>\n';
str += '</table>';
var _menu = getObjById("cdrMenu");
_menu.innerHTML = str;
};
Calendar.prototype.getMonthMenu = function()
{
var str = '<table Author="alin" cellSpacing="0" class="cdrMenu" cellPadding="0">\n';
for(i = 1; i <= 12; i++)
{
var _date = new Date(this.date.getFullYear(),i-1,this.date.getDate());
str += '</tr><tr Author="alin" align="center"><td Author="alin" height="16" ';
if(this.date.getMonth() + 1 != i)
{
str += 'onmouseover="this.className=\'menuOver\'" onmouseout="this.className=\'\'" ';
}
else
{
str += 'class="menuOver"';
}
str += 'onclick="' + this.Obj + '.bindDate(\'' + _date.toFormatString("-") + '\')">'+i+'月</td></tr>\n';
}
str += '</table>';
var _menu = getObjById("cdrMenu");
_menu.innerHTML = str;
};
Calendar.prototype.show = function()
{
if (arguments.length >  3  || arguments.length == 0)
{
alert("对不起！传入参数不对！" );
return;
}
var _date = null;
var _evObj = null;
var _initValue = null
for(i = 0; i < arguments.length; i++)
{
if(typeof(arguments[i]) == "object" && arguments[i].type == "text")
{_date = arguments[i];}
else if(typeof(arguments[i]) == "object")
{_evObj = arguments[i];}
else if(typeof(arguments[i]) == "string")
{_initValue = arguments[i];}
}
_evObj = _evObj || _date;
inputObj = _date;
targetObj = _evObj
if(!_date){alert("传入参数错误!"); return;}
this.dateInput = _date;
_date = _date.value;
if(_date == "" && _initValue) _date = _initValue;
this.bindDate(_date);
var _target = getPosition(_evObj);
var _obj = getObjById("Calendar");
_obj.style.display = "";
_obj.style.left = _target.x + 'px';
if((document.body.clientHeight - (_target.y + _evObj.clientHeight)) >= _obj.clientHeight)
{
_obj.style.top = (_target.y + _evObj.clientHeight) + 'px';
}
else
{
_obj.style.top = (_target.y - _obj.clientHeight) + 'px';
}
};
Calendar.prototype.hide = function()
{
var obj = getObjById("Calendar");
obj.style.display = "none";
};
Calendar.prototype.bindDate = function(date)
{
var _monthDays = new Array(31,30,31,30,31,30,31,31,30,31,30,31);
var _arr = date.split('-');
var _date = new Date(_arr[0],_arr[1]-1,_arr[2]);
if(isNaN(_date)) _date = new Date();
this.date = _date;
this.bindHeader();
var _year = _date.getFullYear();
var _month = _date.getMonth();
var _day = 1;
var _startDay = new Date(_year,_month,1).getDay();
var _previYear = _month == 0 ? _year - 1 : _year;
var _previMonth = _month == 0 ? 11 : _month - 1;
var _previDay = _monthDays[_previMonth];
if (_previMonth == 1) _previDay =((_previYear%4==0)&&(_previYear%100!=0)||(_previYear%400==0))?29:28;
_previDay -= _startDay - 1;
var _nextDay = 1;
_monthDays[1] = ((_year%4==0)&&(_year%100!=0)||(_year%400==0))?29:28;
for(i = 0; i < 40; i++)
{
var _dayElement = getObjById("cdrDay" + i);
_dayElement.onmouseover = Function(this.Obj + ".onMouseOver(this)");
_dayElement.onmouseout = Function(this.Obj + ".onMouseOut(this)");
_dayElement.onclick = Function(this.Obj + ".onClick(this)");
this.onMouseOut(_dayElement);
_dayElement.style.color = "";
if(i < _startDay)
{
//获取上一个月的日期
if(this.showMoreDay)
{
var _previDate = new Date(_year,_month - 1,_previDay);
_dayElement.innerHTML = _previDay;
_dayElement.title = _previDate.toFormatString("yyyy年mm月dd日");
_dayElement.value = _previDate.toFormatString("-");
_dayElement.style.color = this.style.moreDayColor;
_previDay++;
}else
{
_dayElement.innerHTML = "";
_dayElement.title = "";
}
}
else if(_day > _monthDays[_month])
{
//获取下个月的日期
if(this.showMoreDay)
{
var _nextDate = new Date(_year,_month + 1,_nextDay);
_dayElement.innerHTML = _nextDay;
_dayElement.title = _nextDate.toFormatString("yyyy年mm月dd日");
_dayElement.value = _nextDate.toFormatString("-");
_dayElement.style.color = this.style.moreDayColor;
_nextDay++;
}else
{
_dayElement.innerHTML = "";
_dayElement.title = "";
}
}
else if(i >= new Date(_year,_month,1).getDay() && _day <= _monthDays[_month])
{
//获取本月日期
_dayElement.innerHTML = _day;
if(_day == _date.getDate())
{
this.onMouseOver(_dayElement);
_dayElement.onmouseover = Function("");
_dayElement.onmouseout = Function("");
}
if(this.isHoliday(_year,_month,_day))
{
_dayElement.style.color = this.style.bodyHolidayFontColor;
}
var _curDate = new Date(_year, _month, _day);
_dayElement.title =  _curDate.toFormatString("yyyy年mm月dd日");
_dayElement.value = _curDate.toFormatString("-");
_day++;
}
else
{
_dayElement.innerHTML = "";
_dayElement.title = "";
}
}
var _menu = getObjById("cdrMenu");
_menu.style.display = "none";
};
Calendar.prototype.bindHeader = function()
{
var _curYear = getObjById("currentYear");
var _curMonth = getObjById("currentMonth");
var _watermark = getObjById("cdrWatermark");
_curYear.innerHTML = this.date.toFormatString("yyyy年");
_curMonth.innerHTML =  this.date.toFormatString("mm月");
_watermark.innerHTML = this.date.getFullYear();
};
Calendar.prototype.getToday = function()
{
var _date = new Date();
this.bindDate(_date.toFormatString("-"));
};
Calendar.prototype.isHoliday = function(year,month,date)
{
var _date = new Date(year,month,date);
return (_date.getDay() == 6 || _date.getDay() == 0);
};
Calendar.prototype.onMouseOver = function(obj)
{
obj.className = "dayOver";
};
Calendar.prototype.onMouseOut = function(obj)
{
obj.className = "dayOut";
};
Calendar.prototype.onClick = function(obj)
{
if(obj.innerHTML != "")  this.dateInput.value = obj.value;
this.hide();
};
Calendar.prototype.onChangeYear = function(isnext)
{
var _year = this.date.getFullYear();
var _month = this.date.getMonth() + 1;
var _date = this.date.getDate();
if(_year > 999 && _year <10000)
{
if(isnext){_year++;}else{ _year --;}
}
else
{
alert("年份超出范围（1000-9999）!");
}
this.bindDate(_year + '-' + _month + '-' + _date);
};
Calendar.prototype.onChangeMonth = function(isnext)
{
var _year = this.date.getFullYear();
var _month = this.date.getMonth() + 1;
var _date = this.date.getDate();
if(isnext){ _month ++;} else {_month--;}
if(_year > 999 && _year <10000)
{
if(_month < 1) {_month = 12; _year--;}
if(_month > 12) {_month = 1; _year++;}
}
else
{
alert("年份超出范围（1000-9999）!");
}
this.bindDate(_year + '-' + _month + '-' + _date);
};
Calendar.prototype.showMenu = function(isyear)
{
var _menu = getObjById("cdrMenu");
if(isyear != null)
{
var _obj = (isyear)? getObjById("currentYear") : getObjById("currentMonth");
if(isyear)
{
this.getYearMenu(this.date.getFullYear() - 5);
}
else
{
this.getMonthMenu();
}
_menu.style.top = (_obj.offsetTop + _obj.offsetHeight) + 'px';
_menu.style.left = _obj.offsetLeft + 'px';
_menu.style.width = _obj.offsetWidth + 'px';
}
if (this.timer != null) clearTimeout(this.timer);
_menu.style.display="";
}
Calendar.prototype.hideMenu = function()
{
var _obj = getObjById("cdrMenu");
this.timer = window.setTimeout(function(){_obj.style.display='none';},500);
}
Number.prototype.NaN0 = function()
{
return isNaN(this) ? 0 : this;
}
Date.prototype.toFormatString = function(fs)
{
if(fs.length == 1)
{
return this.getFullYear() + fs + (this.getMonth() + 1) + fs + this.getDate();
}
fs = fs.replace("yyyy",this.getFullYear());
fs = fs.replace("mm",(this.getMonth() + 1));
fs = fs.replace("dd",this.getDate());
return fs;
}
/************公用方法及变量**************/
var inputObj = null;
var targetObj = null;
var dragObj = null;
var mouseOffset = null;
function getObjById(obj)
{
if(document.getElementById)
{
return document.getElementById(obj);
}
else
{
alert("浏览器不支持!");
}
}
function mouseCoords(ev)
{
if(ev.pageX || ev.pageY){
return {x:ev.pageX, y:ev.pageY};
}
return {
x:ev.clientX + document.body.scrollLeft - document.body.clientLeft,
y:ev.clientY + document.body.scrollTop  - document.body.clientTop
};
}
function getPosition(e)
{
var left = 0;
var top  = 0;
while (e.offsetParent){
left += e.offsetLeft + (e.currentStyle?(parseInt(e.currentStyle.borderLeftWidth)).NaN0():0);
top  += e.offsetTop  + (e.currentStyle?(parseInt(e.currentStyle.borderTopWidth)).NaN0():0);
e     = e.offsetParent;
}
left += e.offsetLeft + (e.currentStyle?(parseInt(e.currentStyle.borderLeftWidth)).NaN0():0);
top  += e.offsetTop  + (e.currentStyle?(parseInt(e.currentStyle.borderTopWidth)).NaN0():0);
return {x:left, y:top};
}
function getMouseOffset(target, ev)
{
ev = ev || window.event;
var docPos    = getPosition(target);
var mousePos  = mouseCoords(ev);
return {x:mousePos.x - docPos.x, y:mousePos.y - docPos.y};
}
function closeCalendar(evt){
evt = evt || window.event;
var _target= evt.target || evt.srcElement;
if(!_target.getAttribute("Author") &&  _target != inputObj && _target != targetObj)
{
getObjById("Calendar").style.display = "none";
}
}
function dragStart(evt){
evt = evt || window.event;
var _target= evt.target || evt.srcElement;
if(_target.getAttribute("Author") == "alin_bar")
{
dragObj = getObjById("Calendar");
mouseOffset = getMouseOffset(dragObj, evt);
}
}
function drag(evt)
{
evt =  evt || window.event;
if(dragObj)
{
var mousePos = mouseCoords(evt);
dragObj.style.left = (mousePos.x - mouseOffset.x) + 'px';
dragObj.style.top  = (mousePos.y - mouseOffset.y) + 'px';
}
}
//拖动结束
function dragEnd(evt)
{
dragObj = null;
}
/***********End 公用方法*********/
document.onclick = closeCalendar;
document.onmousedown = dragStart;
document.onmousemove = drag;
document.onmouseup = dragEnd;
/*********结束**********/
var c = new Calendar("c");
document.write(c);
</script>
<!--[if lt IE 7]>
    <div style=' clear: both; text-align:center; position: relative;'>
        <a href="http://www.microsoft.com/windows/internet-explorer/default.aspx?ocid=ie6_countdown_bannercode"><img src="http://www.theie6countdown.com/images/upgrade.jpg" border="0"  alt="" /></a>
    </div>
<![endif]-->
<!--[if lt IE 9]>
    <script type="text/javascript" src="js/html5.js"></script>
    <link rel="stylesheet" href="css/ie.css" type="text/css" media="screen">
<![endif]-->

<link href="front/css/h-countent.css" rel="stylesheet" type="text/css">
</head>
<body id="page2">

	pu<!-- header -->
	<div class="bg">
		<div class="main">
			<header>
				<div class="row-1">
					<h1>
						<a class="logo" href="front/pages/index.jsp">Point.co</a> <strong
							class="slog">The most creative ideas</strong>
					</h1>
					<form id="search-form" action="" method="post"
						enctype="multipart/form-data">
						<fieldset>
							<div class="search-form" style="height: 38px;" >
								<input type="text" name="search" style="width: 165px;" value="Type Keyword Here"
									onBlur="if(this.value=='') this.value='Type Keyword Here'"
									onFocus="if(this.value =='Type Keyword Here' ) this.value=''" />
								<a href="#"
									onClick="document.getElementById('search-form').submit()">Search</a>
							</div>
						</fieldset>
					</form>
				</div>
				<div class="row-2">
					<nav>
						<ul class="menu">
							<li><a href="front/pages/index.jsp">Home Page</a></li>
							<li><a href="front/pages/list.jsp">Order
									and Invest</a></li>
							<li><a href="front/pages/services.jsp">Audit Accounts</a></li>
							<li><a  class="active" href="front/pages/products.jsp">Join Projects</a></li>
							<li class="last-item"><a href="contacts.html">Submit
									Project</a></li>
						</ul>
					</nav>
				</div>
			</header>
			<!-- content -->
			<div class="ic">
				More Website Templates @ <a href="http://www.cssmoban.com/">网页模板</a>!
			</div>
			<section id="content">
				<div class="padding">
					<div class="wrapper p4">
						<div class="col-3">
							<div class="indent">
							
							
							
							
							
							
							
								<div class="h-content">
									<div class="h-title">
										<div class="h-pic">筹资中</div>
										<div class="h-t">
											<a href="http://www.demohour.com/projects/discover/3_0_0_0">最新上线</a>
											<a href="http://www.demohour.com/projects/discover/3_0_0_2">金额最高</a>
											<a href="http://www.demohour.com/projects/discover/3_0_0_5">关注最多</a>
											<a href="http://www.demohour.com/projects/discover/3_0_0_3">话题最多</a>
											<span>|</span> <a
												href="http://www.demohour.com/projects/discover/3_927158_0_0">时尚科技</a>
											<a
												href="http://www.demohour.com/projects/discover/3_927151_0_0">创意设计</a>
											<a
												href="http://www.demohour.com/projects/discover/3_927162_0_0">文艺生活</a>
											<a href="http://www.demohour.com/projects/discover/3_0_0_0">更多筹资</a>
										</div>
									</div>
									</div>
					
					
									
			<div><font style="font-size: 20px;color: gray;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;有能耐上天鉴！您现在申请加入<font style="color: skyblue">${team.name}</font>团队,把您想加入<br><br>
			该团队的理由和想法告诉他们吧！</font></div>
		
			<br><br>
			<form action="ming/team_addTeamApply" method="post">
			<input type="hidden" name="apply.team_id" value="${team.team_id }"/>
			<input type="hidden" name="apply.user_id" value="1"/>
                
                 <label for="input2" class="col-sm-2 control-label">申请时间</label>
             <div class="col-sm-10">
            
            
             <input type="text" name="apply.time"  class="form-control"  id="input2" placeholder="点击获取时间" onfocus="c.showMoreDay = false;c.show(this);">
            </div>
          </div>
            <br><br> <br><br> 
             <div class="form-group">
            <div>
                 <label for="input2" class="col-sm-2 control-label">我的留言：</label>
                 </div>
            <div class="col-sm-10">
                      <textarea class="form-control"  name="apply.message" rows="3"></textarea>
            </div>
            </div>
            <br><br>  <br><br> <br><br>  <br><br>
          <center>  <button type="submit" data-loading-text="正在加载..." class="btn btn-primary">
         申请加入
            </button></center>
            </form>
  
  
  
  
  
  
  
  
  
  
  
 
					
									
									
									
									
									
									
								
								
							</div>
						</div>
					</div>
					<div class="box-bg">
						<div class="wrapper">
							<div class="col-1">
								<div class="box first">
									<div class="pad">
										<div class="wrapper indent-bot">
											<strong class="numb img-indent2">01</strong>
											<div class="extra-wrap">
												<h3 class="color-1">
													<strong>Careful</strong>Analysis
												</h3>
											</div>
										</div>
										<div class="wrapper">
											<a class="button img-indent-r" href="#">>></a>
											<div class="extra-wrap">
												The most of the most professional <br /> 最多的最专业人士评价.
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="col-1">
								<div class="box second">
									<div class="pad">
										<div class="wrapper indent-bot">
											<strong class="numb img-indent2">02</strong>
											<div class="extra-wrap">
												<h3 class="color-2">
													<strong>Quick</strong>Research
												</h3>
											</div>
										</div>
										<div class="wrapper">
											<a class="button img-indent-r" href="#"></a>
											<div class="extra-wrap">
												The quickest for the most outstanding creative <br />
												最快的最优秀创意孵化.
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="col-2">
								<div class="box third">
									<div class="pad">
										<div class="wrapper indent-bot">
											<strong class="numb img-indent2">03</strong>
											<div class="extra-wrap">
												<h3 class="color-3">
													<strong>New</strong>Strategies
												</h3>
											</div>
										</div>
										<div class="wrapper">
											<a class="button img-indent-r" href="#">>></a>
											<div class="extra-wrap">
												The most transparent and the most trusted finances <br />
												最透明最可信的财务管理.
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</section>
			<!-- footer -->
			<footer>
				<div class="row-top">
					<div class="row-padding">
						<div class="wrapper">
							<div class="col-1">
								<h4>Address:</h4>
								<dl class="address">
									<dt>
										<span>Country:</span>USA
									</dt>
									<dd>
										<span>City:</span>San Diego
									</dd>
									<dd>
										<span>Address:</span>Beach st. 54
									</dd>
									<dd>
										<span>Email:</span><a href="#">miguelyu@gmail</a>
									</dd>
								</dl>
							</div>
							<div class="col-2">
								<h4>Follow Us:</h4>
								<ul class="list-services">
									<li class="item-1"><a href="#">Facebook</a></li>
									<li class="item-2"><a href="#">Twitter</a></li>
									<li class="item-3"><a href="#">LinkedIn</a></li>
								</ul>
							</div>
							<div class="col-3">
								<h4>College Division:</h4>
								<ul class="list-1">
									<li><a href="#">广州 SCUT SYSU</a></li>
									<li><a href="#">上海 Fudan Tongji</a></li>
									<li><a href="#">北京 Tsinghua PKU</a></li>
									<li><a href="#">河南 ZZU Henan</a></li>
								</ul>
							</div>
							<div class="col-4">
								<div class="indent3">
									<strong class="footer-logo">Tjian.<strong>org</strong></strong>
									<strong class="phone"><strong>Toll Free:</strong>
										1-800-567-8934</strong>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="row-bot">
					<div class="aligncenter">
						<p class="p0">Copyright © 2014 天鉴网 Tjian.org</p>
						Reserved by <a href="http://www.cssmoban.com/" title="网页模板"
							target="_blank">天使投资品鉴联合会</a>
						<script type="text/javascript">
							var cnzz_protocol = (("https:" == document.location.protocol) ? " https://"
									: " http://");
							document
									.write(unescape("%3Cspan id='cnzz_stat_icon_1000354874'%3E%3C/span%3E%3Cscript src='"
											+ cnzz_protocol
											+ "s22.cnzz.com/z_stat.php%3Fid%3D1000354874%26show%3Dpic' type='text/javascript'%3E%3C/script%3E"));
						</script>
						<br>
						<!-- {%FOOTER_LINK} -->
					</div>
				</div>
			</footer>
		</div>
	</div>
	<script src="front/js/bootstrap.js"></script>
<script src="front/js/jquery-1.6.min.js"></script>
	<script type="text/javascript">
		Cufon.now();
	</script>
</body>
</html>

