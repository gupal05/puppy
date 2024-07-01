<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
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

@
keyframes fade {from { opacity:0.4;
	
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

.mainLine {
	width: 99%;
	height: 1px;
	background-color: #ccc;
}

.mainText {
	width: 100%;
	height: 50px;
	font-size: 30px;
	font-family: 'Jua', sans-serif;
	font-family: 'Sunflower', sans-serif;
	margin-top: 30px;
	margin-bottom: -55px;
}

.mainBottomLine {
	width: 99%;;
	height: 1px;
	background-color: #ccc;
	margin-bottom: 20px;
	margin-top: 50px;
}


.modal-backdrop {
    position: fixed;
    top: 0;
    right: 0;
    bottom: 0;
    left: 0;
    background-color: rgba(0, 0, 0, 0.5); /* 어두움 정도를 조절하려면 알파 값(0에서 1까지)을 조정하세요 */
}

.listBoxName{
	width: 33%;
	height: 100%;
	text-align: center;
}
.listBoxPrice{
	width: 33%;
	height: 100%;
	text-align: center;
}
.listBoxCount{
	width: 33%;
	height: 100%;
	text-align: center;
}


</style>
</head>
<body>
	<!-- Navigation-->
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<div class="container px-4 px-lg-5">
			<div style="margin-left: -150px; padding-right: 85px;">
				<input type="button"
					onClick="serverCallByRequest('logoHome','post','')" value="mignon"
					style="border: none; /* 테두리 없애기 */ background: none; font-size: 20px;">
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
				<a class="navbar-brand" href="#!" style="font-size: 15px;">${userInfo.userName}</a>
				<div style="margin-left: -15px;">
					<ul class="navbar-nav me-auto mb-2 mb-lg-0 ms-lg-4">
						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" id="navbarDropdown" href="#"
							role="button" data-bs-toggle="dropdown" aria-expanded="false">상품
								관리</a>
							<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
								<li><a class="dropdown-item" href="#!"
									onClick="serverCallByRequest('addProduct','post','')">상품 등록</a></li>
								<li><a class="dropdown-item"
									style="background-color: #999;">상품 수정</a></li>
							</ul></li>
					</ul>
				</div>
				<div style="margin-left: -15px;">
					<ul class="navbar-nav me-auto mb-2 mb-lg-0 ms-lg-4">
						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" id="navbarDropdown" href="#"
							role="button" data-bs-toggle="dropdown" aria-expanded="false">고객
								관리</a>
							<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
								<li><a class="dropdown-item" href="#!">회원 조회</a></li>
								<li><a class="dropdown-item" href="#!">회원 정보 수정</a></li>
							</ul></li>
					</ul>
				</div>
				<div style="margin-left: -15px;">
					<ul class="navbar-nav me-auto mb-2 mb-lg-0 ms-lg-4">
						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" id="navbarDropdown" href="#"
							role="button" data-bs-toggle="dropdown" aria-expanded="false">쿠폰
								관리</a>
							<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
								<li><a class="dropdown-item" href="#!">쿠폰 발급</a></li>
								<li><a class="dropdown-item" href="#!">쿠폰 생성</a></li>
								<li><a class="dropdown-item" href="#!">쿠폰 목록</a></li>
							</ul></li>
					</ul>
				</div>
				<button class="btn mx-1" type="submit" onClick="logOut()"
					style="padding: 0.25rem 0.5rem; font-size: 0.985rem; color: #0000008c; margin-left: 5px;">
					<!-- <i class="bi-cart-fill me-1"></i> -->
					LogOut <span class="badge bg-dark text-white ms-1 rounded-pill"></span>
				</button>
				<!-- </form> -->
			</div>
		</div>
	</nav>

	<!-- Header-->
	<header class="bg-dark py-5">
		<div class="container px-4 px-lg-5 my-5">
			<div class="text-center text-white">
				<img src="resources/img/minon.jpg" alt="로고" width="350px"
					height="350px">
			</div>
		</div>
	</header>

	<!-- 상품 등록 폼 (상품 이름, 설명, 가격, 사진 업로드 기능 포함) -->
	<section class="py-5">
		<div class="container px-4 px-lg-5 mt-5">
			<!-- 상품 이름 입력 폼 -->
			<!-- 상품 이름 입력 폼 -->
			<div class="mb-3" style="display: flex; align-items: center; justify-content: center;">
				<select class="form-control" id="cateCode" onchange="selCate(this.value)"
					name="productsName" required style="margin-right: 40px; width: 20%;">
					<option value="">대분류 선택</option>
					<c:forEach var="cate" items="${cate}">
							<option value="${cate.cateCode}">${cate.cateName}</option>
						</c:forEach>	
				</select>
				<select class="form-control" id="secBox" onchange="getP(this.value)"
					name="productsName" required style="margin-right: 40px; width: 20%;">
					<option value="">소분류 선택</option>
					<c:forEach var="cateList" items="${cateList}">
						<option value="${cateList.cdCode}">${cateList.cdName}</option>
					</c:forEach>
				</select>
				<select class="form-control" id="productsName"
					name="productsName" required style="margin-right: 5px; width: 20%;">
					<option value="">상품 선택</option>
					<c:forEach var="product" items="${product}">
						<option value="${product.productsCode}">${product.productsName}</option>
					</c:forEach>
				</select>
				<button class="btn btn-primary" onClick="getProductList()">찾기</button>
			</div>
			<div style="width: 100%; height: 1px; background-color: #888; margin-bottom: 10px;"></div>
			<div style="width: 100%; height: 50px; display: flex; margin-left: 330px;">
			<div>
			상품명
			</div>
			<div style="margin-left: 400px;">
			가격
			</div>
			<div style="margin-left: 422px;">
			수량
			</div>
			</div>
			<div style="width: 100%; height: 1px; background-color: #888; margin-top: -15px; margin-bottom: 15px;"></div>
			<div id="productListContainer">
			<c:forEach var="product" items="${productList}">
				<div style="width: 100%; height: 50px; display: flex; margin-left: 70px;">
					<div class="listBoxImage" id="listBoxImage">
						<img src="resources/productImg/${product.message}" alt="listBoxImage" width="60px"
					height="100%" id="imgBox">
					</div>
					<div class="listBoxName" id="listBoxName">
						${product.productsName}
					</div>
					<div class="listBoxPrice" id="listBoxPrice">
						${product.productsPrice}
					</div>
					<div class="listBoxCount" id="listBoxCount">
						${product.productsCount}
					</div>
					<button type="button" onclick="modify(${product.productsName})">a</button>
				</div>
			</c:forEach>
			</div>
			<div class="mb-3" style="display: flex; align-items: center; justify-content: center;">
			<button type="button" class="btn btn-primary" onclick="aa()">등록</button>
			</div>
			
			<!-- 모달 창 -->
            <!-- <div class="modal fade" id="findModal" tabindex="-1" aria-labelledby="findModalLabel" aria-hidden="true">
			<div class="modal-backdrop">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="findModalLabel">상품 이름 검색</h5>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body" style="display: flex;">
                        <input type="text" style="width: 80%; margin-right: 10px; margin-left: 15px;" id="simpleName" name="productsName">
                        <input type="button" value="검색" onClick="getProductName()">
                        </div>
                        <div style="width: 100%; height: 1px; background-color: #ccc;"></div>
                            <c:if test="${empty productList}">
                            	<a>상품을 검색하세요.</a>
                            </c:if>
                            <c:if test="${not empty productList}">
                            	<c:forEach var="product" items="${productList}">
									<option value="${product.productsCode}">${product.productsName}</option>
								</c:forEach>
                            </c:if>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
                        </div>
                    </div>
                </div>
                </div>
            </div> -->
			
		</div>
	</section>
	<!-- Footer-->
	<!-- Bootstrap core JS-->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
	<!-- Core theme JS-->
	<script src="resources/js/scripts.js"></script>
	<script src="resources/js/mainsj.js"></script>
	<script>

		// 'mignon' 클래스를 가진 요소를 가져옵니다.
		const mignonLink = document.querySelector('.navbar-brand');

		// 클릭 이벤트를 추가합니다.
		mignonLink.addEventListener('click', function() {
			// index 페이지로 이동
			serverCallByRequest('afterLoginManager', 'post', '');
		});
		
		function selCate(obj){
			const formData = new FormData;
			formData.append("cateCode", obj);
			serverCallByFetchAjax(formData, 'getCateDetail', 'post', 'getCateDetailResult');
		}
		
		

		
		function getCateDetailResult(jsonData) {
			 // 상세 분류를 나타낼 DOM 엘리먼트를 선택합니다.
	        const selectElement = document.getElementById("secBox");
	        // 기존의 옵션을 모두 제거합니다.
	        selectElement.innerHTML = "";
	        // 받아온 상세 분류를 옵션으로 추가합니다.
	        for (let idx = 0; idx < jsonData.length; idx++) {
	            const option = document.createElement("option");
	            option.value = jsonData[idx].cdCode;
	            option.innerText = jsonData[idx].cdName;
	            selectElement.appendChild(option);
	        }
		}
		
		function getP(obj){
			const formData = new FormData;
			formData.append("cdCode", obj);
			serverCallByFetchAjax(formData, 'getProName', 'post', 'getPResult');
		}
		
		function getPResult(jsonData){
			 // 상세 분류를 나타낼 DOM 엘리먼트를 선택합니다.
	        const selectElement = document.getElementById("productsName");
	        // 기존의 옵션을 모두 제거합니다.
	        selectElement.innerHTML = "";
	        // 받아온 상세 분류를 옵션으로 추가합니다.
	        for (let idx = 0; idx < jsonData.length; idx++) {
	            const option = document.createElement("option");
	            option.value = jsonData[idx].productsCode;
	            option.innerText = jsonData[idx].productsName;
	            selectElement.appendChild(option);
		}
		}
		
		function getProductList(obj){
			const formData = new FormData;
			const productsName = document.getElementById("productsName");
			formData.append("productsCode", productsName.value);
			serverCallByFetchAjax(formData, 'getProductList', 'post', 'getProductListResult');
		}
		
		function getProductListResult(jsonData) {
			const productListContainer = document.getElementById("productListContainer");
			let sum = productListContainer.childElementCount - jsonData.length;
			let is = true;
			alert(sum);
			while(is){
				if (productListContainer.lastChild) {
		            productListContainer.removeChild(productListContainer.lastChild);
		            if(productListContainer.childElementCount === jsonData.length){
		            	is = false;
		            }
		        }
			}  const listBoxName = document.getElementById("listBoxName");
			   const listBoxPrice = document.getElementById("listBoxPrice");
			   const listBoxCount = document.getElementById("listBoxCount");
			   const imgBox = document.getElementById("imgBox");
			   listBoxName.innerText = "";
			   listBoxPrice.innerText = "";
			   listBoxCount.innerText = "";
			   imgBox.src = "resources/productImg/" + jsonData[0].message;
			   listBoxName.innerText = (jsonData[0].productsName);
			   listBoxPrice.innerText = (jsonData[0].productsPrice);
			   listBoxCount.innerText = (jsonData[0].productsCount);
		    // 처음부터 3개의 자식 엘리먼트를 삭제
		   /* for (let i = 0; i < sum; i++) {
		        if (productListContainer.lastChild) {
		            productListContainer.removeChild(productListContainer.lastChild);
		        }
		    }*/
		   /*const listBoxName = document.getElementById("listBoxName");
		   const listBoxPrice = document.getElementById("listBoxPrice");
		   const listBoxCount = document.getElementById("listBoxCount");
		   listBoxName.innerText = "";
		   listBoxPrice.innerText = "";
		   listBoxCount.innerText = "";
		   listBoxName.innerText = (jsonData[0].productsName);
		   listBoxPrice.innerText = (jsonData[0].productsPrice);
		   listBoxCount.innerText = (jsonData[0].productsCount);*/
		}

		function modify(aa){
			const box = document.getElementById("listBoxName");
			alert(aa);
		}

		/*function getProductName(){
			let formData = new FormData();
			const simpleName = document.getElementById("simpleName");
			formData.append(simpleName.name, simpleName.value);
			serverCallByFetchAjax(formData, 'getProductName', 'post', 'getProductNameResult');
		}
		
		function getProductNameResult(productList) {*/
		    /*const modalContent = document.getElementById('modal-content');

		    // Clear existing content
		    modalContent.innerHTML = '';

		    if (productList.length > 0) {
		        const selectElement = document.createElement('select');

		        productList.forEach(product => {
		            const optionElement = document.createElement('option');
		            optionElement.value = product.productsCode;
		            optionElement.text = product.productsName;
		            selectElement.appendChild(optionElement);
		        });

		        modalContent.appendChild(selectElement);
		    } else {
		        // Handle case when no products are found
		        modalContent.innerText = '상품을 찾을 수 없습니다.';
		    }*/

		/*==================================================================================================================*/
	</script>
</body>
</html>