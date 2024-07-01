<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>회원가입 - mignon</title>
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
<link href="https://fonts.googleapis.com/css2?family=Nanum+Pen+Script&display=swap" rel="stylesheet">
<style>
.custom-label {
	color: #C0C0C0;
}

.custom-placeholder {
	color: #C0C0C0;
}

.d-flex {
	display: flex;
}

.align-items-center {
	align-items: center;
}

.mx-2 {
	margin: 0 0.5rem;
}

.d-flex.align-items-center {
	flex-direction: row !important;
}

.address-input {
	flex: 1;
	width: 100%; /* 텍스트박스의 너비를 조절할 수 있는 값(예: 70%) */
	margin-right: 10px; /* 텍스트박스 오른쪽 여백 설정 */
}

.cartTotal {
    background-color: #F8F9FA; 
    width: 100%; 
    text-align: center;
}

.cartText {
	font-family: 'Nanum Pen Script', cursive;
    color: #333;
    font-size: 50px;
    text-decoration: none;
}

.cartText:hover {
    color: #333;
}

.cartLine{
	width: 100%;
	height: 1px;
	background-color: #555;
	margin-bottom: 10px;
}

.cartCenter{
	background-color: white;
	width: 100%;
}

/**/

/* 카트 아이템에 대한 스타일 추가 또는 조정 */
.none-item {
   display: flex;
   align-items: center;
   margin-bottom: 10px;
   justify-content: center;
   height: 100px;
}

.cart-item {
   display: flex;
   align-items: center;
   margin-bottom: 10px;
   justify-content: center;
}

.cartUpLine {
   display: flex;
   align-items: center;
   margin-bottom: 10px;
   justify-content: center;
   margin-right: 43px;
}

.cart-item img {
   margin-right: 30%;
}

.item-name {
   margin-right: 20px;
   width: 90px;
   text-align: center;
}

.item-price{
	margin-left: 50px;
}

.item-count{
	width: 55px;
	margin-left: 50px;
}

.b{
	margin: 0 auto;
	width: 70%;
	height: 1px;
	background-color: #ccc;
	margin-bottom: 10px;
}
/**/
/* 총 가격 부분 스타일 */
.cartResult {
    width: 100%;
    height: 80px;
    text-align: center;
    display: flex;
    align-items: center;
    justify-content: center;
}

.cartResult div {
    margin-right: 20px; /* 각 요소 사이의 간격 조절 */
    font-size: 18px;
    color: #333;
}

.cartResult span {
    font-weight: bold;
    margin-left: 5px;
    color: #007bff; /* 총 금액의 색상을 변경하려면 여기서 조정하세요 */
}

.deleteCartButton {
    height: 23px;
    width: 23px;
    background-color: #dc3545;
    color: #fff;
    border: none;
    padding: 0 10px; /* 여백을 좌우로만 주도록 수정 */
    cursor: pointer;
    font-size: 14px;
    border-radius: 5px;
    display: flex;
    align-items: center;
    justify-content: center;
    margin-left: 30px;
}

.deleteCartButton:hover {
    background-color: #bd2130;
}




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
							<li><a class="dropdown-item" style="background-color: #999;">장바구니</a></li>
							<li><a class="dropdown-item" href="#!">회원 정보 수정</a></li>
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
	<!-- Header-->
	<header class="bg-dark py-3">
		<!-- 간격 조절 -->
		<div class="container-fluid px-4 px-lg-5">
			<div class="text-center text-white">
				<img src="resources/img/minon.jpg" alt="로고" width="200px"
					height="200px">
				<!-- 로고 크기 조절 -->
			</div>
		</div>
	</header>

	<section class="py-3">
		<div class="cartTotal">
		<div class="cartText">장바구니</div>
		<div class="cartLine"></div>
		<div class="cartUpLine">
    <div style="width: 100px; margin-right: 30%;">제품 사진</div>
    <span class="item-name">제품명</span>
    <span class="item-price">제품 가격</span>
    <span class="item-count">수량</span>
</div>
		<div class="cartCenter">
   <div class="cartLine"></div>
  <c:if test="${empty productList}">
    <div class="none-item">
        등록된 상품이 없습니다.
    </div>
</c:if>

