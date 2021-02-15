<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:import url="preApprv.jsp"/>
	<c:redirect url="preapprvlist.do?midx=${logOK.getUidx()}"/> 
</body>
</html>