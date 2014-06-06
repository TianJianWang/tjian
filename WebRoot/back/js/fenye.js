function gotopage(allpages,count){
	
	var page=window.document.getElementById("page").value;
	if(isNaN(page)){
	alert("请输入阿拉伯数字");
	
	}else{
		if(page==1){
			window.location.href="xpj/project_listprojectbypage?page=1";
			
		}
		else if(page==allpages){
			window.location.href="xpj/project_listprojectbypage?page="+allpages;
			
		}
		else if(page<1||page>allpages){
			
			alert("请输入正确的页码！");
			}else{

				window.location.href="xpj/project_listprojectbypage?page="+page;
				
			}
		
	
	}
	
}

function  alinkPage(count)
{
	var count=window.document.getElementById("count").value;
		count=parseInt(count);
			window.location.href="xpj/project_listprojectbypage?page="+page+"&count="+count;
}






//function gotoPage(fatherId,maxPage)
//{
//	var page=window.document.getElementById("pageNum").value;
//	if(isNaN(page))
//		{
//		alert('请输入阿拉伯数字！');
//		}else
//			{
//			if(page<1||page>maxPage)
//			{
//				alert('请输入正确的野马！');
//			}else
//			{
//				window.location.href="front/postAction!getPostDetailAndChildPostsById.action?p.id="+fatherId+"&page="+page;
//			}
//			}
//}
//
//
//
//
//function  gotoPage(all)
//{
//	var page=window.document.getElementById("page").value;
//	page=parseInt(page);
//	if(page<1||page>all)
//	{
//		window.alert("亲，这个真没有 !");
//	}else
//	{
//		window.location.href="BookServlet?method=listBooksByPage&page="+page+"&count=18";
//	}
//}
//
//function  alinkPage(page)
//{
//	var count=window.document.getElementById("count").value;
//		count=parseInt(count);
//			window.location.href="BookServlet?method=listBooksByPage&page="+page+"&count="+count;
//}
//
//
