<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
    <div class="bs-example" style="width:800px;">
      <ul class="nav nav-pills">
        <li class="active">
        <a href="front/pages/usercenter.jsp">个人中心</a></li>
        <li class="dropdown">
          <a id="drop4" role="button" data-toggle="dropdown" href="user/UserAction_listUserByEmail?email=${sessionScope.User.email}">个人信息 </a>
        </li>
        <li class="dropdown">
          <a id="drop4" role="button" data-toggle="dropdown" href="xpj/project_listallmyProject?${sessionScope.User.user_id }">已发起项目 </a>
        </li>
        <li class="dropdown">
          <a id="drop4" role="button" data-toggle="dropdown" href="front/pages/addTeam.jsp">发起项目组 </a>
        </li>
        <li class="dropdown">
          <a id="drop5" role="button" data-toggle="dropdown" href="ming/team_listTeamApplyByTeam">申请消息<font Style="font-size: large;" color="gray">${applyCount }</font>条</a>
        </li>
        <li class="dropdown">
          <a id="drop6" role="button" data-toggle="dropdown" href="#">发起项目</a>
          
        </li>
      </ul> <!-- /tabs -->
      
      
      
    </div> <!-- /example -->

