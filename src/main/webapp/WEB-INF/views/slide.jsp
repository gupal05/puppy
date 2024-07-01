<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>슬라이드</title>
<link rel="stylesheet" type="text/css" href="/new_ver/css/swiper.css"/>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<link href="resources/css/swiper.css" rel="stylesheet" />
<script>
	function onclickMainBanner() {
		//console.log($(".swiper-slide-active").attr("id"));
		window.open('about:blank').location.href=$(".swiper-slide-active").attr("id");
	}
</script>
<!-- asd -->
<style>

</style>
<!-- zzz -->
<style type="text/css">
.swiper-container.n.swiper-container-horizontal.swiper-container-fade {
    z-index: -10;
}

span.swiper-pagination-bullet {
    margin: 0 10px;
}

.swiper-pagination.swiper-pagination-bullets.swiper-pagination-horizontal {
    bottom: 16px;
    left: 0;
    width: 100%;
}
</style>
</head>

<body>
<div class="swiper-container n">
	<div class="swiper-wrapper">
		<div class="swiper-slide" id="https://puppydog.co.kr/category/%EA%B8%89%EC%8B%9D%EA%B8%B0/82/" onclick="onclickMainBanner()">
				<a>
					<img 
					src="resources/img/c4f80a5d10178e13cb76c6b9dcf3fdb2.jpg" 
				alt="">
			</a>
		</div>
		<div class="swiper-slide" id="https://puppydog.co.kr/category/%EC%9D%B4%EB%8F%99%EA%B0%80%EB%B0%A9%EC%9D%B4%EB%8F%99%EC%9E%A5/92/" onclick="onclickMainBanner()">
				<a>
					<img 
					src="resources/img/슬라이드2.jpg" 
				alt="">
			</a>
		</div>
		<div class="swiper-slide" id="https://puppydog.co.kr/category/%EC%BA%A3%ED%83%80%EC%9B%8C/113/" onclick="onclickMainBanner()">
				<a>
					<img 
					src="resources/img/슬라이드3.jpg" 
				alt="">
			</a>
		</div>
	</div>
	<!-- 이미지 슬라이딩 끝 -->
	<!-- Add Pagination -->
	<div class="swiper-pagination">
	</div>
	<!-- Add Arrows -->
	<div class="swiper-button-next">
	</div>
	<div class="swiper-button-prev">
	</div>
</div>
<!-- Swiper JS -->
 <script src="https://cdn.jsdelivr.net/npm/swiper/swiper-bundle.min.js"></script>
<!-- Initialize Swiper -->
<script>
    var swiper = new Swiper('.swiper-container', {
    	pagination: {
            el: ".swiper-pagination",
            clickable : true,
          },
        paginationClickable: '.swiper-pagination',
        navigation: {
            nextEl: '.swiper-button-next',
            prevEl: '.swiper-button-prev',
          },
          
        spaceBetween: 0,
        effect: 'fade',
		autoplay:{
			delay:4000, //슬라이드 바뀌는 시간
			disableOnInteraction : false,
		},
		loop : true,
    });
</script>
</body>
</html>