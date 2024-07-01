<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
    function toggleImage() {
    	const aa = document.getElementById('aa');
        var image = document.getElementById("hiddenImage");
        if (image.style.display === "none" || image.style.display === "" || aa.value === "상품 상세보기") {
            image.style.display = "block";
            aa.value = '접기';
        } else {
        	aa.value = '상품 상세보기';
            image.style.display = "none";
        }
    }
</script>
</head>
<body>
<div class="container px-4 px-lg-5 my-5">
    <div class="text-center text-white">
        <img src="resources/productImg/testindex.jpg" alt="로고" width="600px" height="350px">
    </div>
    <div class="text-center text-white">
        <img id="hiddenImage" src="resources/productImg/test.jpg" alt="로고" width="600px" style="display: none; padding-top:10px;">
    </div>
    <input type="button" onclick="toggleImage()" value="상품 상세보기" id="aa">
</div>
</body>
</html>
