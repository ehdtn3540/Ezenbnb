<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<% request.setCharacterEncoding("UTF-8"); %>
<c:import url="guestmenu.jsp" />
<form action="/ebb/personalmodify.do" method="POST">
	<div id="wrap_personal">
		<h2>개인정보</h2>
		<div class="wrap_pers">
			<div class="wrap_pers2">
				<h4>실명</h4>
				<div>허가증이나 여권 등 여행 서류에 기재되어 있는 이름을 말합니다</div>
				<div>
					<div class="input-group input-group-lg">
						<input name="uidx" type="hidden" value="${dto.getUidx()}">
						<input name="fullname" type="text" class="form-control"
							placeholder="${dto.getUname()}" aria-describedby="sizing-addon1">
					</div>
				</div>
			</div>
			<div class="wrap_pers2">
				<h4>생년월일</h4>
				<div class="wrap_birth">
					<select class="month" name="month">
						<c:choose>
							<c:when test="${dto.getUbirth() eq '없음'}">
								<!-- 등록된 생년 월일이 없을 때 -->
								<option value="월" selected="selected">월</option>
							</c:when>
							<c:otherwise>
								<option value="${fn:substring(dto.getUbirth(),0,2)}"
									selected="selected">${fn:substring(dto.getUbirth(),0,3)}</option>
								<!-- 등록된 생년 월일이 있을 때 -->
							</c:otherwise>
						</c:choose>
						<option value="01">1월</option>
						<option value="02">2월</option>
						<option value="03">3월</option>
						<option value="04">4월</option>
						<option value="05">5월</option>
						<option value="06">6월</option>
						<option value="07">7월</option>
						<option value="08">8월</option>
						<option value="09">9월</option>
						<option value="10">10월</option>
						<option value="11">11월</option>
						<option value="12">12월</option>
					</select> <select class="day" name="day">
						<c:choose>
							<c:when test="${dto.getUbirth() eq '없음'}">
								<option value="일" selected="selected">일</option>
							</c:when>
							<c:otherwise>
								<option value="${fn:substring(dto.getUbirth(),3,5)}"
									selected="selected">${fn:substring(dto.getUbirth(),3,6)}</option>
							</c:otherwise>
						</c:choose>
						<option value="01">01</option>
						<option value="02">02</option>
						<option value="03">03</option>
						<option value="04">04</option>
						<option value="05">05</option>
						<option value="06">06</option>
						<option value="07">07</option>
						<option value="08">08</option>
						<option value="09">09</option>
						<option value="10">10</option>
						<option value="11">11</option>
						<option value="12">12</option>
						<option value="13">13</option>
						<option value="14">14</option>
						<option value="15">15</option>
						<option value="16">16</option>
						<option value="17">17</option>
						<option value="18">18</option>
						<option value="19">19</option>
						<option value="20">20</option>
						<option value="21">21</option>
						<option value="22">22</option>
						<option value="23">23</option>
						<option value="24">24</option>
						<option value="25">25</option>
						<option value="26">26</option>
						<option value="27">27</option>
						<option value="28">28</option>
						<option value="29">29</option>
						<option value="30">30</option>
						<option value="31">31</option>
					</select> <select class="year" name="year">
						<c:choose>
							<c:when test="${dto.getUbirth() eq '없음'}">
								<option value="년" selected="selected">년</option>
							</c:when>
							<c:otherwise>
								<option value="${fn:substring(dto.getUbirth(),6,10)}"
									selected="selected">${fn:substring(dto.getUbirth(),6,10)}년</option>
							</c:otherwise>
						</c:choose>
						<option value="2000">2000</option>
						<option value="1999">1999</option>
						<option value="1998">1998</option>
						<option value="1997">1997</option>
						<option value="1996">1996</option>
						<option value="1995">1995</option>
						<option value="1994">1994</option>
						<option value="1993">1993</option>
						<option value="1992">1992</option>
						<option value="1991">1991</option>
						<option value="1990">1990</option>
						<option value="1989">1989</option>
						<option value="1988">1988</option>
						<option value="1987">1987</option>
						<option value="1986">1986</option>
						<option value="1985">1985</option>
						<option value="1984">1984</option>
						<option value="1983">1983</option>
						<option value="1982">1982</option>
						<option value="1981">1981</option>
						<option value="1980">1980</option>
						<option value="1979">1979</option>
					</select>
				</div>
			</div>
			<div class="wrap_pers2">
				<h4>이메일 주소</h4>
				<div>이메일 주소는 아이디로 사용됩니다</div>
				<div>${dto.getUserid()}</div>
			</div>
			<div class="wrap_pers2">
				<h4>전화번호</h4>
				<div class="input-group input-group-lg">
					<input name="phone" type="text" class="form-control"
						placeholder="${dto.getUphone()}" aria-describedby="sizing-addon1">
				</div>
			</div>
			<div class="wrap_pers2">
				<h4>주소</h4>
				<div class="input-group input-group-lg">
					<input name="address" type="text" class="form-control"
						placeholder="${dto.getUaddress()}"
						aria-describedby="sizing-addon1">
				</div>
			</div>
			<div class="wrap_pers2">
				<h4>비상연락처</h4>
				<div class="input-group input-group-lg">
					<input name="emerg" type="text" class="form-control"
						placeholder="${dto.getUemerg()}" aria-describedby="sizing-addon1">
				</div>
			</div>
			<button type="submit" class="btn">저장</button>
		</div>
		<div class="wrap_pers3">
			<ul class="list-group">
				<li class="list-group-item">
					<h4>수정할 수 있는 세부 정보는 무엇인가요?</h4>
					<div>이젠비앤비에서 본인 인증 시 사용하는 세부 정보는 변경할 수 없습니다. 연락처 정보와 일부 개인정보는
						수정할 수 있지만, 다음번 예약 또는 숙소를 등록할 때 본인 인증 절차를 거쳐야 할 수도 있습니다</div>
				</li>
				<li class="list-group-item">
					<h4>다른 사람에게 어떤 정보가 공개되나요?</h4>
					<div>이젠비앤비는 예약이 확정된 후에만 호스트 및 게스트의 연락처 정보를 공개합니다.</div>
				</li>
			</ul>
		</div>
	</div>
</form>
</body>
</html>