<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="../admin/admin_menu.jsp"%>

<c:if test="${0 < n}">
	<body onload="alert('해제 되었습니다'); location.href='/ebb/userList.do'">
</c:if>
<c:if test="${0 >= n}">
	저장 안됐다 욘석아😛😛
</c:if>

<div style="margin-top: 50px;">
	<h2>블랙리스트</h2>
	<table class="table table-striped">
		<tr>
			<th>번호</th>
			<th>아이디</th>
			<th>이름</th>
			<th>연락처</th>
			<th>주소</th>
			<th>생일</th>
			<th>회원등급</th>
			<th>가입일</th>
			<th>블랙리스트 해제</th>
		</tr>
		<c:if test="${!empty list}">
			<c:forEach items="${list}" var="ob">

				<tr>
					<td align="left">${ob.getUidx()}</td>
					<td align="left">${ob.getUserid()}</td>
					<td align="left">${ob.getUname()}</td>
					<td align="left">${ob.getUphone()}</td>
					<td align="left">${ob.getUaddress()}</td>
					<td align="left">${ob.getUbirth()}</td>
					<td align="left">${ob.getUtype()}</td>
					<td align="left">${ob.getUrdate()}</td>
					<td><a href="/ebb/blackUpdate.do?uidx=${ob.getUidx()}">해제하기</a></td>
				</tr>
			</c:forEach>
		</c:if>
	</table>
	<button type="button" class="btn btn-default btn-lg"
		onclick="location.href='/ebb/userList.do'">돌아가기</button>
</div>

</body>
</html>