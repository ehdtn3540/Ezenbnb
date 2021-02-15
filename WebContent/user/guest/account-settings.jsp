<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:import url="guestmenu.jsp" />

<div id="wrap_ac">
	<div class="wrap_account">
		<h2>계정</h2>
		<div>
			<span>${logOK.getUname()}, ${logOK.getUserid()}</span> <strong><a>프로필로 이동 </a></strong>
		</div>
		<div class="wrap_account1">
			<div class="panel panel-default">
				<div class="panel-body">
					<h3><a href="/ebb/personalinfo.do?id=${logOK.getUserid()}">개인정보</a></h3>
					<div class="content">개인 정보 및 연락처를 알려주세요</div>
				</div>
			</div>
		</div>
		<div class="wrap_account1">
			<div class="panel panel-default">
				<div class="panel-body">
					<h3><a href="security.jsp">로그인 및 보안</a></h3>
					<div class="content">비밀번호를 변경하고 계정을 안전하게 보호하세요</div>
				</div>
			</div>
		</div>
		<div class="wrap_account1">
			<div class="panel panel-default">
				<div class="panel-body">
					<h3><a>결제 및 대금수령</a></h3>
					<div class="content">결제, 대금 수령, 쿠폰, 기프트 카드 및 세금 검토하기</div>
				</div>
			</div>
		</div>
	</div>
</div>
</body>
</html>