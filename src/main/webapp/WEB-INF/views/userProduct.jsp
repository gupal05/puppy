<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
 <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet">
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>Shop Homepage - Start Bootstrap Template</title>
<!-- Favicon-->
<link rel="icon" type="image/x-icon" href="resources/assets/favicon.ico" />
<!-- Bootstrap icons-->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css"
	rel="stylesheet" />
<!-- Core theme CSS (includes Bootstrap)-->
<link href="resources/css/styles.css" rel="stylesheet" />
<style>
body {
	background-color: #f8f9fa; /* 연한 회색 배경색상 */
	font-family: 'Arial', sans-serif;
}

.container {
	max-width: 1500px; /* 원하는 최대 너비로 설정하세요 */
}

.footer {
	text-align: center;
	padding: 1rem 0;
}

.product-form {
	max-width: 400px;
	margin: 0 auto;
	background-color: #ffffff;
	padding: 20px;
	border-radius: 10px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
	margin-top: 20px;
}

.product-form input[type="file"] {
	margin-bottom: 10px;
}

.header-logo {
	display: flex;
	justify-content: center;
	align-items: center;
	height: 100%;
}

.header {
	padding: 2rem;
}


/* select 요소에 대한 스타일 */
select {
	width: 45%; /* 원하는 너비로 설정 */
	padding: 10px; /* 내부 여백 설정 */
	font-size: 16px; /* 글꼴 크기 설정 */
	border: 1px solid #ccc; /* 테두리 스타일 및 색상 설정 */
	border-radius: 5px; /* 테두리 둥글게 만들기 */
	background-color: #fff; /* 배경색상 설정 */
}

/* option 요소에 대한 스타일 */
option {
	font-size: 14px; /* 글꼴 크기 설정 */
	background-color: #fff; /* 배경색상 설정 */
	color: #333; /* 글자색상 설정 */
}

/* option 요소의 호버 상태에 대한 스타일 */
option:hover {
	background-color: #f2f2f2; /* 호버시 배경색상 변경 */
}

.mySlides {
    display: flex;
    justify-content: center; /* 이미지를 수평으로 가운데 정렬 */
    align-items: flex-start; /* 이미지를 수직으로 위쪽에 정렬 */
    animation-name: fade;
    animation-duration: 3.5s;
    text-align: center; /* 이미지를 가운데 정렬 */
}

/* 슬라이드쇼용 CSS */
.fade {
    display: none;
    animation-name: fade;
    animation-duration: 3.5s;
    text-align: center; /* 이미지를 가운데 정렬 */
}

@keyframes fade {
    from {
        opacity: 0.4;
    }
    to {
        opacity: 1;
    }
}

.prev, .next {
    position: absolute;
    top: 50%; /* 부모 요소의 중앙을 기준으로 위에서 50% 떨어진 위치에 배치 */
    transform: translateY(-50%); /* 세로 방향으로 자기 자신의 50%만큼 위로 이동하여 중앙 정렬 */
    font-size: 36px;
    cursor: pointer;
    color: black; /* 화살표 색상을 원하는 색으로 변경하세요 */
    background-color: transparent; /* 배경색상을 투명하게 설정하여 배경을 없앱니다 */
    border: none;
}

.prev {
    left: 10px; /* 왼쪽에 배치 */
}

.next {
    right: 10px; /* 오른쪽에 배치 */
}

.product-container {
    display: flex;
    flex-direction: row;
    align-items: center;
    justify-content: center;
}

.product-image {
    margin-right: 20px;
    max-width: 238px;
    max-height: 250px;
    width: auto;
    height: auto;
    display: flex; /* 이미지를 수평으로 정렬하기 위해 추가 */
    justify-content: center; /* 이미지를 가운데 정렬하기 위해 추가 */
    margin-left: 20%;
}



.product-details {
    flex: 1;
    margin-top: -100px;
    margin-left: 170px;
}

.product-section {
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
    height: 50vh; /* 높이를 원하는 값으로 설정하세요. 100vh는 뷰포트 높이의 100%를 의미합니다. */
}

.product-buttons {
    position: absolute;
    top: 50%; /* 부모 요소의 중앙을 기준으로 위에서 50% 떨어진 위치에 배치 */
    left: 50%; /* 부모 요소의 중앙을 기준으로 왼쪽에서 50% 떨어진 위치에 배치 */
    transform: translate(-50%, -50%); /* 부모 요소의 중앙을 기준으로 정렬하기 */
    display: flex;
    gap: 0px; /* 버튼 간격 설정 */
     width: 600px; /* 너비를 600px로 설정 */
     justify-content: center;
     margin-top: 50px;
     
}

.product-info-button {
    width: 200px;
}



