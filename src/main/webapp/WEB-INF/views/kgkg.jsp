<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- jQuery CDN -->
<script src="https://iopgoom.github.io/public_test//test/js/jquery-3.3.1.min.js" ></script>

<!--slick slider 필요 태그 st-->
<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>
<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.5.8/slick-theme.min.css">
<!-- slick Carousel CDN -->
<script type="text/javascript" src="https://cdn.jsdelivr.net/jquery.slick/1.5.7/slick.min.js"></script>
<!--slick slider 필요 태그 en-->
<style>
/* 노멀라이징 */
body {
  background-color : #ddd ;
}
/* 라이브러리 */
.con{
  max-width: 500px ;
  margin: 0 auto ;
}
/* 스타일 */
/* 슬릭js 스타일 변경 st */

/* 슬릭js 스타일 변경 en */
.test-slider .slider-items{
  width:100%;
  height:300px;
  display:block;
  background-repeat: no-repeat ;
  background-size: cover ;
  background-position:center;
}
.item1{
  background-color: orangered ;
 /* background-image: url(https://t1.daumcdn.net/cfile/blog/26599D42577AF63136) ;*/
}
.item2{
  background-color: skyblue ;
  /*background-image: url(https://t1.daumcdn.net/cfile/blog/26599D42577AF63136)*/
}
.item3{
  background-color: darkcyan ;
 /* background-image: url(https://t1.daumcdn.net/cfile/blog/26599D42577AF63136)*/
}
.item4{
  background-color: violet ;
  /*background-image: url(https://t1.daumcdn.net/cfile/blog/26599D42577AF63136)*/
}
</style>
</head>
<body>
<div class="con">
  <div class="test-slider slider-wrap">
    <div class="slider-items item1">
    <img src="resources/img/minon.jpg" alt="로고" width="100%" height="300px">
    </div>
    <div class="slider-items item2">
    <img src="resources/img/undraw_posting_photo.svg" alt="로고" width="100%" height="300px">
    </div>
    <div class="slider-items item3">
    <img src="resources/img/minon.jpg" alt="로고" width="100%" height="300px">
    </div>
    <div class="slider-items item4">
    <img src="resources/img/undraw_posting_photo.svg" alt="로고" width="100%" height="300px">
    </div>
  </div>
</div>
<script>
$(document).ready(function(){
	  $('.test-slider').slick({
	    dots: true,
	    autoplay: true,
	    autoplaySpeed: 3000,
	    infinite: true, // 무한 루프 활성화
	  });
	});


</script>
</body>
</html>