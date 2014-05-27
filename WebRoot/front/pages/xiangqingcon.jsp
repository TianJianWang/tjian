<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<div class="ic">More Website Templates @ <a href="http://www.cssmoban.com/" >网页模板</a>!</div>
			<section id="content">
				<div class="padding">
				  <div class="wrapper p4">
                  
                  
                  
                  
                  <div class="layout-c">
  <div id="project_intro" class="projects-home">
<div id="biaoqian"><span>
<a href="/projects">项目</a> / <a href="/projects/discover/0_927158_0_0">时尚科技</a> / <a href="">${project.pro_title }</a></span>
<span class="two">
</span>
</div>
<div class="projects-home-left">
<div class="projects-home-synopsis-open">
<div class="projects-home-synopsis">
<div class="projects-home-left-top" id="project_poster_video">

<img src="myimages/${project.pro_picture }">

</div>
<div class="projects-home-left-synopsis">
 <center> <h3>${project.pro_title }</h3></center>
  
  <ul class="nav nav-tabs" id="myTab">
							<li class="active" style="background-color: lightskyblue;"><a href='#first' data-toggle="tab" >项目详情</a></li>
							<li style="background-color: lightskyblue;"><a href='#second' data-toggle="tab">项目账单</a></li>
		</ul>
		<div class="tab-content">
							<div class="tab-pane  active" id="first">
							
							
							
							${project.pro_info}
							
							
							
							</div>
							
							
							<div class="tab-pane  " id="second">
							<div class="bs-example">
      <table class="table">
        <thead>
          <tr>
            <th>项目标题</th>
            <th>支持金额</th>
            <th>支出金额</th>
            <th>盈余</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td>${project.pro_title }</td>
            <td>￥${finance.inCome }</td>
            <td>￥${finance.outCome }</td>
            <td>￥${finance.bonus }</td>
          </tr>
        </tbody>
      </table>
      <div class="table table-bordered">
      <table class="table table-hover">
        <thead>
          <tr class="success">
            <th> 经办人</th>
			<th>借贷标志</th>
			<th>金额</th>
             <th>时间</th>
             <th>用途</th>
            
          </tr>
        </thead>
        <tbody>
        <s:iterator value="itemList" var="list">
        <tr>
            <td><s:property value="#list.item_person"/></td>
            <td><s:property value="#list.item_type"/></td>
            <td><s:property value="#list.item_money"/></td>
            <td> <s:property value="#list.item_time"/></td>
            <td><s:property value="#list.item_thing"/></td>
           
          </tr>
        
        </s:iterator>
         
        </tbody>
      </table>
      </div>
    </div>
							
							
							</div>
							
		</div>
		<script>
			$(function() {
				$('#myTab a:last').tab('show')
			});
		</script>
  
  <!-- 账单 -->
  
  
     <!-- 账单 -->
    
    
  
  
  
</div>
</div>
</div>
</div>



<div class="projects-home-right">


<div class="projects-right-top-h">
<div class="sidebar-funding">
<div class="sidebar-money-raised-top">
<div class="sidebar-money-raised-num-t"><p>
还有 37 天 / 已筹到
</p></div>
<div class="sidebar-money-raised-num"><b><b>¥</b>118240</b></div>
</div>
<div class="sidebar-percentage">
<span class="sidebar-percentage-progress-span">591%</span>
<div style="width:100%;" class="sidebar-percentage-progress"></div>
</div>
</div>
<div class="sidebar-number-days">
<div class="sidebar-number-days-l">
<a href="/forums/project-343965" title="查看所有话题"><i>13</i><strong>话题</strong></a></div>
<div class="sidebar-number-days-m">
<a href="/projects/343965/backers" title="查看所有支持者"><i>340</i><strong>支持者</strong></a>
</div>
<div class="sidebar-number-days-r"><a href="/projects/343965/reports" title="查看项目报表"><span></span><strong>统计</strong></a></div>
</div>
</div>

