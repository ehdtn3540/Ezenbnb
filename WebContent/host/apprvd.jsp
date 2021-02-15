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
			<li role="presentation"><a href="/ebb/host/inbox.jsp">전체메세지</a></li>
			<li role="presentation"><a href="/ebb/preapprvlist.do?midx=${logOK.getUidx()}">대기 중인 요청</a></li>
			<li role="presentation"><a href="/ebb/apprvdlist.do?midx=${logOK.getUidx()}">승인된 예약</a></li>
			<li role="presentation"><a href="#">이젠비앤비 고객지원 팀</a></li>
			<li role="presentation"><a href="#">보관처리</a></li>
		</ul>
	</div>
	<div class="wrap_msg2">

		<div>
			<c:if test="${!empty list}">
				<c:forEach items="${list}" var="ob">
					<div class="panel panel-default">
						<div class="panel-heading">승인 완료</div>
						<div class="panel-body">
							<div>${ob.getUserid()}</div>
							<div>
								<img id="img_table" alt=""
									src="/ebb/img/house/${ob.getHimage()}">
							</div>
							<div>${ob.getHname()}</div>
							<div>${ob.getAdate()}</div>
							<div>${ob.getAcheckin()}~${ob.getAcheckout()}</div>
							<div>${ob.getAperson()}명</div>
							<div>${ob.getAprice()}원</div>
							<div class="btn-group btn-group-justified" role="group"
								aria-label="...">
								<div class="btn-group" role="group">
									<button type="button" onclick="location.href='/ebb/approval.do?aidx=${ob.getAidx()}'" class="btn btn-default">취소하기</button>
								</div>
								<div class="btn-group" role="group">
									<button type="button" class="btn btn-default">이건몰랑</button>
								</div>
							</div>
						</div>
					</div>
				</c:forEach>
			</c:if>
		</div>
	</div>
</div>

</body>
</html>