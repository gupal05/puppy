<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
<div style="display: flex;">
<c:choose>
	<c:when test="${c.cdCode eq '1'}">
		<div style="padding: 0px 10px; color: black;">가</div>
		<div style="padding: 0px 10px; color: #ccc;">나</div>
		<div style="padding: 0px 10px; color: #ccc;">다</div>
		<div style="padding: 0px 10px; color: #ccc;">라</div>
		<div style="padding: 0px 10px; color: #ccc;">마</div>
		<div style="padding: 0px 10px; color: #ccc;">바</div>
		<div style="padding: 0px 10px; color: #ccc;">사</div>
	</c:when>
	<c:when test="${c.cdCode eq '2'}">
		<div style="padding: 0px 10px; color: #ccc;">가</div>
		<div style="padding: 0px 10px; color: black;">나</div>
		<div style="padding: 0px 10px; color: #ccc;">다</div>
		<div style="padding: 0px 10px; color: #ccc;">라</div>
		<div style="padding: 0px 10px; color: #ccc;">마</div>
		<div style="padding: 0px 10px; color: #ccc;">바</div>
		<div style="padding: 0px 10px; color: #ccc;">사</div>
	</c:when>
	<c:when test="${c.cdCode eq '3'}">
		<div style="padding: 0px 10px; color: #ccc;">가</div>
		<div style="padding: 0px 10px; color: #ccc;">나</div>
		<div style="padding: 0px 10px; color: black;">다</div>
		<div style="padding: 0px 10px; color: #ccc;">라</div>
		<div style="padding: 0px 10px; color: #ccc;">마</div>
		<div style="padding: 0px 10px; color: #ccc;">바</div>
		<div style="padding: 0px 10px; color: #ccc;">사</div>
	</c:when>
	<c:when test="${c.cdCode eq '4'}">
		<div style="padding: 0px 10px; color: #ccc;">가</div>
		<div style="padding: 0px 10px; color: #ccc;">나</div>
		<div style="padding: 0px 10px; color: #ccc;">다</div>
		<div style="padding: 0px 10px; color: black;">라</div>
		<div style="padding: 0px 10px; color: #ccc;">마</div>
		<div style="padding: 0px 10px; color: #ccc;">바</div>
		<div style="padding: 0px 10px; color: #ccc;">사</div>
	</c:when>
	<c:when test="${c.cdCode eq '5'}">
		<div style="padding: 0px 10px; color: #ccc;">가</div>
		<div style="padding: 0px 10px; color: #ccc;">나</div>
		<div style="padding: 0px 10px; color: #ccc;">다</div>
		<div style="padding: 0px 10px; color: #ccc;">라</div>
		<div style="padding: 0px 10px; color: black;">마</div>
		<div style="padding: 0px 10px; color: #ccc;">바</div>
		<div style="padding: 0px 10px; color: #ccc;">사</div>
	</c:when>
	<c:when test="${c.cdCode eq '6'}">
		<div style="padding: 0px 10px; color: #ccc;">가</div>
		<div style="padding: 0px 10px; color: #ccc;">나</div>
		<div style="padding: 0px 10px; color: #ccc;">다</div>
		<div style="padding: 0px 10px; color: #ccc;">라</div>
		<div style="padding: 0px 10px; color: #ccc;">마</div>
		<div style="padding: 0px 10px; color: black;">바</div>
		<div style="padding: 0px 10px; color: #ccc;">사</div>
	</c:when>
	<c:when test="${c.cdCode eq '7'}">
		<div style="padding: 0px 10px; color: #ccc;">가</div>
		<div style="padding: 0px 10px; color: #ccc;">나</div>
		<div style="padding: 0px 10px; color: #ccc;">다</div>
		<div style="padding: 0px 10px; color: #ccc;">라</div>
		<div style="padding: 0px 10px; color: #ccc;">마</div>
		<div style="padding: 0px 10px; color: #ccc;">바</div>
		<div style="padding: 0px 10px; color: black;">사</div>
	</c:when>
</c:choose>
</div>
</body>
</html>