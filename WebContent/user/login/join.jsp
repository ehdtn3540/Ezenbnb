<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>join pg</title>
	<link rel="stylesheet" href="/ebb/css/login.css" type="text/css">
</head>
<body>
	<div class="join">
		<div class="section_header">
            <h2>회원 가입</h2>
        </div>
		<form action="/ebb/join.do" method="POST">
		<div class="input_group">
	      	<input class="ip_join" id="id" type="text" name="id" placeholder="이메일주소" maxlength="30"/><br>
	      	<input class="ip_join" id="firstname" type="text" name="firstname" placeholder="이름(예: 길동)" maxlength="20"/><br>
	      	<input class="ip_join" id="lastname" type="text" name="lastname" placeholder="성(예: 홍)" maxlength="20"/><br>     	
	      	<input class="ip_join" id="pass" type="password" name="pass" placeholder="비밀번호 설정하기" maxlength="20"/>
		</div>
		<div class="wrap_birth">
    		<div class="content_birth">생일</div>
    		<div class="content_birth">만 18세 이상의 성인만 회원으로 가입할 수 있습니다. 생일은 다른 에어비앤비 이용자에게 공개되지 않습니다.</div>
    		<select class="month" name="month">
    			<option value="월"  selected="selected">월</option>
    			<option value="1월" >1</option>
    			<option value="2월" >2</option>
    			<option value="3월" >3</option>
    			<option value="4월" >4</option>
    			<option value="5월" >5</option>
    			<option value="6월" >6</option>
    			<option value="7월" >7</option>
    			<option value="8월" >8</option>
    			<option value="9월" >9</option>
    			<option value="10월" >10</option>
    			<option value="11월" >11</option>
    			<option value="12월" >12</option>
    		</select>
    		<select class="day" name="day">
	    		<option value="일"  selected="selected">일</option>
    			<option value="1" >1</option>
    			<option value="2">2</option>
    			<option value="3">3</option>
    			<option value="4">4</option>
    			<option value="5">5</option>
    			<option value="6">6</option>
    			<option value="7">7</option>
    			<option value="8">8</option>
    			<option value="9">9</option>
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
    		</select>
    		<select class="year" name="year">
    			<option value="년" selected="selected">년</option>
    			<option value="2000" >2000</option>
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
 			<div class="wrap_btn">
 				<button class="btn_join" type="submit">가입하기</button>
 			</div>    		
    		<div>이미 에어비앤비 계정이 있나요? <a href="/ebb/user/login/login.jsp">로그인</a></div>
     	</form>
     </div>
</body>
</html>