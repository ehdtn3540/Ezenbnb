<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="../admin/admin_menu.jsp"%>

<script>
	function checkCategoryWrite() {
		if (document.categoryInputForm.cname.value == "") {
			alert("추가할 카테고리를 입력하세요");
			boardWriteForm.cname.focus();
		} else {
			document.categoryInputForm.submit();
		}
	}
</script>

<div style="margin-top: 50px;">
	<form action="/ebb/categoryInsert.do" method="post" name="categoryInputForm">
		<h2>카테고리 추가하기</h2>
		<table>
			<tr>
				<td>추가할 카테고리</td>
				<td><input type="text" name="cname"></td>
				<td><input type="button" value="추가하기" onclick="checkCategoryWrite()"></td>
			</tr>
		</table>
	</form>
</div>

<div style="margin-top: 50px;">
	<h2>카테고리 확인</h2>
	<table class="table table-striped">
		<tr>
			<th align="center">번호</th>
			<th align="center">카테고리 명</th>
			<th align="center">수정</th>
			<th align="center">삭제</th>
		</tr>
		<c:if test="${!empty clist}">
			<c:forEach items="${clist}" var="ob">
					<input type="hidden" id="cidx" name="cidx" value="${ob.getCidx()}">
					<tr>
						<td align="left">${ob.getCidx()}</td>
						<td align="left">${ob.getCname()}</td>
						<td><a href="/ebb/admin_category/admin_modifycategory.jsp?cidx=${ob.getCidx()}">수정하기</a>
						<td><a href="/ebb/categoryDelete.do?cidx=${ob.getCidx()}">삭제하기</a></td>
<%-- 						<button type="submit" onclick="location.href='/ebb/categoryDelete.do?cidx=${ob.getCidx()}'">삭제하기</button></td> --%>
					</tr>
			</c:forEach>
		</c:if>
	</table>
</div>

</body>
</html>