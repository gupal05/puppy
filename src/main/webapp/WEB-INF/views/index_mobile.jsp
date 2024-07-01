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
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Jua&family=Sunflower:wght@500&display=swap" rel="stylesheet">
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

.mainLine{
	width: 100%;
	height: 1px;
	background-color: #ccc;
}

.mainText{
	width: 80%;
	height: 50px;
	font-size: 20px;
	font-family: 'Jua', sans-serif;
	font-family: 'Sunflower', sans-serif;
	margin-top: 5px;
	margin-bottom: -55px;
	margin-left: 20px;
}

.mainBottomLine{
	width: 100%;;
	height: 1px;
	background-color: #ccc;
	margin-top: 37px;
	margin-bottom: -25px;
}

</style>
</head>
<body>
<!-- Navigation-->
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<div class="container px-4 px-lg-5" >
		<div style="margin-left: -150px; padding-right: 85px;">
			<input type="button" onClick="serverCallByRequest('index','post','')" class="navbar-brand" value="mignon" style="border: none; /* 테두리 없애기 */background: none;">
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
							<li><a class="dropdown-item" href="#!">이기택</a></li>
							<li><hr class="dropdown-divider" /></li>
							<li><a class="dropdown-item" href="#!">현재 예약 목록</a></li>
							<li><a class="dropdown-item" href="#!">이전 예약 목록</a></li>
						</ul></li>
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" id="navbarDropdown" href="#"
						role="button" data-bs-toggle="dropdown" aria-expanded="false">간식</a>
						<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
							<li><a class="dropdown-item" href="#!">하의 전체 보기</a></li>
							<li><hr class="dropdown-divider" /></li>
							<li><a class="dropdown-item" href="#!"><font size=2>슬랙스</font></a></li>
							<li><a class="dropdown-item" href="#!"><font size=2>트레이닝</font></a></li>
							<li><a class="dropdown-item" href="#!"><font size=2>반바지</font></a></li>
						</ul></li>
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" id="navbarDropdown" href="#"
						role="button" data-bs-toggle="dropdown" aria-expanded="false">사료/영양제</a>
						<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
							<li><a class="dropdown-item" href="#!">하의 전체 보기</a></li>
							<li><hr class="dropdown-divider" /></li>
							<li><a class="dropdown-item" href="#!"><font size=2>슬랙스</font></a></li>
							<li><a class="dropdown-item" href="#!"><font size=2>트레이닝</font></a></li>
							<li><a class="dropdown-item" href="#!"><font size=2>반바지</font></a></li>
						</ul></li>
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" id="navbarDropdown" href="#"
						role="button" data-bs-toggle="dropdown" aria-expanded="false">미용용품</a>
						<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
							<li><a class="dropdown-item" href="#!">하의 전체 보기</a></li>
							<li><hr class="dropdown-divider" /></li>
							<li><a class="dropdown-item" href="#!"><font size=2>슬랙스</font></a></li>
							<li><a class="dropdown-item" href="#!"><font size=2>트레이닝</font></a></li>
							<li><a class="dropdown-item" href="#!"><font size=2>반바지</font></a></li>
						</ul></li>
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" id="navbarDropdown" href="#"
						role="button" data-bs-toggle="dropdown" aria-expanded="false">위생용품</a>
						<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
							<li><a class="dropdown-item" href="#!">하의 전체 보기</a></li>
							<li><hr class="dropdown-divider" /></li>
							<li><a class="dropdown-item" href="#!"><font size=2>슬랙스</font></a></li>
							<li><a class="dropdown-item" href="#!"><font size=2>트레이닝</font></a></li>
							<li><a class="dropdown-item" href="#!"><font size=2>반바지</font></a></li>
						</ul></li>
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" id="navbarDropdown" href="#"
						role="button" data-bs-toggle="dropdown" aria-expanded="false">식기</a>
						<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
							<li><a class="dropdown-item" href="#!">하의 전체 보기</a></li>
							<li><hr class="dropdown-divider" /></li>
							<li><a class="dropdown-item" href="#!"><font size=2>슬랙스</font></a></li>
							<li><a class="dropdown-item" href="#!"><font size=2>트레이닝</font></a></li>
							<li><a class="dropdown-item" href="#!"><font size=2>반바지</font></a></li>
						</ul></li>
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" id="navbarDropdown" href="#"
						role="button" data-bs-toggle="dropdown" aria-expanded="false">외출용품</a>
						<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
							<li><a class="dropdown-item" href="#!">하의 전체 보기</a></li>
							<li><hr class="dropdown-divider" /></li>
							<li><a class="dropdown-item" href="#!"><font size=2>슬랙스</font></a></li>
							<li><a class="dropdown-item" href="#!"><font size=2>트레이닝</font></a></li>
							<li><a class="dropdown-item" href="#!"><font size=2>반바지</font></a></li>
						</ul></li>
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" id="navbarDropdown" href="#"
						role="button" data-bs-toggle="dropdown" aria-expanded="false">집/쿠션</a>
						<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
							<li><a class="dropdown-item" href="#!">하의 전체 보기</a></li>
							<li><hr class="dropdown-divider" /></li>
							<li><a class="dropdown-item" href="#!"><font size=2>슬랙스</font></a></li>
							<li><a class="dropdown-item" href="#!"><font size=2>트레이닝</font></a></li>
							<li><a class="dropdown-item" href="#!"><font size=2>반바지</font></a></li>
						</ul></li>
				</ul>
				<!-- <form class="d-flex"> -->
					<button class="btn btn-outline-dark mx-1" type="submit" onClick="serverCallByRequest('joinPage','post','')">
						<!-- <i class="bi-cart-fill me-1"></i> --> 회원가입 <span
							class="badge bg-dark text-white ms-1 rounded-pill"></span>
					</button>
					<button class="btn btn-outline-dark mx-1" type="submit" onClick="serverCallByRequest('loginPage','get','')">
						<!-- <i class="bi-cart-fill me-1"></i> --> 로그인 <span
							class="badge bg-dark text-white ms-1 rounded-pill"></span>
					</button>
				<!-- </form> -->
			</div>
		</div>
	</nav>
	<div style="width: 100%; height: 1px; background-color: #ccc;"></div>
	<!-- Header-->
    <div class="slideshow-container">
        <img src="resources/img/슬라이드3.jpg" alt="로고" width="100%" height="200px" class="mySlides fade">
            <!-- <img src="resources/img/minon.jpg" alt="로고" width="350px" height="350px"> -->
        <img src="resources/img/c4f80a5d10178e13cb76c6b9dcf3fdb2.jpg" alt="로고" width="100%" height="200px" class="mySlides fade">
            <!-- <img src="resources/img/c4f80a5d10178e13cb76c6b9dcf3fdb2.jpg" alt="로고" width="1300px" height="400px"> -->
        <img src="resources/img/슬라이드2.jpg" alt="로고" width="100%" height="200px" class="mySlides fade">
            <!-- <img src="resources/img/undraw_posting_photo.svg" alt="로고" width="350px" height="350px"> -->
    </div>
	<!-- Section-->
	<section class="py-5">
	<div class="mainLine"></div>
