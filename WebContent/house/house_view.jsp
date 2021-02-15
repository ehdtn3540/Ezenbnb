<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@page import="com.user.dao.UserDAO"%>
<%@page import="com.user.dto.UserDTO"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
input[type=date], select {
	width: 500px;
	padding: 12px 0px;
	margin: 8px 0;
	display: inline-block;
	border: 1px solid #ccc;
	border-radius: 4px;
	box-sizing: border-box;
}

input[type=submit] {
	width: 500px;
	background-color: #4CAF50;
	color: white;
	padding: 14px 0px;
	margin: 8px 0;
	border: none;
	border-radius: 4px;
	cursor: pointer;
}

input[type=submit]:hover {
	background-color: #45a049;
}

.house_view {
	width: 700px;
	border-radius: 5px;
	background-color: #f2f2f2;
	padding: 20px 40px;
}

body>div {
	float: left;
}

form div {
	padding: 10px 0px 0px 0px;
}

h3 {
	margin: 0px;
}
zz
div p {
	margin: 5px 0px 10px;
}

label {
	display: block;
	width: 300px;
}

img {
	border-radius: 7px;
	width: 600px;
	height: 400px;
	border: 0;
}

#google-map {
	border-radius: 7px;
	width: 900px;
	height: 1000px;
	margin: 100px 40px;
	padding: 0;
}
</style>
<%
	Cookie[] cookies = request.getCookies();
if (cookies != null) {
	for (Cookie tempCookie : cookies) {
		if (tempCookie.getName().equals("cid")) {
	//쿠키값으로 대신 로그인 처리함
	String id = tempCookie.getValue();
	UserDAO dao = new UserDAO();
	UserDTO entity = dao.getAutoLoginUser(id);
	session.setAttribute("logOK", entity);

		}
	}
}
%>
<script>
	function checkWrite() {
		if (document.inputForm.checkin.value == "") {
			alert("체크인 날짜를 입력하세요");
			inputForm.checkin.focus();
		} else if (document.inputForm.checkout.value == "") {
			alert("체크아웃 날짜를 입력하세요");
			inputForm.checkout.focus();
		} else if (document.inputForm.person.value == "none") {
			alert("인원을 입력하세요");
			inputForm.person.focus();
		} else {
			document.inputForm.submit();
		}
	}
	function warning(){
		alert("사용이 제한된 사용자입니다. 관리자에게 문의하세요");
	}
</script>
</head>

<body>
	<%-- 방상세페이지<br>
