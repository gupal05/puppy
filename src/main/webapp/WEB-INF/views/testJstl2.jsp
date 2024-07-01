<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="resources/js/mainsj.js"></script>
</head>
<body>
<div style="display: flex;">
<input type="text" id="test">
<input type="button" onclick="test()">
</div>
<script>
function test(){
	const data = [];
	const data2 = [];
	const t = document.getElementById('test');
	data.push('cdCode', t.value);
	data2.push(data);
	serverCallByRequest('testJstl','get',data2);
}
</script>
</body>
</html>