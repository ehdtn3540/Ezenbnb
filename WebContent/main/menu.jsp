<%@page import="com.user.dao.UserDAO"%>
<%@page import="com.user.dto.UserDTO"%> 
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Document</title>
    <!-- 부트스트랩보다 jquery가 밑에 있으면 동작안함 -->
    <script src="http://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="/ebb/js/script.js"></script>
    <link rel="stylesheet" href="/ebb/css/reset.css" type="text/css" />
    <link rel="stylesheet" href="/ebb/css/style.css" type="text/css" />
  </head>
  <body>
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
            }
        }
    }  	
  	%> 
    <div id="wrap">
      <header>
        <div class="menu_group">
          <div class="logo">
            <a href="/ebb/mainList.do">

              <img src="/ebb/img/logo.png" alt="logo" />
            </a>
          </div>
          <div class="search">
            <form action="/ebb/housesearch.do" method="POST">
              <input
                type="text"
                id="input"
                name="search"
                placeholder="검색 시작하세요"
              />
              <button type="submit" id="btn" class="btn">
              <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="24" height="24"><path fill-rule="evenodd" d="M14.53 15.59a8.25 8.25 0 111.06-1.06l5.69 5.69a.75.75 0 11-1.06 1.06l-5.69-5.69zM2.5 9.25a6.75 6.75 0 1111.74 4.547.746.746 0 00-.443.442A6.75 6.75 0 012.5 9.25z"></path></svg>
              </button>
            </form>
          </div>
          <div class="menu_member">
            <div class="host">
            <c:if test="${empty logOK}">
            	<a href="/ebb/user/login/login.jsp">호스트 전환</a>
            </c:if>
            <c:if test="${!empty logOK }">
            	<a href="/ebb/getReqList.do?midx=${logOK.getUidx()}">호스트 전환</a>
            </c:if>
            </div>
            <ul class="member">
            	<li>
					<a href="#">
					<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 16 16" width="16" height="16"><path fill-rule="evenodd" d="M1 2.75A.75.75 0 011.75 2h12.5a.75.75 0 110 1.5H1.75A.75.75 0 011 2.75zm0 5A.75.75 0 011.75 7h12.5a.75.75 0 110 1.5H1.75A.75.75 0 011 7.75zM1.75 12a.75.75 0 100 1.5h12.5a.75.75 0 100-1.5H1.75z"></path></svg>
					<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="24" height="24"><path fill-rule="evenodd" d="M12 2.5a5.5 5.5 0 00-3.096 10.047 9.005 9.005 0 00-5.9 8.18.75.75 0 001.5.045 7.5 7.5 0 0114.993 0 .75.75 0 101.499-.044 9.005 9.005 0 00-5.9-8.181A5.5 5.5 0 0012 2.5zM8 8a4 4 0 118 0 4 4 0 01-8 0z"></path></svg>
					</a>
              		<!-- 햄버거 메뉴 -->
					<ul class="dropdown-menu">
					<c:if test="${empty logOK}">
						<li><a href="/ebb/user/login/login.jsp">로그인</a></li>
						<li><a href="/ebb/user/login/join.jsp">회원가입</a></li>
					</c:if>
					<c:if test="${!empty logOK }">
						<li><a href="/ebb/chatroomlist.do?userid=${logOK.getUserid()}">메세지</a></li>
						<li><a href="/ebb/user/guest/alert.jsp">알림</a></li>
						<li><a href="/ebb/reservlist.do?midx=${logOK.getUidx()}">여행</a></li>
						<li><a href="/ebb/likeylist.do?midx=${logOK.getUidx()}">저장목록</a></li>
						<!-- <li class="divider"></li> -->
						<li><a href="/ebb/getReqList.do?midx=${logOK.getUidx()}">숙소 관리</a></li>
						<li><a href="/ebb/user/guest/account-settings.jsp">계정</a></li>
						<!-- <li class="divider"></li> -->
						<li><a href="#">도움말</a></li>
						<li><a href="/ebb/logout.do">로그아웃</a></li>
						<c:if test="${logOK.getUtype() == 2}">
						<li><a href="/ebb/admin/admin_index.jsp">관리자 페이지</a></li>
						</c:if>
					</c:if>
					</ul>
				</li>
			</ul>
          </div>
        </div>
        <!-- /menu_group -->
      </header>