${dto.getHidx()}<br>
${dto.getMidx()}<br>
${dto.getHname()}<br>
${dto.getHaddress()}<br>
${dto.getHphone()}<br>
${dto.getHgrade()}<br>
${dto.getHbed()}<br>
${dto.getHbat()}<br>
${dto.getHperson()}<br>
${dto.getHutill()}<br> --%>

	<div class="house_view">
		<div>
			<h1>방제목: ${dto.getHname()}</h1>
		</div>
		<div>
			<img src="img/house/${dto.getHimage()}" alt="House Image">
		</div>
		<div>
			<hr style="width: 500px; margin-left: 0px;">
			<h2>방정보</h2>
			<h3>숙소이름</h3>
			<p>${dto.getHname()}</p>
			<h3>숙소주소</h3>
			<p>${dto.getHaddress()}</p>
			<h3>전화번호</h3>
			<p>${dto.getHphone()}</p>
			<h3>방가격</h3>
			<p>${dto.getHprice()}원</p>

		</div>
		<div>
			<hr style="width: 500px; margin-left: 0px;">
			<h2>기타정보</h2>
			<h3>침대갯수</h3>
			<p>${dto.getHbed()}개</p>
			<h3>화장실수</h3>
			<p>${dto.getHbat()}개</p>
			<h3>수용인원</h3>
			<p>${dto.getHperson()}명</p>
			<h3>편의시설</h3>
			<p>${dto.getHfacility()}</p>
			<h3>숙소특징</h3>
			<c:if test="${dto.getHutill()==1}">
			<p>집전체</p>
			</c:if>
			<c:if test="${dto.getHutill()==2}">
			<p>독특한공간</p>
			</c:if>
			<c:if test="${dto.getHutill()==3}">
			<p>반려동물</p>
			</c:if>
			<c:if test="${dto.getHutill()==4}">
			<p>방갈로</p>
			</c:if>
			<c:if test="${dto.getHutill()==5}">
			<p>수영장</p>
			</c:if>
		</div>
		<div>
			<hr style="width: 500px; margin-left: 0px;">
			<h2>평점</h2>
			<h3>평점</h3>
			<p>${dto.getHgrade()}점</p>
		</div>
		<div>
			<hr style="width: 500px; margin-left: 0px;">
			<h2>방예약정보 입력 및 예약버튼</h2>
			<form name="inputForm" action="house/Payment.jsp" method="get">
				<div>
					<label for="checkin">체크인</label> <input type="date" name="checkin"
						id="checkin" />
					<!-- <input type="text" name="checkin" id="checkin" /> -->
				</div>
				<div>
					<label for="checkout">체크아웃</label> <input type="date"
						name="checkout" id="checkout" />
					<!-- <input type="text" name="checkout" id="checkout" /> -->
				</div>
				<div>
					<label for="person">인원</label>
					<!-- <input type="text" name="person" id="person" /> -->
					<select name="person">
						<option value="none">인원선택</option>
						<option value="1">1</option>
						<option value="2">2</option>
						<option value="3">3</option>
						<option value="4">4</option>
						<option value="5">5</option>
						<option value="6">6</option>
						<option value="7">7</option>
						<option value="8">8</option>
						<option value="9">9</option>
						<option value="10">10</option>
					</select>
				</div>
				<div style="display: none">
					<input type="text" name="price" id="price"
						value="${dto.getHprice()}" /> <input type="text" name="hidx"
						id="hidx" value="${dto.getHidx()}" /> <input type="text"
						name="midx" id="midx" value="${dto.getMidx()}" />
				</div>
				<div>
				<c:if test="${logOK.getUtype() != '3'}">
					<button type="button" onclick="checkWrite()">예약가능여부보기</button>
				</c:if>
				<c:if test="${logOK.getUtype() == '3'}">
					<button type="button" onclick="warning()">예약가능여부보기</button>
				</c:if>
				</div>
			</form>
		</div>
	</div>


	<!-- 구글맵 -->
	<div id="google-map"></div>
	<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
	<script async defer
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBL4W__pbidTMRcGK9W60sVTe_sjBJBzkc&callback=initMap">
		
	</script>
	<script>
		function initMap() {
			var map = new google.maps.Map(
					document.getElementById('google-map'), {
						zoom : 12.5,
						center : {
							lat : 35.87110100714382,
							lng : 128.60169690333006
						}
					});

			var geocoder = new google.maps.Geocoder();

			geocodeAddress(geocoder, map);

			function geocodeAddress(geocoder, resultMap) {
				var locations = [];
				var house = [];
				/*            	<c:forEach items="${list}" var="ob"> */
				house.push('${dto.getHaddress()}');
				house.push('${dto.getHname()}');
				locations.push(house);
				house = [];
				/*            	</c:forEach> */

				var infowindow = new google.maps.InfoWindow();
				for (var i = 0; i < locations.length; i++) {
					geocoder
							.geocode(
									{
										'address' : locations[i][0]
									},
									(function(i) {
										return function(result, status) {
											//console.log(result);
											//console.log(status);
											if (status === 'OK') {
												// 맵의 중심 좌표를 설정한다.
												resultMap
														.setCenter(result[0].geometry.location);
												// 맵의 확대 정도를 설정한다.
												resultMap.setZoom(10);
												// 맵 마커
												var marker = new google.maps.Marker(
														{
															map : resultMap,
															position : new google.maps.LatLng(
																	result[0].geometry.location
																			.lat(),
																	result[0].geometry.location
																			.lng()),
														});

												//마커 클릭리스너
												google.maps.event
														.addListener(
																marker,
																'click',
																(function(
																		marker,
																		i) {
																	return function() {
																		infowindow
																				.setContent(locations[i][1]);
																		infowindow
																				.open(
																						map,
																						marker);
																	}
																})(marker, i));
												// 위도
												//console.log('위도(latitude) : ' + marker.position.lat());
												// 경도
												//console.log('경도(longitude) : ' + marker.position.lng());

											} else {
												alert('지오코드가 다음의 이유로 성공하지 못했습니다 : '
														+ status);
											}

										};
									})(i));
				}
			}
		}
	</script>
</body>
</html>