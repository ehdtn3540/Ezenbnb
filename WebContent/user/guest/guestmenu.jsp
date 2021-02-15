<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="com.user.dao.UserDAO"%>
<%@page import="com.user.dto.UserDTO"%>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8"">
<title>guest_menu</title>
<script
	src="//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="/ebb/js/script.js"></script>
<script
	src="//netdna.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="//netdna.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="/ebb/css/guest.css" type="text/css">

</head>
<body>
	<!-- 로그인유지 -->
    <%
    Cookie[] cookies = request.getCookies();
    if(cookies !=null){
        for(Cookie tempCookie : cookies){
            if(tempCookie.getName().equals("cid")){
                //쿠키값으로 대신 로그인 처리함
                String id=tempCookie.getValue();
                UserDAO dao=new UserDAO();
                UserDTO entity= dao.getAutoLoginUser(id);
                session.setAttribute("logOK", entity);
                /* System.out.println(entity.getUname()); */
            }
        }
    }  	
  	%> 	
	<div class="upperMenu">
		<div id="logo">
			<h3>
				<a href="/ebb/mainList.do"><img alt="" src="/ebb/img/logo.png"></a>ezenbnb
			</h3>
		</div>
		<div class="wrap">
			<span><a href="/ebb/getReqList.do?midx=${logOK.getUidx()}">호스트 모드로 전환</a></span>
			<!-- Single button -->
			<div class="btn-group">
				<button type="button" class="btn btn-default dropdown-toggle"
					data-toggle="dropdown" aria-expanded="false">
					<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 16 16" width="16" height="16"><path fill-rule="evenodd" d="M1 2.75A.75.75 0 011.75 2h12.5a.75.75 0 110 1.5H1.75A.75.75 0 011 2.75zm0 5A.75.75 0 011.75 7h12.5a.75.75 0 110 1.5H1.75A.75.75 0 011 7.75zM1.75 12a.75.75 0 100 1.5h12.5a.75.75 0 100-1.5H1.75z"></path></svg>
					<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="24" height="24"><path fill-rule="evenodd" d="M12 2.5a5.5 5.5 0 00-3.096 10.047 9.005 9.005 0 00-5.9 8.18.75.75 0 001.5.045 7.5 7.5 0 0114.993 0 .75.75 0 101.499-.044 9.005 9.005 0 00-5.9-8.181A5.5 5.5 0 0012 2.5zM8 8a4 4 0 118 0 4 4 0 01-8 0z"></path></svg>					
					 <span class="caret"></span>
				</button>
				<ul class="dropdown-menu" role="menu">
					<li><a href="/ebb/chatroomlist.do?userid=${logOK.getUserid()}">메세지</a></li>
					<li><a href="/ebb/user/guest/alert.jsp">알림</a></li>
					<li><a href="/ebb/reservlist.do?midx=${logOK.getUidx()}">여행</a></li>
					<li><a href="/ebb/likeylist.do?midx=${logOK.getUidx()}">저장목록</a></li>
					<li class="divider"></li>
					<li><a href="/ebb/getReqList.do?midx=${logOK.getUidx()}">숙소 관리</a></li>
					<li><a href="account-settings.jsp">계정</a></li>
					<li class="divider"></li>
					<li><a href="#">도움말</a></li>
					<li><a href="#">로그아웃</a></li>
				</ul>
			</div>
		</div>
	</div>