<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:import url="hostmenu.jsp" />
<div class="wrap">
	<div class="wrap_host1">
		<h3>알림판</h3>
		<div id="main1">
			<div class="panel panel-default">
				<div class="panel-body">
					<h3>예약 요청</h3>
					<div>
						<button class="btn btn-primary" type="button" onclick="location.href='/ebb/preapprvlist.do?midx=${logOK.getUidx()}'">
							Pre-Approved Requests <span class="badge">${count.size_pre}</span>
						</button>
					</div>
				</div>
			</div>
			<div class="panel panel-default">
				<div class="panel-body">
					<h3>승인된 예약</h3>
					<button class="btn btn-primary" type="button" onclick="location.href='/ebb/apprvdlist.do?midx=${logOK.getUidx()}'">
						Approved Requests <span class="badge">${count.size_vd}</span>
					</button>
				</div>
			</div>
			<a>피드백 보내기</a>
		</div>
		<div id="main2">
			<ul class="list-group">
				<h3>알림</h3>
				<li class="list-group-item">회사 이메일을 입력하면 출장에서 추가 특전(예: 간편한 비용
					정산)을 누리실 수 있어요.</li>
				<li class="list-group-item">페이스북과 연결하면 프로필이 완성되며 로그인이 더욱
					간편해집니다.</li>
				<li class="list-group-item">친구에게서 추천글을 받으세요. 호스트가 회원님에 대해 알면
					알수록 숙소를 예약하기가 쉬워집니다.</span>
			</ul>
		</div>
	</div>
</div>
</body>
</html>