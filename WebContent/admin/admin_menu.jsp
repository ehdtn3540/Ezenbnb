<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- 부트스트랩 -->
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

<title>Insert title here</title>
</head>
<body>
	<div style="margin-bottom: 20px;">
		<button type="button" class="btn btn-default btn-lg"onclick="location.href='/ebb/main/main.jsp'">메인</button>
		<button type="button" class="btn btn-default btn-lg" onclick="location.href='/ebb/userList.do'">회원 관리</button>
		<button type="button" class="btn btn-default btn-lg" onclick="location.href='/ebb/categoryList.do'">카테고리 관리</button>
	</div>
</body>
</html>