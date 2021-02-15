<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:import url="hostmenu.jsp" />

<div class="wrap_msg">
	<div class="wrap_msg1">
		<div>
			<h3>메시지함</h3>
		</div>
		<ul class="nav nav-pills nav-stacked">
			<li role="presentation"><a href="/ebb/chatroomlist.do?userid=${logOK.getUserid()}">전체메세지</a></li>
			<li role="presentation"><a href="/ebb/preapprvlist.do?midx=${logOK.getUidx()}">대기 중인 요청</a></li>
			<li role="presentation"><a href="/ebb/apprvdlist.do?midx=${logOK.getUidx()}">승인된 예약</a></li>
			<li role="presentation"><a href="#">이젠비앤비 고객지원 팀</a></li>
			<li role="presentation"><a href="#">보관처리</a></li>
		</ul>
	</div>
	<div class="wrap_msg2">
		<span>test</span>
	</div>
</div>
</body>
</html>