.review-button {
    width: 200px;
}

.product-buttons button {
    padding: 10px 20px;
    background-color: transparent; /* 배경을 투명하게 설정 */
    color: black;
    cursor: pointer;
    transition: background-color 0.3s, color 0.3s; /* hover 효과를 위한 transition 추가 */
    border: 2px solid #ccc; /* 테두리 속성 추가 */
}

.product-buttons button:hover {
    background-color: #ccc;
    color: black;
}

.line {
    width: 100%;
    height: 1px;
    background-color: #ccc; /* 연한 회색 선의 색상을 지정합니다. */
    margin-top: 20px; /* 선과 섹션, 버튼 그룹 사이의 간격을 조절합니다. */
}

.secLine {
	width: 73.5%;
    height: 1px;
    background-color: #ccc; /* 연한 회색 선의 색상을 지정합니다. */
    margin-top: 20px; /* 선과 섹션, 버튼 그룹 사이의 간격을 조절합니다. */
    margin-left: 180px;
    
}

.detail{
	margin-left: 34.3%;
	margin-top: 25px;
}

.contetntImg{
	margin-left: 34.3%;
}

.text-center text-white{
	margin-left: 34.3%;
}

.detailButton{
margin-left: 34.3%;
     width: 600px; /* 너비를 600px로 설정 */
}

.custom-div {
    width: 10%;
    height: 80%;
    max-height: 80%;
    border: 2px solid #ccc; /* 테두리 속성 추가 */
    border-radius: 10px;
    padding: 20px;
    /* Add other styles specific to this div here */
}

.reviewArea{
	width: 600px;
	margin-top: 15px;
	margin-left: 27%;
}

.reviewResult{
	width: 600px;
	margin-top: 20px;
	margin-left: 27%;
}

.reviewText{
	width: 90%;
	height: 100%;
}

.upReview{
	height: 200px;
	position: relative;
}

.reviewButton{
	width: 10%;
	height: 40px;
	position : absolute;
	top: 50%;
	transform: translate(0, -50%);
	margin-left: 10px;
}

.reviewContent {
    border: 2px solid #ccc;
    border-radius: 10px;
    height: 100px; /* 리뷰 콘텐츠의 고정된 높이 설정 */
}

.reviewWriter{
	width: 100%;
	height: 10%;
	margin-left:7px;
	margin-top: 3px;
	font-size: 13px;
}

.reviewLine{
	width: 100%;
	height: 1px;
	margin-top: 2%;
	background-color: #ccc;
}

.reviewShow{
	margin-top: 3px;
	margin-left: 7px;
	word-wrap: break-word; /* 텍스트가 영역을 벗어날 경우 다음 줄로 넘어가도록 설정 */
}

.prImg{
	width: 238px;
	height: 250px;
}

/* Add more styling as needed */


