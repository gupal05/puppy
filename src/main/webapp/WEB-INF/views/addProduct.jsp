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
	width: 99%;
	height: 1px;
	background-color: #ccc;
}

.mainText{
	width: 100%;
	height: 50px;
	font-size: 30px;
	font-family: 'Jua', sans-serif;
	font-family: 'Sunflower', sans-serif;
	margin-top: 30px;
	margin-bottom: -55px;
}

.mainBottomLine{
	width: 99%;;
	height: 1px;
	background-color: #ccc;
	margin-bottom: 20px;
	margin-top: 50px;
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
				<a class="navbar-brand" href="#!" style="font-size: 15px;">${userInfo.userName}</a>
				<div style="margin-left: -15px;">
					<ul class="navbar-nav me-auto mb-2 mb-lg-0 ms-lg-4">
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" id="navbarDropdown" href="#"
						role="button" data-bs-toggle="dropdown" aria-expanded="false">상품 관리</a>
						<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
							<li><a class="dropdown-item" style="background-color: #999;">상품 등록</a></li>
							<li><a class="dropdown-item" href="#!" onClick="serverCallByRequest('changeProduct','post','')">상품 수정</a></li>
						</ul></li>
				</ul>
				</div>
				<div style="margin-left: -15px;">
					<ul class="navbar-nav me-auto mb-2 mb-lg-0 ms-lg-4">
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" id="navbarDropdown" href="#"
						role="button" data-bs-toggle="dropdown" aria-expanded="false">고객 관리</a>
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
						role="button" data-bs-toggle="dropdown" aria-expanded="false">쿠폰 관리</a>
						<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
							<li><a class="dropdown-item" href="#!">쿠폰 발급</a></li>
							<li><a class="dropdown-item" href="#!">쿠폰 생성</a></li>
							<li><a class="dropdown-item" href="#!">쿠폰 목록</a></li>
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
			<h2 class="text-center">상품 등록</h2>
			<form id="productForm" enctype="multipart/form-data">
				<label for="assNumber" style="padding-bottom: 7px;">상품 분류</label>
				<div class="mb-3">
					<select onchange="selCate(this.value)" style="margin-right: 50px;"
						id="cateCode" name=cateCode>
						<option value="">선택해주세요.</option>
						<c:forEach var="cate" items="${cate}">
							<option value="${cate.cateCode}">${cate.cateName}</option>
						</c:forEach>
					</select> <select id="secBox">
						<option value="">상세 분류</option>
						<c:if test="${not empty cateList}">
							<c:forEach var="cate" items="${cateList}">
								<option value="">------------------------------------------------------------------------------</option>
								<option value="${cate.cdCode}">${cate.cdName}</option>
							</c:forEach>
						</c:if>
						<c:if test="${empty cateList}">
							<!-- 원하는 기본 옵션을 여기에 추가할 수 있습니다. -->
							<option value="기본 값">------------------------------------------------------------------------------</option>
						</c:if>
					</select>
				</div>
				<!-- 상품 이름 입력 폼 -->
				<div class="mb-3">
					<label for="productName" class="form-label">상품 이름</label> <input
						type="text" class="form-control" id="productsName"
						name="productsName" required>
				</div>

				<!-- 상품 설명 입력 폼 -->
				<!-- <div class="mb-3">
                <label for="productDescription" class="form-label">상품 설명</label>
                <textarea class="form-control" id="productDescription" name="productDescription" rows="4" required></textarea>
            </div> -->
				<div class="mb-3">
					<label for="productImage" class="form-label">상품 타이틀 이미지 업로드</label>
					<!--  <input type="file" class="form-control" id="productImage" name="productImage" accept="image/*"> -->
					<input type="file" class="form-control" id="productTitleImage"
						name="productTitleImage" accept="image/*" multiple>
				</div>
				<div class="mb-3">
					<label for="productImage" class="form-label">상품 설명 이미지 업로드</label>
					<!--  <input type="file" class="form-control" id="productImage" name="productImage" accept="image/*"> -->
					<input type="file" class="form-control" id="productContentImage"
						name="productContentImage" accept="image/*" multiple>
				</div>

				<!-- 상품 가격 입력 폼 -->
				<div class="mb-3">
					<label for="productPrice" class="form-label">상품 가격</label> <input
						type="number" class="form-control" id="productsPrice"
						name="productsPrice" required>
				</div>
				<!-- 상품 원가 입력 폼 -->
				<div class="mb-3">
					<label for="productOrigin" class="form-label">상품 원가</label> <input
						type="number" class="form-control" id="productsOrigin"
						name="productsOrigin" required>
				</div>
				<!-- 상품 입고 수량 입력 폼 -->
				<div class="mb-3">
					<div>
						<label for="productFirst" class="form-label">입고 수량</label> <input
							type="number" class="form-control" id="productsFirst"
							name="productsFirst" required>
					</div>
					<!-- <div>
                <label for="productCount" class="form-label">현재 수량</label>
                <input type="text" class="form-control" id="productsCount" name="productCount" required readonly value="asd">
                </div> -->
				</div>

				<!-- 상품 사진 업로드 입력 폼 -->

				<!-- 업로드 버튼 -->
				<!-- <button type="button" class="btn btn-primary" onclick="uploadImage()">이미지 업로드</button> -->

				<!-- 등록 버튼 -->
				<!-- <input type="button" onClick="uploadImageTitle(), uploadImageContent()"> -->
				<button type="button" class="btn btn-primary" onclick="addProduct()">등록</button>
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
	  //  slides[slideIndex - 1].style.display = "flex"; // 이미지를 가운데 정렬
	    setTimeout(showSlides, 3500); // 2초마다 슬라이드 변경
	}


	/*function selCate(obj){
		let formChild = [];
		let data = [];
		data.push("cateCode", obj);
		formChild.push(data);
		serverCallByRequest(formChild, 'getCateDetail', 'post');
	}*/
	function selCate(obj){
		const formData = new FormData;
		formData.append("cateCode", obj);
		serverCallByFetchAjax(formData, 'getCateDetail', 'post', 'getCateDetailResult');
	}
	
	

	
	function getCateDetailResult(jsonData) {
		 // 상세 분류를 나타낼 DOM 엘리먼트를 선택합니다.
        const selectElement = document.getElementById("secBox");
       

        // 받아온 상세 분류를 옵션으로 추가합니다.
        for (let idx = 0; idx < jsonData.length; idx++) {
            const option = document.createElement("option");
            option.value = jsonData[idx].cdCode;
            option.innerText = jsonData[idx].cdName;
            selectElement.appendChild(option);
        }
	}

	
	
		function addProduct() {
			const formData = new FormData();
			const data = document.getElementsByClassName('form-control');
			const data2 = document.getElementById('cateCode');
			const data3 = document.getElementById('secBox');
			for (let idx = 0; idx < data.length; idx++) {
				if (data[idx].value === '' || data[idx].value === 0) {
					break;
					data[idx].focus();
					alert("모든 필수 항목을 입력해주세요.");
				}
			}
			if (data2.value === '') {
				data2.focus();
				alert("모든 필수 항목을 입력해주세요.");
			} else if (data3.value === '') {
				data2.focus();
				alert("모든 필수 항목을 입력해주세요.");
			} else {
				formData.append("cdCode", data3.value);
				formData.append(data2.name, data2.value);
				for (let idx = 0; idx < data.length; idx++) {
					if (data[idx].name === 'productContentImage'
							|| data[idx].name === 'productTitleImage') {
						continue; // productContentImage 또는 productTitleImage인 경우 건너뛰기
					}
					console.log(data[idx].name, data[idx].value);
					formData.append(data[idx].name, data[idx].value);
				}
				serverCallByFetchAjax(formData, 'insProduct', 'post',
						'insProductResult');
			}
		}

		function insProductResult(jsonData) {
			if (jsonData.message != null) {
				alert(jsonData.message);
			} else {
				// 파일 입력 요소에서 파일 객체 가져오기
				const fileInput = document.getElementById("productTitleImage");
				const file = fileInput.files;

				// FormData 객체 생성 및 이미지 파일 추가
				const formData = new FormData();
				for (let i = 0; i < file.length; i++) {
					formData.append("productImages", file[i]);
				}
				formData.append("imgType", "T");
				// 서버로 이미지 업로드 요청 보내기
				serverCallByFetchAjax(formData, 'upload', 'post',
						'uploadImageContent');
			}
		}
		/*function uploadImages() {
		    const fileInput = document.getElementById("productImages");
		    const files = fileInput.files;

		    const formData = new FormData();
		    for (let i = 0; i < files.length; i++) {
		        formData.append("productImages", files[i]);
		    }

		    serverCallByFetchAjax(formData, "/upload-multiple", "POST", handleImageUploadResponse);
		}*/

		//타이틀 이미지 업로드
		function uploadImageTitle() {
			// 파일 입력 요소에서 파일 객체 가져오기
			const fileInput = document.getElementById("productTitleImage");
			const file = fileInput.files;

			// FormData 객체 생성 및 이미지 파일 추가
			const formData = new FormData();
			for (let i = 0; i < file.length; i++) {
				formData.append("productImages", file[i]);
			}
			formData.append("imgType", "T");
			// 서버로 이미지 업로드 요청 보내기
			serverCallByFetchAjax(formData, 'upload', 'post',
					'uploadImageContent');
		}

		//내용 이미지 업로드
		function uploadImageContent() {
			// 파일 입력 요소에서 파일 객체 가져오기
			const fileInput = document.getElementById("productContentImage");
			const file = fileInput.files;

			// FormData 객체 생성 및 이미지 파일 추가
			const formData = new FormData();
			for (let i = 0; i < file.length; i++) {
				formData.append("productImages", file[i]);
			}
			formData.append("imgType", "C");
			// 서버로 이미지 업로드 요청 보내기
			serverCallByFetchAjax(formData, 'upload', 'post', 'lastProductAdd');
		}

		function lastProductAdd() {
			serverCallByFetchAjax('', 'addLast', 'post', 'addEnd');
		}

		
		function addEnd(jsonData) {
			if (jsonData.message === '상품이 등록 되었습니다.') {
				alert(jsonData.message);
				serverCallByRequest('afterAdd', 'post', '');
			} else {
				if (jsonData.message == null) {
					alert("새로고침 후 모든 항목을 입력해주세요.");
				} else {
					alert(jsonData.message);
					const data = document
							.getElementsByClassName('form-control');
					const data2 = document.getElementById('cateCode');
					const data3 = document.getElementById('secBox');
					data.value = '';
					data2.value = '';
					data3.value = '';
					data2.focus();
				}
			}
		}

		function cc() {
			alert("Content");
		}

		function imgTest(jsonData) {
			alert(jsonData.img);
			let formChild = [];
			let data = [];
			data.push("img", jsonData.img);
			formChild.push(data);
			serverCallByRequest('testImage', 'post', formChild);
		}

		function handleImageUploadResponse(response) {
			alert(response);
			// 서버로부터의 응답 처리
			if (response === 'error') {
				// 에러 처리
				console.log("이미지 업로드 실패");
			} else {
				// 성공 처리
				console.log("이미지 업로드 성공: " + response);
				// 여기에서 추가적인 동작을 수행할 수 있습니다.
			}
		}
		//////////////////////////////////////////////////////////////////////////////////////////////////////////////
		// 'mignon' 클래스를 가진 요소를 가져옵니다.
		const mignonLink = document.querySelector('.navbar-brand');

		// 클릭 이벤트를 추가합니다.
		mignonLink.addEventListener('click', function() {
			// index 페이지로 이동
			serverCallByRequest('afterLoginManager', 'post', '');
		});

		function join() {
			let formChild = [];
			let data = [];
			const test = document.getElementById("text-input");
			console.log("aa");
			console.log(test.name);
			data.push(test.name, test.value);
			formChild.push(data);
			serverCallByRequest('test', 'post', formChild);
		}
		/*==================================================================================================================*/
	</script>
</body>
</html>