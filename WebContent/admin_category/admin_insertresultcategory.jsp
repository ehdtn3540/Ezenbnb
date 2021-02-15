<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="../admin/admin_menu.jsp"%>


<c:if test="${0 < n}">
	<%-- 	<c:redirect url="categoryList.do" /> --%>
	<body onload="alert('추가되었습니다'); location.href='/ebb/categoryList.do'">
</c:if>

<c:if test="${0 >= n}">
	저장 안됐다 욘석아😛😛
</c:if>
</body>
</html>