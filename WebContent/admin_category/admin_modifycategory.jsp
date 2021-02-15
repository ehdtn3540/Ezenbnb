<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="../admin/admin_menu.jsp"%>

<script>
	function checkCategoryWrite() {
		if (document.categoryInputForm.cname.value == "") {
			alert("수정할 카테고리를 입력해주세요.");
			boardWriteForm.cname.focus();
		} else {
			document.categoryInputForm.submit();
		}
	}
</script>

<form name="categoryInputForm" action="/ebb/categoryUpdate.do" method="post">
	<div style="margin-top: 50px;">
		<h2>카테고리 수정</h2>
		<table class="table">
			<tr>
				<td>카테고리 번호</td>
				<td><input type="hidden" name="cidx" size="40"	value="${param.cidx}" readonly>
						 ${param.cidx}</td>
			</tr>
			<tr>
				<td>수정할 카테고리</td>
				<td><input type="text" name="cname" size="40"	value="${param.cname}" placeholder="수정할 카테고리를 입력해주세요.">
			</tr>
			
		</table>
		<input type="button" value="수정완료" onclick="checkCategoryWrite()">
	</div>
</form>

</body>
</html>