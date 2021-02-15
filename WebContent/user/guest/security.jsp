<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:import url="guestmenu.jsp" />

<div id="wrap_security">
	<h2>로그인 및 보안</h2>
	<div class="wrap_security1">
		<div class="wrap_security2">
			<h4>로그인</h4>
			<strong>비밀번호 수정</strong>
			<div>기존 비밀번호를 입력하세요</div>
			<div class="input-group input-group-lg">
				<input type="password" class="form-control"
					placeholder="original password" aria-describedby="sizing-addon1">
			</div>
			<div>새로운 비밀번호를 입력하세요</div>
			<div class="input-group input-group-lg">
				<input type="password" class="form-control"
					placeholder="new password" aria-describedby="sizing-addon1">
			</div>
			<div>새로운 비밀번호를 다시한번 입력해주세요</div>
			<div class="input-group input-group-lg">
				<input type="password" class="form-control"
					placeholder="new password check" aria-describedby="sizing-addon1">
			</div>
		</div>
		<div class="wrap_security2">
			<h4>SNS 계정</h4>
			<strong>구글</strong>
			<div>연결됨</div>
		</div>
	</div>
	<div class="wrap_security3">
		<ul class="list-group">
			<li class="list-group-item">
				<h4>계정 보안 유지</h4>
				<div>에어비앤비는 최고의 보안을 위해 계정을 정기적으로 검토합니다. 계정 보안을 강화할 수 있는 조치가 더
					있다면 알려드리겠습니다. 게스트 및 호스트를 위한 안전 팁에 대해 알아보세요.</div>
			</li>
		</ul>
	</div>


</div>
</body>
</html>