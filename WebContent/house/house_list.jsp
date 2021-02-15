<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page import="com.user.dao.UserDAO"%>
<%@page import="com.user.dto.UserDTO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script
	src="//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script
	src="//netdna.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="//netdna.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="/ebb/css/guest.css" type="text/css">
<style>
.likeimg {
	border-radius: 7px;
}

#roominfo {
	width: 600px;
}
</style>
<body>
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
	<div class="upperMenu" style="padding: 15px;">
		<a href="/ebb/mainList.do"> <img src="/ebb/img/logo.png" alt="logo" />
		</a>
	</div>
	<div id="wrap_likey">
		<div class="wrap_likey2">
			<div class="wrap_likey3">검색 결과입니다! :D</div>
			<c:if test="${!empty list}">
				<c:forEach items="${list}" var="ob">
					<div id="wrap_likey4" class="panel panel-default">
						<div id="wrap_like5" class="panel-body">
							<div id="likey_img">
								<a href="/ebb/houseview.do?hidx=${ob.getHidx()}"> <img
									class="likeyimg" src="/ebb/img/house/${ob.getHimage()}">
								</a>
							</div>
							<div id="wrap_likey_info">
								<strong>${ob.getHname()}</strong>
								<div>
									<div style="height: 100px">
										침대 ${ob.getHbed()}개 <span>·</span> 화장실 ${ob.getHbat()}개 <span>·</span>
										편의시설 : ${ob.getHfacility()}개 <span>·</span>
									</div>
									<div id="info_price">
										KRW <fmt:formatNumber type="number" maxFractionDigits="3" value="${ob.getHprice()}" />원
									</div>
								</div>
							</div>
							<div id="likey_icon">
								<c:if test="${empty logOK}">
									<a href="" onClick="alert('로그인해주세요')"> <svg
											xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24"
											width="24" height="24" fill="currentColor">
							<path
												d="M14 20.408c-.492.308-.903.546-1.192.709-.153.086-.308.17-.463.252h-.002a.75.75 0 01-.686 0 16.709 16.709 0 01-.465-.252 31.147 31.147 0 01-4.803-3.34C3.8 15.572 1 12.331 1 8.513 1 5.052 3.829 2.5 6.736 2.5 9.03 2.5 10.881 3.726 12 5.605 13.12 3.726 14.97 2.5 17.264 2.5 20.17 2.5 23 5.052 23 8.514c0 3.818-2.801 7.06-5.389 9.262A31.146 31.146 0 0114 20.408z"></path></svg>

									</a>
								</c:if>
								<c:if test="${!empty logOK}">
									<a
										href="/ebb/likeyinsert.do?hidx=${ob.getHidx()}&midx=${logOK.getUidx()}">
										<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24"
											width="24" height="24" fill="currentColor">
							<path
												d="M14 20.408c-.492.308-.903.546-1.192.709-.153.086-.308.17-.463.252h-.002a.75.75 0 01-.686 0 16.709 16.709 0 01-.465-.252 31.147 31.147 0 01-4.803-3.34C3.8 15.572 1 12.331 1 8.513 1 5.052 3.829 2.5 6.736 2.5 9.03 2.5 10.881 3.726 12 5.605 13.12 3.726 14.97 2.5 17.264 2.5 20.17 2.5 23 5.052 23 8.514c0 3.818-2.801 7.06-5.389 9.262A31.146 31.146 0 0114 20.408z"></path></svg>

									</a>
								</c:if>
							</div>
						</div>
					</div>
				</c:forEach>
			</c:if>
		</div>
		<div class="wrap_likey2">
			<!-- 구글맵 -->
			<br> <br> <br>
			<div id="google-map"></div>
			<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
			<script async defer
				src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBL4W__pbidTMRcGK9W60sVTe_sjBJBzkc&callback=initMap">
				
			</script>
			<script>
				function initMap() {
					var map = new google.maps.Map(document
							.getElementById('google-map'), {
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
						<c:forEach items="${list}" var="ob">
						house.push('${ob.getHaddress()}');
						house.push('${ob.getHname()}');
						locations.push(house);
						house = [];
						</c:forEach>

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
														resultMap.setZoom(12);
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
																		})
																				(
																						marker,
																						i));
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
		</div>
	</div>
</body>
</html>