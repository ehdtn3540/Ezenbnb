<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="com.user.dao.UserDAO"%>
<%@page import="com.user.dto.UserDTO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8"">
<title>host_menu</title>
<script
	src="//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script
	src="//netdna.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="//netdna.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="/ebb/css/host.css" type="text/css">
</head>
<body>
	<!-- 로그인유지 -->
	<%
		Cookie[] cookies = request.getCookies();
	if (cookies != null) {
		for (Cookie tempCookie : cookies) {
			if (tempCookie.getName().equals("cid")) {
		//쿠키값으로 대신 로그인 처리함
		String id = tempCookie.getValue();
		UserDAO dao = new UserDAO();
		UserDTO entity = dao.getAutoLoginUser(id);
		session.setAttribute("logOK", entity);
		/* System.out.println(entity.getUname()); */
			}
		}
	}
	%>
	<div class="upperMenu">
		<div id="menu1">
			<div id="logo">
				<h3>
					<a href="/ebb/mainList.do"><img alt="" src="/ebb/img/logo.png"></a>ezenbnb
				</h3>
			</div>
			<div id="tab">
				<ul class="nav nav-tabs">
					<li role="presentation"><a href="/ebb/getReqList.do?midx=${logOK.getUidx()}">홈</a></li>
					<li role="presentation"><a href="/ebb/chatroomlist.do?userid=${logOK.getUserid()}">메세지</a></li>
					<li role="presentation"><a href="/ebb/reservlist.do?midx=${logOK.getUidx()}">예약</a></li>
					<li role="presentation"><a href="/ebb/user/guest/travel.jsp">달력</a></li>
					<li role="presentation"><a href="/ebb/hostinglist.do?midx=${logOK.getUidx()}">숙소</a></li>
					<li role="presentation"><a href="/ebb/host/review.jsp">실적</a></li>
				</ul>
			</div>
		</div>
		<div id="menu2">
			<button type="button" class="btn"
				onclick="location.href='/ebb/host/houseinsert.jsp'">숙소 등록하기</button>
			<div class="dropdown">
				<button class="btn btn-default dropdown-toggle" type="button"
					id="dropdownMenu1" data-toggle="dropdown" aria-expanded="true">
					<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 16 16" width="16" height="16"><path fill-rule="evenodd" d="M1 2.75A.75.75 0 011.75 2h12.5a.75.75 0 110 1.5H1.75A.75.75 0 011 2.75zm0 5A.75.75 0 011.75 7h12.5a.75.75 0 110 1.5H1.75A.75.75 0 011 7.75zM1.75 12a.75.75 0 100 1.5h12.5a.75.75 0 100-1.5H1.75z"></path></svg>
					<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="24" height="24"><path fill-rule="evenodd" d="M12 2.5a5.5 5.5 0 00-3.096 10.047 9.005 9.005 0 00-5.9 8.18.75.75 0 001.5.045 7.5 7.5 0 0114.993 0 .75.75 0 101.499-.044 9.005 9.005 0 00-5.9-8.181A5.5 5.5 0 0012 2.5zM8 8a4 4 0 118 0 4 4 0 01-8 0z"></path></svg>
					<span class="caret"></span>
				</button>
				<ul class="dropdown-menu" role="menu"
					aria-labelledby="dropdownMenu1">
					<li role="presentation"><a role="menuitem" tabindex="-1"
						href="#">프로필</a></li>
					<li role="presentation"><a role="menuitem" tabindex="-1"
						href="/ebb/user/guest/account-settings.jsp">계정</a></li>
					<li role="presentation"><a role="menuitem" tabindex="-1"
						href="#">대금 수령 내역</a></li>
					<li class="divider"></li>
					<li role="presentation"><a role="menuitem" tabindex="-1"
						href="houseinsert.jsp">새로운 숙소 추가</a></li>
					<li class="divider"></li>
					<li role="presentation"><a role="menuitem" tabindex="-1"
						href="/ebb/main/main.jsp">게스트 모드로 전환</a></li>
					<li role="presentation"><a role="menuitem" tabindex="-1"
						href="/ebb/main/main.jsp">로그아웃</a></li>
				</ul>
			</div>
		</div>

	</div>