<c:if test="${not empty productList}">
    <div class="cartCenter">
        <!-- 동적으로 여기에 카트 아이템을 표시 -->
        <c:forEach var="product" items="${productList}">
            <div class="cart-item">
                <img src="resources/productImg/${product.productsOrigin}" alt="Item" width="100px" height="100px">
                <input type="hidden" value="${product.productsCode}" name="productsCode" id="productsCode">
                <div class="item-name">${product.productsName}</div>
                <span class="item-price">
                    <fmt:formatNumber type="number" pattern="###,###원" value="${product.productsPrice}" />
                </span>
                <input type="number" class="item-count" name="productsMargin" value="${product.productsMargin}" onchange="changeCount(${product.productsCode},this)">
                <button class="deleteCartButton" onclick="deleteCartItem(${product.productsCode})">X</button>
            </div>
            <div class="b"></div>
        </c:forEach>
    </div>
    <!-- 총 가격 부분 시작 -->
    <div class="cartResult">
        <div>총 상품금액 : <span id="totalAmount">
            <fmt:formatNumber pattern="###,###원" value="${total}" />
        </span></div>
        <button onclick="purchase()" class="btn btn-primary" style="margin-left: 30%;">구매하기</button>
    </div>
    <!-- 총 가격 부분 끝 -->
</c:if>


		<div class="cartLine"></div>
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
	<script
		src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>



	<script>
		// 'mignon' 클래스를 가진 요소를 가져옵니다.
		const mignonLink = document.querySelector('.navbar-brand');

		// 클릭 이벤트를 추가합니다.
		mignonLink.addEventListener('click', function() {
			// index 페이지로 이동
			serverCallByRequest('index', 'post', '');
		});

		function login() {
			let formData = new FormData;
			const id = document.getElementById("login-text userId");
			const pw = document.getElementById("login-text userPw");
			formData.append(id.name, id.value);
			formData.append(pw.name, pw.value);
			serverCallByFetchAjax(formData, 'login', 'post', 'loginResult');
		}

		function loginResult(jsonData) {
			if (jsonData.message != null) {
				alert(jsonData.message);
				if (jsonData.message == "존재하지 않는 계정입니다.") {
					const id = document.getElementById("login-text userId");
					id.value = '';
					id.focus();
				} else if (jsonData.message == "비밀번호가 틀렸습니다.") {
					const pw = document.getElementById("login-text userPw");
					pw.value = '';
					pw.focus();
				}
			} else {
				serverCallByRequest('afterLogin', 'post', '');
			}
		}
		
		function logOut() {
		    // 사용자에게 로그아웃 메시지 표시
		    alert("로그아웃 되었습니다.");

		    // 뒤로가기 버튼 막기

		    // 서버 호출
		    serverCallByRequest('logOut', 'post', '');
		}
		
		function changeCount(obj, data){
			let formData = new FormData();
			const productsCode = document.getElementById("productsCode");
			formData.append("productsMargin", data.value);
			formData.append("productsCode", obj);
			serverCallByFetchAjax(formData, 'changeCount', 'post', 'changeCountResult');
			console.log(obj.value);
		}
		
		function changeCountResult(){
			console.log("ok");
			updateTotalAmount();
		}
		
		function deleteCartItem(obj){
			let formData = new FormData();
			formData.append("productsCode", obj);
			serverCallByFetchAjax(formData, 'delCart', 'post', 'deleteCartItemResult')
		}
		
		function deleteCartItemResult(jsonData){
				alert(jsonData.message);
				serverCallByRequest('moveCart','post','');
		}
		 
		function updateTotalAmount() {
		    let totalAmount = 0;
		    const itemCountElements = document.querySelectorAll('.item-count');
		    const itemPriceElements = document.querySelectorAll('.item-price');

		    itemCountElements.forEach(function (itemCount, index) {
		        const priceText = itemPriceElements[index].innerText;
		        const price = parseInt(priceText.replace(/[^\d]/g, ''), 10) || 0; // 숫자만 추출하고, 숫자가 아닌 경우 0으로 기본값 설정
		        const quantity = parseInt(itemCount.value, 10) || 0; // 수량이 숫자가 아닌 경우 0으로 기본값 설정

		        totalAmount += price * quantity;
		    });

		    const totalAmountElement = document.getElementById("totalAmount");
		    totalAmountElement.innerText = new Intl.NumberFormat('ko-KR').format(totalAmount) + '원';
		}


	</script>
</body>
</html>
