<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:import url="hostmenu.jsp" />

<!-- <form action="/ebb/houseinsert.do" method="POST"> -->
<script type="text/javascript">
	function warning() {
		alert("사용이 제한된 사용자입니다. 관리자에게 문의하세요");
	}
</script>
<form method="post" action="/ebb/houseinsert.do"
	enctype="multipart/form-data">
	<div class="wrap_enroll">
		<h3>${logOK.getUname()}님안녕하세요!숙소 등록을 시작해볼까요?</h3>
		<div class="wrap_enroll2">
			<input name="midx" type="hidden" class="form-control"
				value="${logOK.getUidx()}" aria-describedby="sizing-addon1">
			<h5>숙소의 이름은 무엇인가요?</h5>
			<div class="input-group input-group-lg">
				<input name="hname" type="text" class="form-control"
					placeholder="숙소 이름을 지어주세요" aria-describedby="sizing-addon1">
			</div>
			<h5>숙소의 위치를 알려주세요.</h5>
			<select class="count" name="hcatg">
				<option value="0" selected="selected">지역을 선택해주세요</option>
				<option value="서울시">서울</option>
				<option value="대전시">대전</option>
				<option value="수원시">수원</option>
				<option value="인천시">인천</option>
				<option value="의정부시">의정부</option>
				<option value="대구시">대구</option>
				<option value="청주시">청주</option>
				<option value="부천시">부천</option>
				<option value="부산시">부산</option>
			</select>
			<!-- test 주소 -->
			<div class="post-wrap">
				<div class="input-group input-group-lg">
					<input type="hidden" name="opost" id="opost" placeholder="우편번호"
						class="form-control" aria-describedby="sizing-addon1"> <input
						class="btn" type="button" onclick="sample6_execDaumPostcode()"
						value="주소 찾기" id="btn_post"><br> <input type="text"
						name="address" id="address" placeholder="주소" class="form-control"
						aria-describedby="sizing-addon1"><br> <input
						type="text" name="addressDetail" id="addressDetail"
						placeholder="상세주소" class="form-control"
						aria-describedby="sizing-addon1"> <input type="hidden"
						name="addressExtra" id="addressExtra" placeholder="참고항목"
						class="form-control" aria-describedby="sizing-addon1"> <input
						type="hidden" name="oaddress" class="form-control"
						aria-describedby="sizing-addon1">
				</div>
				<script
					src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
				<script>
					function sample6_execDaumPostcode() {
						new daum.Postcode(
								{
									oncomplete : function(data) {
										// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

										// 각 주소의 노출 규칙에 따라 주소를 조합한다.
										// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
										var addr = ''; // 주소 변수
										var extraAddr = ''; // 참고항목 변수

										//사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
										if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
											addr = data.roadAddress;
										} else { // 사용자가 지번 주소를 선택했을 경우(J)
											addr = data.jibunAddress;
										}

										// 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
										if (data.userSelectedType === 'R') {
											// 법정동명이 있을 경우 추가한다. (법정리는 제외)
											// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
											if (data.bname !== ''
													&& /[동|로|가]$/g
															.test(data.bname)) {
												extraAddr += data.bname;
											}
											// 건물명이 있고, 공동주택일 경우 추가한다.
											if (data.buildingName !== ''
													&& data.apartment === 'Y') {
												extraAddr += (extraAddr !== '' ? ', '
														+ data.buildingName
														: data.buildingName);
											}
											// 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
											if (extraAddr !== '') {
												extraAddr = ' (' + extraAddr
														+ ')';
											}
											// 조합된 참고항목을 해당 필드에 넣는다.
											document
													.getElementById("addressExtra").value = extraAddr;

										} else {
											document
													.getElementById("addressExtra").value = '';
										}

										// 우편번호와 주소 정보를 해당 필드에 넣는다.
										document.getElementById('opost').value = data.zonecode;
										document.getElementById("address").value = addr;
										// 커서를 상세주소 필드로 이동한다.
										document
												.getElementById("addressDetail")
												.focus();
									}
								}).open();
					}
				</script>
			</div>
			<h5>숙소의 연락처를 알려주세요.</h5>
			<div class="input-group input-group-lg">
				<input name="hphone" type="text" class="form-control"
					placeholder="예)01012345678" aria-describedby="sizing-addon1">
			</div>
			<h5>숙소의 특징을 아래에서 골라주세요.</h5>
			<select class="count" name="hutill">
				<option value="0" selected="selected">-</option>
				<option value="1">집전체</option>
				<option value="2">독특한공간</option>
				<option value="3">반려동물</option>
				<option value="4">방갈로</option>
				<option value="5">수영장</option>
			</select>
		</div>
		<div class="wrap_enroll3">

			<h5>숙소 이미지를 등록해주세요.</h5>
			<!-- 이미지 썸네일 -->
			<div class="inputArea">
				<label for="gdsImg">이미지</label> <input type="file" id="uploadFile"
					name="uploadFile" />
				<div class="select_img">
					<img src="" />
				</div>

				<script>
					$("#uploadFile").change(
							function() {
								if (this.files && this.files[0]) {
									var reader = new FileReader;
									reader.onload = function(data) {
										$(".select_img img").attr("src",
												data.target.result).width(500);
									}
									reader.readAsDataURL(this.files[0]);
								}
							});
				</script>
				<%-- <%=request.getRealPath("/") %> --%>
			</div>
		</div>
		<div class="wrap_enroll2">
			<h5>숙소에는 어떤 편의시설이 있나요?</h5>
			<div class="input-group input-group-lg">
				<input name="hfacility" type="text" class="form-control"
					placeholder="예)족구장" aria-describedby="sizing-addon1">
			</div>
			<h5>숙소에 침대는 몇개가 있나요?</h5>
			<select class="count" name="hbed">
				<option value="0" selected="selected">개</option>
				<option value="1">1개</option>
				<option value="2">2개</option>
				<option value="3">3개</option>
				<option value="4">4개</option>
			</select>
			<h5>숙소에 욕실은 몇개가 있나요?</h5>
			<select class="count" name="hbat">
				<option value="0" selected="selected">개</option>
				<option value="1">1개</option>
				<option value="2">2개</option>
				<option value="3">3개</option>
				<option value="4">4개</option>
			</select>
			<h5>숙소에 몇명까지 묵을 수 있나요?</h5>
			<select class="count" name="hperson">
				<option value="1" selected="selected">1명</option>
				<option value="2">2명</option>
				<option value="3">3명</option>
				<option value="4">4명</option>
				<option value="5">5명</option>
			</select>
			<h5>기본 요금 입력</h5>
			<div class="input-group input-group-lg">
				<input name="hprice" type="text" class="form-control"
					placeholder="예)50000" aria-describedby="sizing-addon1">
			</div>
			<div>
				<c:if test="${logOK.getUtype() != '3'}">
					<button id="subbtn" type="submit" class="btn">숙소 등록하기</button>
				</c:if>
				<c:if test="${logOK.getUtype() == '3'}">
					<button id="subbtn" onclick="warning()">숙소 등록하기</button>
				</c:if>
			</div>
		</div>
	</div>
</form>
</body>
</html>