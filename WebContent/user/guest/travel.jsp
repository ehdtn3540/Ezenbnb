<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:import url="guestmenu.jsp" />

<div class="wrap_msg">
	<span>여행_예약목록</span>
	<ul class="nav nav-tabs">
		<li role="presentation" class="active"><a href="#">예정된 예약</a></li>
		<li role="presentation"><a href="#">이전 예약</a></li>
	</ul>
	<div>
		<c:if test="${!empty list}">
			<c:forEach items="${list}" var="ob">
				<table class = "table">
					<thead>
						<tr>
							<th>상태</th>
							<th>예약 번호</th>						
							<th>위치</th>
							<th>숙소 이름</th>
							<th>옵션</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>${ob.getAstate()}</td>
							<td>${ob.getAidx()}</td>
							<td>${ob.getAarea()}</td>
							<td>${ob.getHname()}</td>
							<td>
								<a href="/ebb/main/main.jsp">다른 숙소 찾기</a><br>
								환불 요청<br>
								메세지 기록<br>
								<a href="/ebb/receipt.do?aidx=${ob.getAidx()}">영수증 보기</a><br>
							</td>
						</tr>
					</tbody>
				</table>
			</c:forEach>
		</c:if>
		<c:if test="${empty list}">
		<div>다시 여행을 떠나실 준비가 되면 이젠비앤비가 도와드리겠습니다. <a>자세히 알아보기</a></div> 
		<img alt="" src="/ebb/img/guestbg.png">
		</c:if>
	</div>
	<div>
		
	</div>
	<div>
		<button type="button" class="btn"
			onclick="location.href='/ebb/main/main.jsp'">이젠비앤비 둘러보기</button>
	</div>
	<div>
		<span>예약 내역을 찾으실 수 없나요?</span><a>도움말 센터를 방문하세요</a>
	</div>
</div>
</body>
</html>