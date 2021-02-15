<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<c:import url="hostmenu.jsp" />

<div class="wrap_house">
	<div id="wrap_search">
		<div id="wrap_house1">
			<h3>숙소${fn:length(list)}개</h3>
		</div>
		<div id="wrap_house2">
			<form class="navbar-form navbar-left" role="search">
				<div class="form-group">
					<input type="text" class="form-control"
						placeholder="숙소 이름, 위치 등으로 검색">
				</div>
				<button type="submit" class="btn btn-default">Search</button>
			</form>
		</div>
	</div>
	<div id="wrap_house3">
		<table class="table">
			<thead>
				<tr>
					<th>숙소</th>
					<th>즉시 예약</th>
					<th>침대</th>
					<th>욕실</th>
					<th>위치</th>
					<th>삭제</th>
				</tr>
			</thead>
			<tbody>
				<c:if test="${!empty list}">
					<c:forEach items="${list}" var="ob">
						<tr>
							<td><img id="img_table" alt=""
								src="/ebb/img/house/${ob.getHimage()}"> <span>${ob.getHname()}</span></td>
							<td>
								<div id="Lightning">
									<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
										fill="currentColor" class="bi bi-lightning-fill"
										viewBox="0 0 16 16">
  <path
											d="M11.251.068a.5.5 0 0 1 .227.58L9.677 6.5H13a.5.5 0 0 1 .364.843l-8 8.5a.5.5 0 0 1-.842-.49L6.323 9.5H3a.5.5 0 0 1-.364-.843l8-8.5a.5.5 0 0 1 .615-.09z" />
</svg>
								</div>
							</td>
							<td>${ob.getHbed()}</td>
							<td>${ob.getHbat()}</td>
							<td>위치: ${ob.getHaddress()}</td>
							<td><a href="/ebb/hostingdel.do?hidx=${ob.getHidx()}"> <svg
										xmlns="http://www.w3.org/2000/svg" viewBox="0 0 16 16"
										width="16" height="16">
								<path fill-rule="evenodd"
											d="M3.72 3.72a.75.75 0 011.06 0L8 6.94l3.22-3.22a.75.75 0 111.06 1.06L9.06 8l3.22 3.22a.75.75 0 11-1.06 1.06L8 9.06l-3.22 3.22a.75.75 0 01-1.06-1.06L6.94 8 3.72 4.78a.75.75 0 010-1.06z"></path></svg>
							</a></td>
						</tr>
					</c:forEach>
				</c:if>
			</tbody>

		</table>
	</div>
</div>
</body>
</html>