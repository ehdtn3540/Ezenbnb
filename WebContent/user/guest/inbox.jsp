<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:import url="guestmenu.jsp" />

<div class="wrap_msg">
	<div class="wrap_msg1">
		<div>
			<h3>전체 메시지함</h3>
		</div>
		<ul class="nav nav-pills nav-stacked">
			<li role="presentation"><a href="/ebb/chatroomlist.do?userid=${logOK.getUserid()}">전체메세지</a></li>
			<li role="presentation"><a href="">중요 표시한 메세지</a></li>
		</ul>
	</div>
	<div class="wrap_msg2">
		<div class="list-group">
			<a href="#" class="list-group-item disabled"> 전체 메세지 목록 </a>
			<c:if test="${!empty list}">
				<c:forEach items="${list}" var="ob">
					<a href="/ebb/messagelist.do?chatidx=${ob.getChatidx()}" class="list-group-item">대화 ${ob.getChatidx()}</a>
				</c:forEach>
			</c:if>
		</div>
	</div>
</div>
</body>
</html>