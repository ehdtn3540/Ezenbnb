<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:import url="guestmenu.jsp" />

<div class="wrap_receipt">
	<c:if test="${!empty list}">
		<c:forEach items="${list}" var="ob">
			<div class="btn-group btn-group-justified" role="group"
				aria-label="...">
				<div class="btn-group" role="group">
					<button type="button" class="btn btn-default">영수증 이메일로 보내기</button>
				</div>
				<div class="btn-group" role="group">
					<button type="button" class="btn btn-default">영수증 인쇄</button>
				</div>
				<div class="btn-group" role="group">
					<button type="button" class="btn btn-default">일정표 보기</button>
				</div>
			</div>
			<div>
				<h3>게스트 영수증</h3>
				예약날짜(결제날짜) : ${ob.getAdate()} <br> 영수증 number : ${ob.getAidx()}<br>
			</div>
			<div>
				<ul class="list-group">
					<li class="list-group-item">인원 : ${ob.getAperson()}</li>
					<li class="list-group-item">여행지 : ${ob.getHcatg()}</li>
					<li class="list-group-item">숙소 주소 : ${ob.getHaddress()}</li>
					<li class="list-group-item">숙소 이름 : ${ob.getHname()}</li>
					<li class="list-group-item">박 1박</li>
				</ul>
			</div>
			<div>
				<div class="panel panel-default">
					<div class="panel-body">
						<div>
							<strong>체크인</strong>
							<h3>: ${ob.getAcheckin()}</h3>
						</div>
						<span><svg xmlns="http://www.w3.org/2000/svg"
								viewBox="0 0 24 24" width="24" height="24">
						<path fill-rule="evenodd"
									d="M8.72 18.78a.75.75 0 001.06 0l6.25-6.25a.75.75 0 000-1.06L9.78 5.22a.75.75 0 00-1.06 1.06L14.44 12l-5.72 5.72a.75.75 0 000 1.06z"></path></svg></span>
						<div>
							<strong>체크아웃</strong>
							<h3>: ${ob.getAcheckout()}</h3>
						</div>
					</div>
				</div>
			</div>
			<div>
				<h3>결제</h3>
			</div>
			<div>
				<ul class="list-group">
					<li class="list-group-item">숙소 가격 x 1박 : ${ob.getAprice()}</li>
					<li class="list-group-item">${ob.getAcard()}카드 ${ob.getAcardnum()} / 총 결제금액 ${ob.getAprice()}</li>
					<li class="list-group-item">결제완료 : ${ob.getAdate()}</li>
					<li class="list-group-item"><strong>결제금액(KRW) /총 결제금액 ${ob.getAprice()}</strong></li>
				</ul>
			</div>
		</c:forEach>
	</c:if>
</div>
</body>
</html>