<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!-- content --><div class="ic">More Website Templates @ <a href="http://www.cssmoban.com/" >网页模板</a>!</div>
			<section id="content">
				<div class="padding">
					<div class="wrapper margin-bot">
						<div class="col-3">
							<div class="indent">
								<h2 class="p0">Submit Project Form</h2>
								<form id="contact-form" action="list.php" method="post" enctype="multipart/form-data">					
									<fieldset>
										<label><span class="text-form">主题:</span><input name="title" type="text" /></label>
										<label><span class="text-form">Email:</span><input name="email" type="text" /></label> <label><span class="text-form">全面启动:</span><input id="date" name="date"  type="text"  onfocus="c.showMoreDay = false;c.show(this);"/>				
                                        <span class="text-form">日之前&nbsp;</span><span class="text-form"> 需要资金¥:</span><input id="money" name="money"  type="text" /></label>     
										<div class="wrapper"><div class="text-form">创意:</div><textarea name="content"></textarea></div>
										<div class="buttons">
											<a class="button-2" href="#" onClick="document.getElementById('contact-form').reset()">Clear</a>
											<a class="button-2" href="#" onClick="document.getElementById('contact-form').submit()">Make Public</a>
										</div>									 
								  </fieldset>						
							  </form>
							  <script language="JavaScript"> 
var today=new Date(); 
document.getElementById('contact-form').date.value=today.getFullYear()+'-'+(today.getMonth()+1)+'-'+today.getDay(); 
</script> 
						  </div>
							
						</div>
						<div class="col-4">
							<div class="block-news">
								<h3 class="color-4 indent-bot2">Contacts</h3>
								<dl class="contact p3">
									<dt><span>Our Address:</span>USA, San Diego</dt>
									<dd><span>Telephone:</span>+354 563-56-00</dd>
									<dd><span>E-mail:</span><a href="#">Miguelyu@gmail.com</a></dd>
								</dl>
								<h3 class="color-4 indent-bot2">Miscellaneous</h3>
								<p class="text-1">Lorem ipsum dolor sit amet, consectetur adipi<br>scing elit. Mauris quis consectetur nulla. Suspendisse tellus enim, molestie congue male<br>suada sed.</p>
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