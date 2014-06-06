<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<%@taglib prefix="s" uri="/struts-tags" %>

<script type="text/javascript">   
	function fn(){
      if(confirm("确定删除吗")){
      return true;
         
      }else{
      return false;
         
      }
}
	</script>
	
<!-- content -->
<div class="ic">
	More Website Templates @ <a href="http://www.cssmoban.com/">网页模板</a>!
</div>
<section id="content">
	<div class="padding">
		<div class="wrapper p4">
			<div class="col-3">
				<div class="indent">
                      <center>
				
     <div style="width: 950px;margin: 0 auto;">
     <table border="1px"  cellpadding="0" cellspacing="0" class="t">
     <tr>
     <th height="30px">项目名称</th>
     <th height="30px">预期资金</th>
    
     <th height="30px">结束时间</th>
  
     
        <th height="30px">已筹资金</th>
        
      <th height="30px">修改</th>
      <th height="30px">删除</th>
     </tr>
     
     		<s:iterator value="projectList" var="list"   >
			<tr>

				<th height="30px" align="center"><s:property value="#list.pro_title" /></th>
				<th height="30px" align="center"><s:property value="#list.pro_wantedMoney" /></th>
				<th height="30px" align="center"><s:property value="#list.pro_endDate" /></th>
				
				
				
				<th height="30px" align="center"><s:property value="#list.pro_wantedMoney+100" /></th>
				
				
				
				
				<th height="30px" align="center"><a	href='<s:url action="xpj/project_listdetailbyid"> 
				<s:param name="pro.pro_id" value="%{#list.pro_id}"></s:param> </s:url>'><input type="image" src="front/images/xg.png" width="30px" height="30px"/></a></th>
				<!--       <td align="left" ><a href="xpj/project_updateProject?pro_id=<s:property value="#list.pro_id"/>">修改</a></td>  -->

				<!--   <td align="left" ><a href="xpj/project_updateProject">修改</a></td> -->
				<th height="30px" align="center"><a	href="xpj/project_deleteProject?pro_id=<s:property  value="#list.pro_id" />"
					onclick="return fn()"><input type="image" src="front/images/delete.png" width="30px" height="30px"/></a></th>
			</tr>
		</s:iterator>
     
     
     
     
     
     
     
    
     
     </table>
  
   </div>

                    </center>
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

 