<div class="project-by">
<div class="project-by-dotty">项目发起人</div>
<div class="project-by-img"><a href="/1207924" target="_blank">
<img src="myimages/${project.pro_picture }" width="80" height="80"></a>
<div class="project-by-img-r"><a href="/1207924" class="project-by-img-r-author" target="_blank">宝儿智能温度计</a>
<div class="project-by-last-time">上次登录时间：2014/05/13
</div>
<div class="project-by-post">
<a href="/1207924" target="_blank">支持的项目：<span>0</span></a>
<a href="/1207924?filter=created" target="_blank">发起的项目：<span>1</span></a>
</div>
</div>
</div>
</div>
<div class="reward-options">
 <s:iterator value="salepreList" var="list">
 <ul>
<li class="support-amount">
支持 <b>¥</b><s:property value="#list.pre_money"/>
<span>（200 位支持者）</span>
</li>
<li class="supporter-number"><div class="supporter-limit">
<p>限额 <s:property value="#list.pre_limit"/> 位，剩余 0 位</p>
</div></li>
<li class="returns-contents"><p><s:property escape="false" value="#list.pre_info"/></p>

<p>快来挑选宝宝喜欢的颜色吧！ （颜色请写在备注区，如无备注将随机发送）
</p></li>
<li class="returns-contents-img">
<a href="#preview" class="ui-popup-preview"><img src="myimages/${project.pro_picture }"></a>
</li>
<li class="returns-contents-time">
<p><s:property value="#list.type_post"/></p>
<p>预计回报发放时间：项目成功结束后30天内</p>
</li>
<li>
<div class="ui-button ui-button-special-disabled"><span><a href="#">限额已满</a></span></div>
</li>
</ul>
 
 
 
 
 </s:iterator>


</div>
<div class="payment-refund">关于支持与退款：<p></p>
这个项目必须在2014年06月20日 14:22之前达到<b>¥</b>20000的目标才算成功，否则已经支持的订单将取消。<p></p>
订单取消时，您的支持金额将自动退款至<a href="#">【天鉴余额】</a>中。您可以支持其他项目，或在此<a href="#">【申请取现】</a>至您的支付宝或其他付款账户。
</div>

</div>
</div>
<div id="ui_popup_preview" class="ui-popup" style="display:none">
<div class="ui-popup-background">
<div class="ui-popup-content">
<div class="returns-contents-img-popup">
<a href="#close" class="ui-popup-close">关闭</a>
<div class="returns-contents-img-arrow">
<a href="#prev" class="returns-contents-img-l-on" id="ui_popup_preview_prev">上一张</a>
<a href="" class="returns-contents-img-m" target="_blank" id="ui_popup_preview_open">查看原图</a>
<a href="#next" class="returns-contents-img-r-on" id="ui_popup_preview_next">下一张</a>
</div>
<table width="700" border="0" cellspacing="0" cellpadding="0">
<tbody><tr>
<td height="526" align="center" valign="middle" id="ui_popup_preview_image"></td>
</tr>
</tbody></table>
</div>
</div> 
</div>
</div>
<div id="ui_popup_confirm" class="ui-popup ui-popup-blank ui-popup-delete">
<div class="ui-popup-background">
<div class="ui-popup-content"></div>
</div>
</div>



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
												<h3 class="color-1"><strong>Careful</strong>Analysis</h3>
											</div>
										</div>
										<div class="wrapper">
											<a class="button img-indent-r" href="#">>></a>
											<div class="extra-wrap">
												The most of the most professional <br/>最多的最专业人士评价.
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
												<h3 class="color-2"><strong>Quick</strong>Research</h3>
											</div>
										</div>
										<div class="wrapper">
											<a class="button img-indent-r" href="#"></a>
											<div class="extra-wrap">
												The quickest for the most outstanding creative <br/>最快的最优秀创意孵化.
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
												<h3 class="color-3"><strong>New</strong>Strategies</h3>
											</div>
										</div>
										<div class="wrapper">
											<a class="button img-indent-r" href="#">>></a>
											<div class="extra-wrap">
												The most transparent and the most trusted finances <br/>最透明最可信的财务管理.
											</div>
										</div>
									</div>
								</div>
							</div>
					  </div>
				  </div>
				</div>
			</section>