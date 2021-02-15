<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>join pg</title>
<link rel="stylesheet" href="/ebb/css/login.css" type="text/css">
</head>
<body>
	<div class="join">
		<div class="section_header">
			<h2>로그인</h2>
		</div>
		<form action="/ebb/login.do" method="POST">
			<div class="input_group">
				<input id="id" type="text" name="id" placeholder="이메일주소"
					maxlength="30" /><br> <input id="pass" type="password"
					name="pass" placeholder="비밀번호" maxlength="20" />
			</div>
			<!-- 로그인 실패시 문구등장 -->
			<c:if test="${!empty logFail}">
				<p class="warning">${logFail}</p>
				<%
					session.removeAttribute("logFail");
				%>
			</c:if>
			<div class="wrap_btn">
				<button class="btn_join" type="submit">로그인</button>
			</div>
			<div>
				<span>이젠비앤비 계정이 없으세요?</span> <a href="/ebb/user/login/join.jsp">회원가입</a>
			</div>
		</form>
	</div>
</body>
</html>