</style>
</head>
<body>
	<!-- Navigation-->
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<div class="container px-4 px-lg-5" >
		<div style="margin-left: -150px; padding-right: 85px;">
			<input type="button" onClick="serverCallByRequest('logoHome','post','')" value="mignon" style="border: none; /* 테두리 없애기 */background: none; font-size: 20px;">
			</div>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav me-auto mb-2 mb-lg-0 ms-lg-4">
					
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" id="navbarDropdown" href="#"
						role="button" data-bs-toggle="dropdown" aria-expanded="false">장난감/훈련용품</a>
						<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
							<li><a class="dropdown-item" href="#!">장난감/훈련용품 전체 보기</a></li>
							<li><hr class="dropdown-divider" /></li>
							<li><a class="dropdown-item" href="#!">현재 예약 목록</a></li>
							<li><a class="dropdown-item" href="#!">이전 예약 목록</a></li>
						</ul></li>
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" id="navbarDropdown" href="#"
						role="button" data-bs-toggle="dropdown" aria-expanded="false">간식</a>
						<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
							<li><a class="dropdown-item" href="#!">간식 전체 보기</a></li>
							<li><hr class="dropdown-divider" /></li>
							<li><a class="dropdown-item" href="#!"><font size=2>슬랙스</font></a></li>
							<li><a class="dropdown-item" href="#!"><font size=2>트레이닝</font></a></li>
							<li><a class="dropdown-item" href="#!"><font size=2>반바지</font></a></li>
						</ul></li>
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" id="navbarDropdown" href="#"
						role="button" data-bs-toggle="dropdown" aria-expanded="false">사료/영양제</a>
						<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
							<li><a class="dropdown-item" href="#!">사료/영양제 전체 보기</a></li>
							<li><hr class="dropdown-divider" /></li>
							<li><a class="dropdown-item" href="#!"><font size=2>슬랙스</font></a></li>
							<li><a class="dropdown-item" href="#!"><font size=2>트레이닝</font></a></li>
							<li><a class="dropdown-item" href="#!"><font size=2>반바지</font></a></li>
						</ul></li>
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" id="navbarDropdown" href="#"
						role="button" data-bs-toggle="dropdown" aria-expanded="false">미용용품</a>
						<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
							<li><a class="dropdown-item" href="#!">미용용품 전체 보기</a></li>
							<li><hr class="dropdown-divider" /></li>
							<li><a class="dropdown-item" href="#!"><font size=2>슬랙스</font></a></li>
							<li><a class="dropdown-item" href="#!"><font size=2>트레이닝</font></a></li>
							<li><a class="dropdown-item" href="#!"><font size=2>반바지</font></a></li>
						</ul></li>
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" id="navbarDropdown" href="#"
						role="button" data-bs-toggle="dropdown" aria-expanded="false">위생용품</a>
						<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
							<li><a class="dropdown-item" href="#!">위생용품 전체 보기</a></li>
							<li><hr class="dropdown-divider" /></li>
							<li><a class="dropdown-item" href="#!"><font size=2>슬랙스</font></a></li>
							<li><a class="dropdown-item" href="#!"><font size=2>트레이닝</font></a></li>
							<li><a class="dropdown-item" href="#!"><font size=2>반바지</font></a></li>
						</ul></li>
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" id="navbarDropdown" href="#"
						role="button" data-bs-toggle="dropdown" aria-expanded="false">식기</a>
						<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
							<li><a class="dropdown-item" href="#!">식기 전체 보기</a></li>
							<li><hr class="dropdown-divider" /></li>
							<li><a class="dropdown-item" href="#!"><font size=2>슬랙스</font></a></li>
							<li><a class="dropdown-item" href="#!"><font size=2>트레이닝</font></a></li>
							<li><a class="dropdown-item" href="#!"><font size=2>반바지</font></a></li>
						</ul></li>
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" id="navbarDropdown" href="#"
						role="button" data-bs-toggle="dropdown" aria-expanded="false">외출용품</a>
						<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
							<li><a class="dropdown-item" href="#!">외출용품 전체 보기</a></li>
							<li><hr class="dropdown-divider" /></li>
							<li><a class="dropdown-item" href="#!"><font size=2>슬랙스</font></a></li>
							<li><a class="dropdown-item" href="#!"><font size=2>트레이닝</font></a></li>
							<li><a class="dropdown-item" href="#!"><font size=2>반바지</font></a></li>
						</ul></li>
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" id="navbarDropdown" href="#"
						role="button" data-bs-toggle="dropdown" aria-expanded="false">집/쿠션</a>
						<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
							<li><a class="dropdown-item" href="#!">집/쿠션 전체 보기</a></li>
							<li><hr class="dropdown-divider" /></li>
							<li><a class="dropdown-item" href="#!"><font size=2>슬랙스</font></a></li>
							<li><a class="dropdown-item" href="#!"><font size=2>트레이닝</font></a></li>
							<li><a class="dropdown-item" href="#!"><font size=2>반바지</font></a></li>
						</ul></li>
				</ul>
				<!-- <form class="d-flex"> -->
				<a class="navbar-brand" href="#!" style="font-size: 15px;">${userInfo.userName} 회원님</a>
				<div style="margin-left: -15px;">
					<ul class="navbar-nav me-auto mb-2 mb-lg-0 ms-lg-4">
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" id="navbarDropdown" href="#"
						role="button" data-bs-toggle="dropdown" aria-expanded="false">My Page</a>
						<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
							<li><a class="dropdown-item" href="#!" onclick="cart()">장바구니</a></li>
							<li><a class="dropdown-item" href="#!" onclick="changeInfo()">회원 정보 수정</a></li>
							<li><a class="dropdown-item" href="#!">보유 쿠폰</a></li>
						</ul></li>
				</ul>
				</div>
					<button class="btn mx-1" type="submit" onClick="logOut()"
					style="padding: 0.25rem 0.5rem; font-size: 0.985rem; color: #0000008c; margin-left: 5px;">
						<!-- <i class="bi-cart-fill me-1"></i> --> LogOut <span
							class="badge bg-dark text-white ms-1 rounded-pill"></span>
					</button>
				<!-- </form> -->
			</div>
		</div>
	</nav>
	<div style="width: 100%; height: 1px; background-color: #ccc;"></div>