<div class="mainText">인기상품</div>
    <div class="mainBottomLine"></div>
    <div class="container px-4 px-lg-5 mt-5">
        <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-5 justify-content-center">
            <c:forEach var="product" items="${products}">
                <div class="col mb-5">
                    <div class="card h-100">
                        <!-- Product image-->
                        <img class="card-img-top" src="resources/productImg/${product.message}" width="119px" height="125px" alt="Product Image" />
                        <!-- Product details-->
                        <div class="card-body p-2">
                            <div class="text-center" style="margin-top:3px;">
                                <!-- Product name-->
                                 <input class="form-control fw-bolder" id="productsName" type="text" value="${product.productsName}" readonly style="border: none; text-align: center; background-color: transparent;"/>
                                <!-- Product price (formatted)-->
                                <fmt:formatNumber value="${product.productsPrice}" pattern="#,###원" var="formattedPrice" />
                                <c:out value="${formattedPrice}" />
                                <input type="hidden" name="productsCode" id="productsCode" value="${product.productsCode}" readonly>
                            </div>
                        </div>
                        <!-- Product actions-->
                        <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                            <div class="text-center">
                                <a class="btn btn-outline-dark mt-auto" href="#" onClick="clickTest(${product.productsCode})">상품 보기</a>
                            </div>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>
    </div>
</section>

	<!-- Footer-->
	<footer class="py-5 bg-dark">
		<div class="container">
			<p class="m-0 text-center text-white">Copyright &copy; Your
				Website 2023</p>
		</div>
	</footer>
	<!-- Bootstrap core JS-->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
	<!-- Core theme JS-->
	<script src="resources/js/scripts.js"></script>
	<script src="resources/js/mainsj.js"></script>
	<script>
	// 슬라이드쇼용 JavaScript
	let slideIndex = 0;
	showSlides();

	function showSlides() {
	    let i;
	    const slides = document.getElementsByClassName("mySlides");
	    for (i = 0; i < slides.length; i++) {
	        slides[i].style.display = "none";
	    }
	    slideIndex++;
	    if (slideIndex > slides.length) {
	        slideIndex = 1;
	    }
	    slides[slideIndex - 1].style.display = "flex"; // 이미지를 가운데 정렬
	    setTimeout(showSlides, 3500); // 2초마다 슬라이드 변경
	}
	// 'mignon' 클래스를 가진 요소를 가져옵니다.
	const mignonLink = document.querySelector('.navbar-brand');

	// 클릭 이벤트를 추가합니다.
	mignonLink.addEventListener('click', function() {
	    // 경고창에 'ok'를 출력합니다.
	    serverCallByRequest('index','post','');
	});
	
	function clickTest(obj){
		let formChild = [];
		let data = [];
		data.push("productsCode", obj);
		formChild.push(data);
		serverCallByRequest('product','post',formChild);
	}
	function join(){
		let formChild = [];
		let data = [];
		const test = document.getElementById("text-input");
		console.log("aa");
		console.log(test.name);
		data.push(test.name, test.value);
		formChild.push(data);
		serverCallByRequest('test', 'post', formChild);
	}
	/*function join(){
		let formData = new FormData;
		const test = document.getElementById("text-input");
		formData.append(test.name, test.value);
		serverCallByFetchAjax(formData, "test", "post", "rrr");
	}*/
	
	function rrr(){
		alert("shhhhh");
	}
	/*==================================================================================================================*/
	
	</script>
</body>
</html>