<div class="secDiv" style="width: 70%; max-width: 70%; height:100%; max-height:100%; float: left; margin-left: 284px;">
	<!-- Section-->
	 <section class="product-section" style="width: 73%; margin: 0 auto;">
    <div class="container product-container" style="height: 70%;">
        <div class="product-image" style="margin-left: 68px;">
            <img src="resources/productImg/${title}" alt="Product Image" class="prImg">
        </div>
        <div class="product-details" style="margin-top: 29px;">
        	<input type="hidden" id="productsCode" name="productsCode" value='${product.productsCode}'>
            <h2 class="product-title" >${product.productsName}</h2>
            <div style="width: 100%; height: 3px; background-color: black;"></div>
            <p class="product-price" style="padding-top: 20px;">
                    <fmt:formatNumber value="${product.productsPrice}" pattern="###,###원"/>
                </p>
            <div style="width: 50%; height: 2px; background-color: #ccc; margin-top: -20px;"></div>
            <p class="count" style="padding-top: 10px;">남은 수량 : ${product.productsCount}</p>
            <div style="width: 50%; height: 2px; background-color: #ccc; margin-top: -20px; margin-bottom: 10px;"></div>
            <div style="padding-top: 20px;">
            <select style="height: 20px; width: 100px; padding: 0; border: 1px solid #ccc;" id="countIdx" name="productsCount">
            <c:forEach var="i" begin="1" end="${product.productsCount}">
                <option>${i}</option>
            </c:forEach>
        </select>
            </div>
            <div style="padding-top: 30px;"><button class="add-to-cart-button" style="margin-bottom:-100px; border: 1px solid black; border-radius: 5px;" onClick="addCart()">장바구니 담기</button></div>
        </div>
    </div>
<div class="line" style="margin-top: 40px;"></div>
</section>
	<div class="product-buttons">
		<button class="product-info-button">상품정보</button>
		<button class="product-Q&A-button" style="width: 200px;">Q&A</button>
		<button class="review-button">리뷰</button>
	</div>
	<div class="detail" style="margin-left: 367px;">
		<img alt="Product Detail Image"
			src="resources/productImg/${title}" width="600px" height="350px">
	</div>
	<div>
	<img id="hiddenImage" src="resources/productImg/${content}" alt="로고" class="contetntImg"
			width="600px" style="display: none; padding-top: 10px; padding-bottom: 10px; margin-left: 367px;">
	</div>
	<input type="button" class="detailButton" onclick="toggleImage()" value="상품 상세보기" id="aa" style="margin-left: 367px; padding-top: 10px;">
	<div class="secLine"></div>
		<div class="reviewArea">
			<div class="reviewTitle">
				<h3>Review</h3>
			</div>
			<div class="upReview">
				<input type="text" class="reviewText"> <input type="button"
					class="reviewButton" value="등록">
			</div>
		</div>
		<div class="reviewResult">
			<div class="reviewContent">
				<div class="reviewWriter">작성자 : dudgh2349 (황**)</div>
				<div class="reviewLine"></div>
				<div class="reviewShow">asdasfadsfadfasfadfefadfdcadfadsfasdsadwadasdsadxasccscsdaffffffsddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddn</div>
			</div>
		</div>
		<div class="reviewResult">
			<div class="reviewContent">
				<div class="reviewWriter">작성자 : dudgh2349 (황**)</div>
				<div class="reviewLine"></div>
				<div class="reviewShow">
					<a></a>
				</div>
			</div>
		</div>
		<!-- <div class="text-center text-white">
		<img id="hiddenImage" src="resources/productImg/test.jpg" alt="로고"
			width="600px" style="display: none; padding-top: 10px;">
	</div>
	<input type="button" class="detailButton" onclick="toggleImage()" value="상품 상세보기" id="aa"> -->
	<!-- Footer-->
	<footer class="py-5 bg-dark" style="margin-top: 50px;">
		<div class="container">
			<p class="m-0 text-center text-white">Copyright &copy; Your
				Website 2023</p>
		</div>
	</footer>
	</div>
	<!-- Bootstrap core JS-->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
	<!-- Core theme JS-->
	<script src="resources/js/scripts.js"></script>
	<script src="resources/js/mainsj.js"></script>
	
<script>

function addCart() {
	let formData = new FormData;
	const id = document.getElementById("productsCode");
	const pw = document.getElementById("countIdx");
	formData.append(id.name, id.value);
	formData.append(pw.name, pw.value);
	serverCallByFetchAjax(formData, 'addCart', 'post', 'addCartResult');
}

function addCartResult(jsonData){
	alert(jsonData.message);
	serverCallByRequest('moveCart','post','');
}

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

function logOut() {
    // 사용자에게 로그아웃 메시지 표시
    alert("로그아웃 되었습니다.");

    // 뒤로가기 버튼 막기

    // 서버 호출
    serverCallByRequest('logOut', 'post', '');
}
</script>


</body>
</html>