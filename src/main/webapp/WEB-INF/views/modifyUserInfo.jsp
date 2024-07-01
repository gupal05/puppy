<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>puppy-main page</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<link href="resources/css/swiper.css" rel="stylesheet" />
<!-- 아이콘 -->
<script src="https://kit.fontawesome.com/69077b3f9d.js" crossorigin="anonymous"></script>
<!-- firstLine 글꼴 -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Jua&family=Kalnia:wght@500;700&family=Nanum+Pen+Script&family=Sunflower:wght@500&display=swap" rel="stylesheet">
<!-- 고객센터 글꼴 -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=IBM+Plex+Sans+KR:wght@700&family=Jua&family=Kalnia:wght@500;700&family=Nanum+Pen+Script&family=Sunflower:wght@500&display=swap" rel="stylesheet">
<!-- 카테고리 글꼴 -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Dongle&family=IBM+Plex+Sans+KR:wght@700&family=Jua&family=Kalnia:wght@500;700&family=Nanum+Pen+Script&family=Noto+Serif+KR:wght@300&family=Poor+Story&family=Sunflower:wght@500&display=swap" rel="stylesheet">
<!-- 태그 글꼴 -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Dongle&family=Hedvig+Letters+Sans&family=IBM+Plex+Sans+KR:wght@700&family=Jua&family=Kalnia:wght@500;700&family=Nanum+Pen+Script&family=Noto+Sans+KR:wght@500;700;800&family=Noto+Serif+KR:wght@300&family=Oswald:wght@600&family=Poor+Story&family=Preahvihear&family=Sunflower:wght@500&display=swap" rel="stylesheet">
<!-- join title 글꼴 -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Rethink+Sans:wght@400;500&display=swap" rel="stylesheet">
<!-- 아래 양식... 글꼴 -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&family=Noto+Sans+KR:wght@600&display=swap" rel="stylesheet">
<!-- Core theme JS-->
	<script src="resources/js/mainsj.js"></script>
	<link href="resources/css/main.css" rel="stylesheet" />
	<link href="resources/css/join.css" rel="stylesheet" />
<style>

</style>

</head>
<body>
<div class="navBar-area" style="display: none; position: fixed; z-index: 999; justify-content: space-between;">
	<div style="padding: 0px 20px; font-size: 20px; display: flex; width: 7.3%;">
		<div style="height: 100%; margin-left: 10px; margin-right: 10px; line-height: 55px; cursor: pointer;">
			<i class="fa-solid fa-bars" onclick="aa()"></i>
		</div>
		<div style="height: 100%; margin-left: 10px; margin-right: 10px; line-height: 53px; cursor: pointer;" onclick="serverCallByRequest('goLogo','get','')">
			<i class="fa-solid fa-house"></i>
		</div>
		<div style="height: 100%; margin-left: 10px; margin-right: 10px; line-height: 55px; cursor: pointer;" onclick="scrollToTop()">
			<i class="fa-solid fa-chevron-up"></i>
		</div>
	</div>
	<div style="width: 80%; display: flex; justify-content: center; line-height: 33.875px; cursor: pointer;">
		<div class="cate-content" onclick="cateDTop(this, 'topSnackCateDetail')">간식</div>
		<div class="cate-content" onclick="cateDTop(this, 'topToyCateDetail')">장난감/훈련용품</div>
		<div class="cate-content" onclick="cateDTop(this, 'topFeedCateDetail')">사료/영양제</div>
		<div class="cate-content" onclick="cateDTop(this, 'topHairCateDetail')">미용용품</div>
		<div class="cate-content" onclick="cateDTop(this, 'topCleanCateDetail')">위생용품</div>
		<div class="cate-content" onclick="cateDTop(this, 'topDishCateDetail')">식기</div>
		<div class="cate-content" onclick="cateDTop(this, 'topWalkCateDetail')">외출용품</div>
		<div class="cate-content" onclick="cateDTop(this, 'topHouseCateDetail')">집/쿠션</div>
		<div></div>
		<div class="cate-content">Q & A</div>
		<div class="cate-content">REVIEW</div>
		<div class="cate-content">CS. HELP</div>
	</div>	
	<div style="padding: 0px 5px 0px 20px; font-size: 20px; display: flex; width: 7.3%;">
		<div style="height: 100%; margin-left: 10px; margin-right: 10px; line-height: 55px; cursor: pointer;">
			<i class="fa-solid fa-bars" onclick="aa()"></i>
		</div>
		<div style="height: 100%; margin-left: 10px; margin-right: 10px; line-height: 53px; cursor: pointer;" onclick="serverCallByRequest('goLogo','get','')">
			<i class="fa-solid fa-house"></i>
		</div>
		<div style="height: 100%; margin-left: 10px; margin-right: 10px; line-height: 55px; cursor: pointer;" onclick="scrollToTop()">
			<i class="fa-solid fa-chevron-up"></i>
		</div>
	</div>
<div style="width: 100%; height: 0.5px; margin-top: 50px; position: fixed; background-color: #eee;"></div>
</div>
<div id="top-fix-toggle" style="width: 100%; position: fixed; top: 50px; left: 0; z-index: 998; display: flex; justify-content: center; align-items: center; cursor: pointer;">
    <div style="width: 61.5%; position: absolute; z-index: 998; text-align: center;">
    	<div class="top-fix-bar" id="topSnackCateDetail" style="width: 15%; height: 259px; position: absolute; left: 0; z-index: 998; display: none;">
    		<div class="cateText-in" onclick="getProductPage('1')">전체</div>
			<div class="cateText-in" onclick="getProductPage('1-0')">강아지껌</div>
			<div class="cateText-in" onclick="getProductPage('1-1')">비스킷/스낵</div>
			<div class="cateText-in" onclick="getProductPage('1-2')">수제간식</div>
			<div class="cateText-in" onclick="getProductPage('1-3')">육류</div>
			<div class="cateText-in" onclick="getProductPage('1-4')">시저/캔</div>
			<div class="cateText-in" onclick="getProductPage('1-5')">기타</div>
    	</div>
    	<div class="top-fix-bar" id="topToyCateDetail" style="width: 15%; height: 222px; position: absolute; left: 0; z-index: 998; display: none; margin-left: 9%;">
    		<div class="cateText-in" onclick="getProductPage('0')">전체</div>
			<div class="cateText-in" onclick="getProductPage('0-0')">공/원반</div>
			<div class="cateText-in" onclick="getProductPage('0-1')">인형</div>
			<div class="cateText-in" onclick="getProductPage('0-2')">노즈워크</div>
			<div class="cateText-in" onclick="getProductPage('0-3')">간식볼</div>
			<div class="cateText-in" onclick="getProductPage('0-4')">기타</div>
    	</div>
    	<div class="top-fix-bar" id="topFeedCateDetail" style="width: 15%; height: 222px; position: absolute; left: 0; z-index: 998; display: none; margin-left: 21%;">
    		<div class="cateText-in" onclick="getProductPage('2')">전체</div>
			<div class="cateText-in" onclick="getProductPage('2-0')">건식사료</div>
			<div class="cateText-in" onclick="getProductPage('2-1')">습식사료</div>
			<div class="cateText-in" onclick="getProductPage('2-2')">우유/분유</div>
			<div class="cateText-in" onclick="getProductPage('2-3')">영양제</div>
			<div class="cateText-in" onclick="getProductPage('2-4')">기타</div>
    	</div>
    	<div class="top-fix-bar" id="topHairCateDetail" style="width: 15%; height: 296px; position: absolute; left: 0; z-index: 998; display: none; margin-left: 30.8%;">
    		<div class="cateText-in" onclick="getProductPage('3')">전체</div>
			<div class="cateText-in" onclick="getProductPage('3-0')">드라이기</div>
			<div class="cateText-in" onclick="getProductPage('3-1')">발톱관리</div>
			<div class="cateText-in" onclick="getProductPage('3-2')">브러시</div>
			<div class="cateText-in" onclick="getProductPage('3-3')">샤워기/타월</div>
			<div class="cateText-in" onclick="getProductPage('3-4')">샴푸/린스</div>
			<div class="cateText-in" onclick="getProductPage('3-5')">이발기/가위</div>
			<div class="cateText-in" onclick="getProductPage('3-6')">기타</div>
    	</div>
    	<div class="top-fix-bar" id="topCleanCateDetail" style="width: 15%; height: 370px; position: absolute; left: 0; z-index: 998; display: none; margin-left: 39%;">
    		<div class="cateText-in" onclick="getProductPage('4')">전체</div>
			<div class="cateText-in" onclick="getProductPage('4-0')">구강위생용품</div>
			<div class="cateText-in" onclick="getProductPage('4-1')">기저귀</div>
			<div class="cateText-in" onclick="getProductPage('4-2')">배변봉투</div>
			<div class="cateText-in" onclick="getProductPage('4-3')">배변판</div>
			<div class="cateText-in" onclick="getProductPage('4-4')">배변패드</div>
			<div class="cateText-in" onclick="getProductPage('4-5')">탈취/소독제</div>
			<div class="cateText-in" onclick="getProductPage('4-6')">눈/귀 위생용품</div>
			<div class="cateText-in" onclick="getProductPage('4-7')">넥카라</div>
			<div class="cateText-in" onclick="getProductPage('4-8')">기타</div>
    	</div>
    	<div class="top-fix-bar" id="topDishCateDetail" style="width: 15%; height: 222px; position: absolute; left: 0; z-index: 998; display: none; margin-left: 46.3%;">
    		<div class="cateText-in" onclick="getProductPage('5')">전체</div>
			<div class="cateText-in" onclick="getProductPage('5-0')">급수기</div>
			<div class="cateText-in" onclick="getProductPage('5-1')">급식기</div>
			<div class="cateText-in" onclick="getProductPage('5-2')">정수기</div>
			<div class="cateText-in" onclick="getProductPage('5-3')">사료보관통</div>
			<div class="cateText-in" onclick="getProductPage('5-4')">기타</div>
    	</div>
    	<div class="top-fix-bar" id="topWalkCateDetail" style="width: 15%; height: 370px; position: absolute; left: 0; z-index: 998; display: none; margin-left: 53.5%;">
    		<div class="cateText-in" onclick="getProductPage('6')">전체</div>
			<div class="cateText-in" onclick="getProductPage('6-0')">가슴줄</div>
			<div class="cateText-in" onclick="getProductPage('6-1')">리드줄</div>
			<div class="cateText-in" onclick="getProductPage('6-2')">목걸이/인식표</div>
			<div class="cateText-in" onclick="getProductPage('6-3')">목줄</div>
			<div class="cateText-in" onclick="getProductPage('6-4')">유모차</div>
			<div class="cateText-in" onclick="getProductPage('6-5')">이동가방/이동장</div>
			<div class="cateText-in" onclick="getProductPage('6-6')">차량용캐리어/시트</div>
			<div class="cateText-in" onclick="getProductPage('6-7')">입마개</div>
			<div class="cateText-in" onclick="getProductPage('6-8')">기타</div>
    	</div>
    	<div class="top-fix-bar" id="topHouseCateDetail" style="width: 15%; height: 333px; position: absolute; left: 0; z-index: 998; display: none; margin-left: 61.7%;">
    		<div class="cateText-in" onclick="getProductPage('7')">전체</div>
			<div class="cateText-in" onclick="getProductPage('7-0')">계단/스텝</div>
			<div class="cateText-in" onclick="getProductPage('7-1')">매트</div>
			<div class="cateText-in" onclick="getProductPage('7-2')">안전문</div>
			<div class="cateText-in" onclick="getProductPage('7-3')">울타리</div>
			<div class="cateText-in" onclick="getProductPage('7-4')">쿠션/방석</div>
			<div class="cateText-in" onclick="getProductPage('7-5')">하우스/텐트</div>
			<div class="cateText-in" onclick="getProductPage('7-6')">해먹</div>
			<div class="cateText-in" onclick="getProductPage('7-7')">기타</div>
    	</div>
    </div>
</div>
<div id="firstLine" style="display: none;">
	<a>신규가입 하고 10% 쿠폰 받기! </a>
</div>
	<input type="button" value="닫기" id="exit" onclick="toggleExit()" style="visibility: hidden;">
<nav>
<div id="secLine">
		<div id="tt">
		<i class="fa-solid fa-microphone" style="color: #666;"></i>
		<a>고객지원센터: 010-2349-1054</a>
		</div>
		<div id="cc">
		</div>
		<div id="rr">
			<input type="button" id="rr-btn" value="로그아웃" onClick="logOut()">
			<div id="rr-icon">/</div>
			<div id="rr-tooltip"  onmouseover="flexToolTip()" onmouseout="noneToolTip()">
  				<div id="in-myBox">
      				<div id="myList" style="cursor: default; background-color: #eee; color: #424000;">
        				내 정보 수정
      				</div>
	      			<div id="myList" onclick="serverCallByRequest('cartPage','post','')">
	      				장바구니
	      			</div>
	      			<div id="myList">
	        			주문목록
	      			</div>
	      			<div id="myList" onclick="serverCallByRequest('couponPage','post','')">
	        			쿠폰 / 적립
	      			</div>
	      			<div id="myList">
	        			찜 상품
	      			</div>
  				</div>
			</div>
			<input type="button" value="${userInfo.userName}" style="color: #31CAAE;" id="rr-btn" onmouseover="flexToolTip()" onmouseout="noneToolTip()">
		</div>
</div>
<div id="line"></div>
<div id="logoArea">
<img alt="logo" src="resources/img/puppy logo.jpg" width="100px" height="100px" onclick="serverCallByRequest('afterPage','get','')" style="cursor: pointer;">
</div>
<div id="line"></div>
<div id="categories">
	<div id="cateIn">
		<div id="menuArea">
			<i class="fa-solid fa-bars" id="menuBar" onclick="aa()"></i>
		</div>
		<div id="ci" class="snackCate" onmouseover="flexToggle()" onmouseout="noneToggle()">간식</div>
		<div id="ci" class="toyCate" onmouseover="flexToggle()" onmouseout="noneToggle()">장난감/훈련용품</div>
		<div id="ci" class="feedCate" onmouseover="flexToggle()" onmouseout="noneToggle()">사료/영양제</div>
		<div id="ci" class="hairCate" onmouseover="flexToggle()" onmouseout="noneToggle()">미용용품</div>
		<div id="ci" class="cleanCate" onmouseover="flexToggle()" onmouseout="noneToggle()">위생용품</div>
		<div id="ci" class="dishCate" onmouseover="flexToggle()" onmouseout="noneToggle()">식기</div>
		<div id="ci" class="walkCate" onmouseover="flexToggle()" onmouseout="noneToggle()">외출용품</div>
		<div id="ci" class="houseCate" onmouseover="flexToggle()" onmouseout="noneToggle()">집/쿠션</div>
		<div id="ci">검색</div>
	</div>
</div>
<div id="navLine"></div>
</nav>
<div class="toggleCate" id="toggle-area-cate">
	<div class="cateText" id="snack" style="height: 370px; border: none;" onmouseover="flexToggle()" onmouseout="noneToggle()">
		<div class="cateText-in" onclick="getProductPage('1')">전체</div>
		<div class="cateText-in" onclick="getProductPage('1-0')">강아지껌</div>
		<div class="cateText-in" onclick="getProductPage('1-1')">비스킷/스낵</div>
		<div class="cateText-in" onclick="getProductPage('1-2')">수제간식</div>
		<div class="cateText-in" onclick="getProductPage('1-3')">육류</div>
		<div class="cateText-in" onclick="getProductPage('1-4')">시저/캔</div>
		<div class="cateText-in" onclick="getProductPage('1-5')">기타</div>
	</div>
	<div class="cateText" id="toy" style="height: 370px;" onmouseover="flexToggle()" onmouseout="noneToggle()">
		<div class="cateText-in" onclick="getProductPage('0')">전체</div>
		<div class="cateText-in" onclick="getProductPage('0-0')">공/원반</div>
		<div class="cateText-in" onclick="getProductPage('0-1')">인형</div>
		<div class="cateText-in" onclick="getProductPage('0-2')">노즈워크</div>
		<div class="cateText-in" onclick="getProductPage('0-3')">간식볼</div>
		<div class="cateText-in" onclick="getProductPage('0-4')">기타</div>
	</div>
	<div class="cateText" id="feed" style="height: 370px;" onmouseover="flexToggle()" onmouseout="noneToggle()">
		<div class="cateText-in" onclick="getProductPage('2')">전체</div>
		<div class="cateText-in" onclick="getProductPage('2-0')">건식사료</div>
		<div class="cateText-in" onclick="getProductPage('2-1')">습식사료</div>
		<div class="cateText-in" onclick="getProductPage('2-2')">우유/분유</div>
		<div class="cateText-in" onclick="getProductPage('2-3')">영양제</div>
		<div class="cateText-in" onclick="getProductPage('2-4')">기타</div>
	</div>
	<div class="cateText" id="hair" style="height: 370px;" onmouseover="flexToggle()" onmouseout="noneToggle()">
		<div class="cateText-in" onclick="getProductPage('3')">전체</div>
		<div class="cateText-in" onclick="getProductPage('3-0')">드라이기</div>
		<div class="cateText-in" onclick="getProductPage('3-1')">발톱관리</div>
		<div class="cateText-in" onclick="getProductPage('3-2')">브러시</div>
		<div class="cateText-in" onclick="getProductPage('3-3')">샤워기/타월</div>
		<div class="cateText-in" onclick="getProductPage('3-4')">샴푸/린스</div>
		<div class="cateText-in" onclick="getProductPage('3-5')">이발기/가위</div>
		<div class="cateText-in" onclick="getProductPage('3-6')">기타</div>
	</div>
	<div class="cateText" id="clean" style="height: 370px;" onmouseover="flexToggle()" onmouseout="noneToggle()">
		<div class="cateText-in" onclick="getProductPage('4')">전체</div>
		<div class="cateText-in" onclick="getProductPage('4-0')">구강위생용품</div>
		<div class="cateText-in" onclick="getProductPage('4-1')">기저귀</div>
		<div class="cateText-in" onclick="getProductPage('4-2')">배변봉투</div>
		<div class="cateText-in" onclick="getProductPage('4-3')">배변판</div>
		<div class="cateText-in" onclick="getProductPage('4-4')">배변패드</div>
		<div class="cateText-in" onclick="getProductPage('4-5')">탈취/소독제</div>
		<div class="cateText-in" onclick="getProductPage('4-6')">눈/귀 위생용품</div>
		<div class="cateText-in" onclick="getProductPage('4-7')">넥카라</div>
		<div class="cateText-in" onclick="getProductPage('4-8')">기타</div>
	</div>
	<div class="cateText" id="dish" style="height: 370px;" onmouseover="flexToggle()" onmouseout="noneToggle()">
		<div class="cateText-in" onclick="getProductPage('5')">전체</div>
		<div class="cateText-in" onclick="getProductPage('5-0')">급수기</div>
		<div class="cateText-in" onclick="getProductPage('5-1')">급식기</div>
		<div class="cateText-in" onclick="getProductPage('5-2')">정수기</div>
		<div class="cateText-in" onclick="getProductPage('5-3')">사료보관통</div>
		<div class="cateText-in" onclick="getProductPage('5-4')">기타</div>
	</div>
	<div class="cateText" id="walk" style="height: 370px;" onmouseover="flexToggle()" onmouseout="noneToggle()">
		<div class="cateText-in" onclick="getProductPage('6')">전체</div>
		<div class="cateText-in" onclick="getProductPage('6-0')">가슴줄</div>
		<div class="cateText-in" onclick="getProductPage('6-1')">리드줄</div>
		<div class="cateText-in" onclick="getProductPage('6-2')">목걸이/인식표</div>
		<div class="cateText-in" onclick="getProductPage('6-3')">목줄</div>
		<div class="cateText-in" onclick="getProductPage('6-4')">유모차</div>
		<div class="cateText-in" onclick="getProductPage('6-5')">이동가방/이동장</div>
		<div class="cateText-in" onclick="getProductPage('6-6')">차량용캐리어/시트</div>
		<div class="cateText-in" onclick="getProductPage('6-7')">입마개</div>
		<div class="cateText-in" onclick="getProductPage('6-8')">기타</div>
	</div>
	<div class="cateText" id="house" style="height: 370px;" onmouseover="flexToggle()" onmouseout="noneToggle()">
		<div class="cateText-in" onclick="getProductPage('7')">전체</div>
		<div class="cateText-in" onclick="getProductPage('7-0')">계단/스텝</div>
		<div class="cateText-in" onclick="getProductPage('7-1')">매트</div>
		<div class="cateText-in" onclick="getProductPage('7-2')">안전문</div>
		<div class="cateText-in" onclick="getProductPage('7-3')">울타리</div>
		<div class="cateText-in" onclick="getProductPage('7-4')">쿠션/방석</div>
		<div class="cateText-in" onclick="getProductPage('7-5')">하우스/텐트</div>
		<div class="cateText-in" onclick="getProductPage('7-6')">해먹</div>
		<div class="cateText-in" onclick="getProductPage('7-7')">기타</div>
	</div>
</div>
<div id="miniText">
	<div id="miniIn">
		<i class="fa-solid fa-house" id="miniIcon"></i>
		<div id="miniArrow">></div>
		<div id="miniLoginText">내 정보수정</div>
	</div>
</div>
<div id="joinTitle">
	MODIFY
<div style="width: 25px; height: 1px; background-color: black; margin: 0 auto; margin-top: -40px;"></div>
</div>
<div id="joinLine" style="margin: 50px 0px;"><i class="fa-solid fa-diamond" id="diaIcon"></i></div>
<div id="joinTotal">
<div id="joinInputLineArea">
	<div id="joinInputBody" style="width: 100%; padding: 5px; height: 33px; justify-content: flex-end;">
		<div id="idText" style="margin-right: 8px;"><i class="fa-solid fa-star-of-life" id="starIcon" style="padding-right: 5px;"></i>표시 항목은 변경 불가 항목입니다.</div>
	</div>
	<div id="joinInputLine"></div>
</div>
<div id="joinInfoInputHead">
	<div id="joinInputBody">
		<div id="idText">아이디<i class="fa-solid fa-star-of-life" id="starIcon"></i></div>
	</div>
	<div id="id-inputArea">
		<input type="text" id="id-input" class="userId" name="userId" style="background-color: #999999; color: white;" value="${userInfo.userId}" readonly>
	</div>
</div>
<div id="joinInputLineArea">
	<div id="joinInputLine"></div>
</div>
<c:choose>
	<c:when test="${not empty userInfo.userPw}">
		<div id="joinInfoInputHead">
			<div id="joinInputBody" style="display: flex;">
				<div id="idText">현재 비밀번호<i class="fa-solid fa-star-of-life" id="starIcon" style="visibility: hidden;"></i></div>
			</div>
			<div id="id-inputArea">
				<input type="password" id="id-input" class="userPwNow" name="userPwNow" onblur="isPassword(this)">
			</div>
		</div>
		<div id="joinInputLineArea">
			<div id="joinInputLine"></div>
		</div>
		<div id="joinInfoInputHead">
			<div id="joinInputBody" style="display: flex;">
				<div id="idText">새로운 비밀번호<i class="fa-solid fa-star-of-life" id="starIcon" style="visibility: hidden;"></i></div>
			</div>
			<div id="id-inputArea">
				<input type="password" id="id-input" class="userPw" name="userPw">
				<div id="ex-textDiv">
					<div id="ex-text">
						(영문 대소문자/숫자/특수문자 중 3가지 이상 조합, 8자~16자)
					</div>
				</div>
			</div>
		</div>
		<div id="joinInputLineArea">
			<div id="joinInputLine"></div>
		</div>
		<div id="joinInfoInputHead">
			<div id="joinInputBody">
				<div id="idText">비밀번호 확인<i class="fa-solid fa-star-of-life" id="starIcon" style="visibility: hidden;"></i></div>
			</div>
			<div id="id-inputArea">
				<input type="password" id="id-input" class="pwResult" name="pwResult" required onchange="checkPasswordMatch()">
			</div>
		</div>
<div id="joinInputLineArea">
	<div id="joinInputLine"></div>
</div>
	</c:when>
	<c:when test="${empty userInfo.userPw}">
	</c:when>
</c:choose>

<div id="joinInfoInputHead">
	<div id="joinInputBody">
		<div id="idText">이름<i class="fa-solid fa-star-of-life" id="starIcon"></i></div>
	</div>
	<div id="id-inputArea">
		<input type="text" id="id-input" class="userName" name="userName" value="${userInfo.userName}">
	</div>
</div>
<div id="joinInputLineArea">
	<div id="joinInputLine"></div>
</div>
<div id="joinInfoInputHead">
	<div id="joinInputBody">
		<div id="idText">휴대전화<i class="fa-solid fa-star-of-life" id="starIcon" style="visibility: visible;"></i></div>
	</div>
	<div id="id-inputArea">
		<select id="firstPhone" class="firstPhone" >
			<option>${firstPhone}</option>
			<option>010</option>
			<option>011</option>
			<option>016</option>
			<option>017</option>
			<option>018</option>
			<option>019</option>
		</select>
		<input type="text" id="secPhone" class="secondPhone" maxlength="4" value="${secPhone}">
		<input type="text" id="trdPhone" onblur="phoneAlert()" class="thirdPhone" maxlength="4" value="${trdPhone}">
		<div id="phoneAlert">* 휴대전화 번호를 입력해주세요.</div>
	</div>
</div>
<div id="joinInputLineArea">
	<div id="joinInputLine"></div>
</div>
<div id="joinInfoInputHead">
	<div id="joinInputBody">
		<div id="idText">주소<i class="fa-solid fa-star-of-life" id="starIcon" style="visibility: visible;"></i></div>
	</div>
	<div id="addr-inputArea">
		<div id="addrFlex">
		<input type="text" id="addrInput" class="userAddr" name="userAddr" value="${userInfo.userAddr}" onchange="changeAddr()">
		<input type="button" value="찾기" id="findAddr-btn" onclick="openKakaoPostcode()">
		</div>
		<div style="width: 100%;">
		<input type="text" id="addrInput" style="margin-top: 15px;" placeholder="상세주소" class="addrDetail" name="userAddrDetail" value="${userInfo.userAddrDetail}">
		</div>
		<input type="text" id="addrZipInput" style="margin-top: 15px;" class="userZip" placeholder="우편번호" name="userZip" value="${userInfo.userZip}">
	</div>
</div>
<div id="joinInputLineArea">
	<div id="joinInputLine"></div>
</div>
	<div id="joinInfoInputHead">
		<div id="joinInputBody">
			<div id="idText">이메일<i class="fa-solid fa-star-of-life" id="starIcon" style="visibility: visible;"></i></div>
		</div>
		<div id="mail-inputArea">
			<div>
				<input type="text" id="mailInput" class="userEmail" onchange="changeMail()" name="userEmail" value="${userInfo.userEmail}">
				<button id="mail-btn" class="isEmail-btn" style="visibility: hidden;" onclick="authMail()">인증하기</button>
			</div>
			<div id="mailCodeArea">
				<input type="text" id="mailCodeInput" class="mailCode" name="mailCode">
				<button id="mailCode-btn" onclick="mailCode()">확인</button>
			</div>
		</div>
	</div>
	<div id="joinInputLineArea">
		<div id="joinInputLine"></div>
	</div>
</div>
<div id="joinLastButton" style="margin-top: 20px;">
	<button id="joinButton" onclick="modify()">
  <i class="fa-solid fa-check"></i> 수정하기
</button>
	<button id="joinCancel">
		<i class="fa-regular fa-circle-xmark" id="cancelIcon"></i> 취소
	</button>
</div>
	<div id="simpleFooterLine"></div>
<!-- Footer 내용 추가 -->
<div style="width: 100%; height: 50px; padding: 30px 0px;">
	<div class="joinLine"><i class="fa-solid fa-diamond" id="diaIcon"></i></div>
</div>
<!-- Footer 내용 추가 -->
<div style="width: 100%; height: 503px;">
	<div style="width: 100%; height: 1px; background-color: #F0F0F0;"></div>
	<div style="width: 100%; height: 314.06px; padding-top: 60px; background-color: #FBFBFB; display: flex; justify-content: center;">
		<div style="width: 80%; background-color: #FBFBFB;">
			<div style="height: 28.06px; display: flex;">
				<div style="display: flex; width: 20%;">
					<img alt="logo" src="resources/img/puppy logo.jpg" width="28.05px" height="28.05px">
					<div style=" line-height: 28.05px; font-weight: bold;">PUPPY</div>
				</div>
				<div style="display: flex; width: 60%; color: #333333; font-weight: bold;">
					<div style="display: flex; line-height: 28.05px; width: 10%;">
						<i class="fa-regular fa-circle-user" style=" line-height: 27.95px; font-size: 13px; margin-right: 5px;"></i>
						<div style="font-size: 11px;">마이샵</div>
					</div>
					<div style="display: flex; line-height: 28.05px;">
						<i class="fa-regular fa-bell" style=" line-height: 27.95px; font-size: 13px; margin-right: 3px;"></i>
						<div style="font-size: 11px;">고객센터</div>
					</div>
				</div>
				<div style="width: 20%;">
					<i class="fa-solid fa-chevron-up" style=" line-height: 28.05px; float: right;"></i>
				</div>
			</div>
			<div style="margin: 20px 0px 19px; width: 100%; height: 1px; background-color: #eee;"></div>
			<div style="height: 246.25px; display: flex;">
				<div style="width: 25%;">
					<div style="width: 100%; height: 36.39px; padding-bottom: 14px;">
						<div style="font-size: 26px; font-weight: bold;">01023491054</div>
					</div>
					<div style="width: 100%; color: #999999; font-size: 14px;">
						<div>평일 오전 10:00 ~ 오후 6:00</div>
						<div style="padding: 8px 0px;">점심시간 오후 12:00 ~ 오후 1:00</div>
						<div style="padding-bottom: 8px;">토 / 일 / 공휴일 휴무</div>
					</div>
				</div>
				<div style="width: 35%; display: flex;">
					<div style="width: 51%;">
						<div style="width: 100%; height: 39.59px; display: flex; line-height: 39.58px; padding-bottom: 10px;">
							<div style="font-size: 16px; color: #333333; font-weight: bold;">마이샵</div>
							<img style="margin-top: 13.5px; padding: 0px 9px;" width="5px" height="14px" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADIAAAAyCAYAAAAeP4ixAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAaElEQVR4nO3ZsQ3AMAgF0b//WLYyF+ktp+bs3JPoQVeSSOryJKllZg5UH3OcWhb3kG4WobEIjUVoLEJjERqL0FiExiI0FqGxCI1FaCxCYxEai9BYhMYiNBahsQjNNe/puTlidC8l/dUL+JuuYl448U0AAAAASUVORK5CYII=">
							<div style="font-size: 16px; color: #333333; font-weight: bold; padding-right: 9px;">배송조회</div>
						</div>
						<div style="display: flex; width: 100%; height: 21.05px; line-height: 21.05px; font-size: 13px; color: #999999;">
							<div style="padding-right: 14px;">카카오뱅크</div>
							<div>3333-05-8631048</div>
						</div>
						<div style="display: flex; width: 100%; height: 24.05px; line-height: 24.05px; font-size: 13px; padding-top: 8px; padding-bottom: 20px;">
							<div style="color: #999999;">예금주</div>
							<div style="padding-left: 39.5px; color: #333333;">황영호</div>
						</div>
						<div style="width: 100%; height: 21.16px; display: flex;">
							<button style="font-size: 9px; padding: 3.45px 7.5px 3.75px; background-color: #444444; color: #E2E2E2; border: none; border-radius: 2px; font-weight: bold;">미확인 입금자</button>
							<button style="font-size: 9px; padding: 3.45px 7.5px 3.75px; background-color: #FFFFFF; color: #333333; border-radius: 2px; font-weight: bold; border: 1px solid #999999; margin: 0px 1.5px;">무이자 할부</button>
							<button style="font-size: 9px; padding: 3.45px 7.5px 3.75px; background-color: #FFFFFF; color: #333333; border-radius: 2px; font-weight: bold; border: 1px solid #999999;">인터넷 뱅킹</button>
						</div>
					</div>
					<div style="width: 49%;">
						<div style="width: 100%; height: 39.59px; display: flex; line-height: 39.58px; padding-bottom: 10px;">
							<div style="font-size: 16px; color: #333333; font-weight: bold;">커뮤니티</div>
							<img style="margin-top: 13.5px; padding: 0px 9px;" width="5px" height="14px" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADIAAAAyCAYAAAAeP4ixAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAaElEQVR4nO3ZsQ3AMAgF0b//WLYyF+ktp+bs3JPoQVeSSOryJKllZg5UH3OcWhb3kG4WobEIjUVoLEJjERqL0FiExiI0FqGxCI1FaCxCYxEai9BYhMYiNBahsQjNNe/puTlidC8l/dUL+JuuYl448U0AAAAASUVORK5CYII=">
							<div style="font-size: 16px; color: #333333; font-weight: bold; padding-right: 9px;">공지</div>
						</div>
						<div style="display: flex; width: 100%; height: 21.05px; line-height: 21.05px; font-size: 13px; color: #999999;">
							<div style="padding-right: 42px;">NOTICE</div>
							<div>REVIEW</div>
						</div>
						<div style="display: flex; width: 100%; height: 21.05px; line-height: 21.05px; font-size: 13px; color: #999999; padding-top: 8px;">
							<div style="padding-right: 48.5px;">Q & A</div>
							<div>EVENT</div>
						</div>
						<div style="display: flex; width: 100%; height: 21.05px; line-height: 21.05px; font-size: 13px; color: #999999; padding-top: 8px;">
							<div>F A Q</div>
						</div>
					</div>
				</div>
				<div style="width: 40%;">
					<div style="width: 100%; height: 39.59px; display: flex; line-height: 39.58px; padding-bottom: 10px;">
						<div style="font-size: 16px; color: #333333; font-weight: bold;">소개</div>
						<img style="margin-top: 13.5px; padding: 0px 9px;" width="5px" height="14px" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADIAAAAyCAYAAAAeP4ixAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAaElEQVR4nO3ZsQ3AMAgF0b//WLYyF+ktp+bs3JPoQVeSSOryJKllZg5UH3OcWhb3kG4WobEIjUVoLEJjERqL0FiExiI0FqGxCI1FaCxCYxEai9BYhMYiNBahsQjNNe/puTlidC8l/dUL+JuuYl448U0AAAAASUVORK5CYII=">
						<div style="font-size: 16px; color: #333333; font-weight: bold; padding-right: 9px;">이용약관</div>
						<img style="margin-top: 13.5px; padding: 0px 9px;" width="5px" height="14px" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADIAAAAyCAYAAAAeP4ixAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAaElEQVR4nO3ZsQ3AMAgF0b//WLYyF+ktp+bs3JPoQVeSSOryJKllZg5UH3OcWhb3kG4WobEIjUVoLEJjERqL0FiExiI0FqGxCI1FaCxCYxEai9BYhMYiNBahsQjNNe/puTlidC8l/dUL+JuuYl448U0AAAAASUVORK5CYII=">
						<div style="font-size: 16px; color: #333333; font-weight: bold; padding-right: 9px;">스토어 가이드</div>
						<img style="margin-top: 13.5px; padding: 0px 9px;" width="5px" height="14px" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADIAAAAyCAYAAAAeP4ixAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAaElEQVR4nO3ZsQ3AMAgF0b//WLYyF+ktp+bs3JPoQVeSSOryJKllZg5UH3OcWhb3kG4WobEIjUVoLEJjERqL0FiExiI0FqGxCI1FaCxCYxEai9BYhMYiNBahsQjNNe/puTlidC8l/dUL+JuuYl448U0AAAAASUVORK5CYII=">
						<div style="font-size: 16px; color: #333333; font-weight: bold; padding-right: 9px;">개인정보 처리방침</div>
						<img style="margin-top: 13.5px; padding: 0px 9px;" width="5px" height="14px" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADIAAAAyCAYAAAAeP4ixAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAaElEQVR4nO3ZsQ3AMAgF0b//WLYyF+ktp+bs3JPoQVeSSOryJKllZg5UH3OcWhb3kG4WobEIjUVoLEJjERqL0FiExiI0FqGxCI1FaCxCYxEai9BYhMYiNBahsQjNNe/puTlidC8l/dUL+JuuYl448U0AAAAASUVORK5CYII=">
						<div style="font-size: 16px; color: #333333; font-weight: bold; padding-right: 9px;">고객 지원 센터</div>
					</div>
					<div style="display: flex; height: 23px; line-height: 23px;">
						<div style="font-size: 13px; color: #444444; font-weight: bold;">업장</div>
						<img style="margin-top: 5.1px; padding: 0px 9px;" width="3px" height="14px" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADIAAAAyCAYAAAAeP4ixAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAaElEQVR4nO3ZsQ3AMAgF0b//WLYyF+ktp+bs3JPoQVeSSOryJKllZg5UH3OcWhb3kG4WobEIjUVoLEJjERqL0FiExiI0FqGxCI1FaCxCYxEai9BYhMYiNBahsQjNNe/puTlidC8l/dUL+JuuYl448U0AAAAASUVORK5CYII=">
						<div style="font-size: 13px; color: #999999; padding-right: 9px; font-weight: bold;">대표 황영호</div>
						<img style="margin-top: 5.1px; padding: 0px 9px;" width="3px" height="14px" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADIAAAAyCAYAAAAeP4ixAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAaElEQVR4nO3ZsQ3AMAgF0b//WLYyF+ktp+bs3JPoQVeSSOryJKllZg5UH3OcWhb3kG4WobEIjUVoLEJjERqL0FiExiI0FqGxCI1FaCxCYxEai9BYhMYiNBahsQjNNe/puTlidC8l/dUL+JuuYl448U0AAAAASUVORK5CYII=">
						<div style="font-size: 13px; color: #999999; padding-right: 9px; font-weight: bold;">사업자등록번호 1218624448</div>
					</div>
					<div style="display: flex; height: 23px; line-height: 23px; padding-top: 8px;">
						<div style="font-size: 13px; color: #444444; font-weight: bold;">주소</div>
						<img style="margin-top: 5.1px; padding: 0px 9px;" width="3px" height="14px" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADIAAAAyCAYAAAAeP4ixAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAaElEQVR4nO3ZsQ3AMAgF0b//WLYyF+ktp+bs3JPoQVeSSOryJKllZg5UH3OcWhb3kG4WobEIjUVoLEJjERqL0FiExiI0FqGxCI1FaCxCYxEai9BYhMYiNBahsQjNNe/puTlidC8l/dUL+JuuYl448U0AAAAASUVORK5CYII=">
						<div style="font-size: 13px; color: #999999; padding-right: 9px; font-weight: bold;">인천 미추홀구 매소홀로 488번길 6-32 태승빌딩 5층</div>
					</div>
					<div style="display: flex; height: 23px; line-height: 23px; padding-top: 8px;">
						<div style="font-size: 13px; color: #444444; font-weight: bold;">고객센터</div>
						<img style="margin-top: 5.1px; padding: 0px 9px;" width="3px" height="14px" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADIAAAAyCAYAAAAeP4ixAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAaElEQVR4nO3ZsQ3AMAgF0b//WLYyF+ktp+bs3JPoQVeSSOryJKllZg5UH3OcWhb3kG4WobEIjUVoLEJjERqL0FiExiI0FqGxCI1FaCxCYxEai9BYhMYiNBahsQjNNe/puTlidC8l/dUL+JuuYl448U0AAAAASUVORK5CYII=">
						<div style="font-size: 13px; color: #999999; padding-right: 9px; font-weight: bold;">010-2349-1054</div>
						<img style="margin-top: 5.1px; padding: 0px 9px;" width="3px" height="14px" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADIAAAAyCAYAAAAeP4ixAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAaElEQVR4nO3ZsQ3AMAgF0b//WLYyF+ktp+bs3JPoQVeSSOryJKllZg5UH3OcWhb3kG4WobEIjUVoLEJjERqL0FiExiI0FqGxCI1FaCxCYxEai9BYhMYiNBahsQjNNe/puTlidC8l/dUL+JuuYl448U0AAAAASUVORK5CYII=">
						<div style="font-size: 13px; color: #999999; padding-right: 9px; font-weight: bold;">통신판매업신고 2024-인천-1026</div>
					</div>
					<div style="display: flex; height: 23px; line-height: 23px; padding-top: 8px;">
						<div style="font-size: 13px; color: #444444; font-weight: bold;">개인정보보호 책임자</div>
						<img style="margin-top: 5.1px; padding: 0px 9px;" width="3px" height="14px" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADIAAAAyCAYAAAAeP4ixAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAaElEQVR4nO3ZsQ3AMAgF0b//WLYyF+ktp+bs3JPoQVeSSOryJKllZg5UH3OcWhb3kG4WobEIjUVoLEJjERqL0FiExiI0FqGxCI1FaCxCYxEai9BYhMYiNBahsQjNNe/puTlidC8l/dUL+JuuYl448U0AAAAASUVORK5CYII=">
						<div style="font-size: 13px; color: #999999; padding-right: 9px; font-weight: bold;">황영호 ( dudgh2349@naver.com )</div>
					</div>
					<div style="display: flex; height: 23px; line-height: 23px; padding-top: 13px;">
						<i class="fa-brands fa-instagram" style="font-size: 25px; padding-right: 10px;"></i>
						<i class="fa-brands fa-youtube" style="font-size: 25px; padding: 0px 10px;"></i>
						<i class="fa-brands fa-facebook" style="font-size: 25px; padding: 0px 10px;"></i>
						<i class="fa-brands fa-twitter" style="font-size: 25px; padding: 0px 10px;"></i>
						<i class="fa-brands fa-github" style="font-size: 25px; padding-left:10px;"></i>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div style="width: 100%; height: 1px; background-color: #F0F0F0;"></div>
	<div style="width: 100%;">
		<div style="padding: 30px;">
			<div style="display: flex; font-size: 11px; justify-content: center; font-weight: bold; padding-bottom: 10px;">
				<div>출석체크</div>
				<img style="margin-top: 3px; padding: 0px 9px;" width="3px" height="11px" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADIAAAAyCAYAAAAeP4ixAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAaElEQVR4nO3ZsQ3AMAgF0b//WLYyF+ktp+bs3JPoQVeSSOryJKllZg5UH3OcWhb3kG4WobEIjUVoLEJjERqL0FiExiI0FqGxCI1FaCxCYxEai9BYhMYiNBahsQjNNe/puTlidC8l/dUL+JuuYl448U0AAAAASUVORK5CYII=">
				<div>쿠폰존</div>
			</div>
			<div style="font-size: 9px; color: #999999; display: flex; justify-content: center; padding-bottom: 3px;">
				상품 / 판매자 / 쇼핑 정보, 콘텐츠, UI 등에 대한 무단 복제, 전송, 배포, 스프래핑 등의 행위는 저작권법, 콘텐츠산업 진흥법으로 금지됩니다.
			</div>
			<div style="font-size: 9px; color: #E2E2E2; display: flex; justify-content: center;">
				COPYRIGHT(C) 2024 PUPPY LTD.  ...ALL RIGHTS RESERVED...
			</div>
		</div>
	</div>
</div>




<div id="menuBackground"></div>
<div id="menuSidebar">
    <!-- 닫기 버튼을 메뉴바 안에 배치하지 않고, 바깥에 추가 -->
    <button id="closeButton"><i class="fa-solid fa-x" id="xIcon"></i></button>
    <div id="searchLine"></div>
	<div id="menuBarSearch">
    <div id="searchText">검색</div>
    <div style="width: 42px; height: 2px; background-color: #555; margin-left: 25px; margin-top: 2px;"></div>
    <div id="searchAreaContainer">
        <input type="search" id="searchArea">
        <i class="fas fa-search" id="searchIcon"></i>
    </div>
    <input type="button" id="tag-btn" value="#개껌">
    <input type="button" id="tag-btn" value="#목줄">
    <input type="button" id="tag-btn" value="#터그">
    <input type="button" id="tag-btn" value="#입마개">
    <div id="tagLine"></div>
    <div id="lastArea">
    <input type="button" id="menuBarLast1" value="상품문의">
    <input type="button" id="menuBarLast2" value="상품후기">
    </div>
</div>
    <div id="menuContent">
        <!-- 여기에 메뉴 항목들을 추가하세요 -->
        <div id="menuCate">카테고리</div>
        <div id="menuLine"></div>
        <c:forEach var="cate" items="${cate}" varStatus="status">
        	<input type="button" id="cate-btn" value="${cate.cateName}" onclick="clickCate(${status.index})">
        	<div id=cidLine></div>
        	<div style="height: 20px;" id="b${status.index}"></div>
        	<input type="button" id="cid" class="cid${status.index}" value="전체" style="border: none; background-color: rgba(0,0,0,0); cursor: pointer; margin-left: 4.5px; font-size: 13px; display: block;" onclick="getProductPage('${cate.cateCode}')">
        	<div style="height: 15px;" class="a${status.index}"></div>
        	<c:forEach var="cd" items="${cate.cdList}">
        	<input type="button" id="cid" class="cid${status.index}" value="${cd.cdName}" style="border: none; background-color: rgba(0,0,0,0); cursor: pointer; margin-left: 4.5px; font-size: 13px; display: block;" onclick="getProductPage('${cd.cdCode}')">
        	<div style="height: 15px;" class="a${status.index}"></div>
        </c:forEach>
        </c:forEach>
    </div>
</div>

<div id="scroll-to-top" class="scroll-to-top">
  <i class="fa-solid fa-chevron-up"></i>
</div>
<div id="scroll-to-bottom" class="scroll-to-bottom">
  <i class="fa-solid fa-chevron-down"></i>
</div>

<!-- Swiper JS -->
 <script src="https://cdn.jsdelivr.net/npm/swiper/swiper-bundle.min.js"></script>
 <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<!-- Initialize Swiper -->
<script>
document.addEventListener('DOMContentLoaded', function() {
	var user = '${userInfo}';
	if(user == null || user == ''){
		alert("로그인이 만료 되었습니다.")
		serverCallByRequest("login","get",'');
	}else{
		console.log("y");
	}
});

document.addEventListener('DOMContentLoaded', function() {
	if('${userInfo.userPw}' != ''){
		var newPwInput = document.getElementsByClassName('userPw')[0];
		var npwResult = document.getElementsByClassName('pwResult')[0];
		var now = document.getElementsByClassName('userPwNow')[0];
		if(now.value == null || now.value == '' || now.style.backgroundColor == '#F7F7F7'){
			newPwInput.disabled = true;
			npwResult.disabled = true;
		}else{
			newPwInput.disabled = false;
			npwResult.disabled = false;
		}
	}
});

function changeMail(){
	var mailBtn = document.getElementsByClassName('isEmail-btn')[0];
	var userEmail = document.getElementsByClassName('userEmail')[0];
	var mail = '${userInfo.userEmail}';
	if(userEmail.value === mail){
		mailBtn.style.visibility = 'hidden';
	}else{
		mailBtn.style.visibility = 'visible';
	}
}

function isPassword(element) {
	let formData = new FormData();
    var pw = element.value;
    formData.append('userPw', pw);
    serverCallByFetchAjax(formData, 'isPassword', 'post', 'isPasswordResult');
}

function isPasswordResult(jsonData){
	var now = document.getElementsByClassName('userPwNow')[0];
	var newPwInput = document.getElementsByClassName('userPw')[0];
	var npwResult = document.getElementsByClassName('pwResult')[0];
	if(jsonData.message == null || jsonData.message == ''){
		now.readOnly = true;
		newPwInput.disabled = false;
		npwResult.disabled = false;
		now.style.backgroundColor = '#E0E0E0';
		newPwInput.focus();
	}else{
		if(now.value == null || now.value == ''){
			alert("비밀번호를 변경하시려면 현재 비밀번호를 입력하셔야 됩니다.");
		}else{
			now.value = '';
			newPwInput.disabled = true;
			npwResult.disabled = true;
			alert(jsonData.message);
		}
	}
}

function modify(){
	if('${userInfo.userPw}' != ''){
		let formData = new FormData();
		const firstPhone = document.getElementsByClassName('firstPhone')[0];
	    const secondPhone = document.getElementsByClassName('secondPhone')[0];
	    const thirdPhone = document.getElementsByClassName('thirdPhone')[0];
	    const userAddr = document.getElementsByClassName('userAddr')[0];
	    const userZip = document.getElementsByClassName('userZip')[0];
	    const addrDetail = document.getElementsByClassName('addrDetail')[0];
	    const userEmail = document.getElementsByClassName('userEmail')[0];
	    const userPw = document.getElementsByClassName('userPw')[0];
	    const pwResult = document.getElementsByClassName('pwResult')[0];
	    const mailCodeInput = document.getElementById('mailCodeInput');
	    const nowPw = document.getElementsByClassName('userPwNow')[0];
	    var mailBtn = document.getElementsByClassName('isEmail-btn')[0];
		
	    if(firstPhone.value == null || firstPhone.value == ''){
	    	alert("비워둘 수 없는 항목입니다.");
	    	firstPhone.focus();
	    }else if(secondPhone.value == null || secondPhone.value == ''){
	    	alert("비워둘 수 없는 항목입니다.");
	    	secondPhone.focus();
	    }else if(thirdPhone.value == null || thirdPhone.value == ''){
	    	alert("비워둘 수 없는 항목입니다.");
	    	thirdPhone.focus();
	    }else if(userAddr.value == null || userAddr.value == ''){
	    	alert("비워둘 수 없는 항목입니다.");
	    	userAddr.focus();
	    }else if(userZip.value == null || userZip.value == ''){
	    	alert("비워둘 수 없는 항목입니다.");
	    	userZip.focus();
	    }else if(addrDetail.value == null || addrDetail.value == ''){
	    	alert("비워둘 수 없는 항목입니다.");
	    	addrDetail.focus();
	    }else if(userEmail.value == null || userEmail.value == ''){
	    	alert("비워둘 수 없는 항목입니다.");
	    	userEmail.focus();
	    }else if(nowPw.style.backgroundColor == 'rgb(224, 224, 224)'){				//현재 비밀번호를 입력 했고
	    	if(userPw.value == null || userPw.value == ''){							//새로운 비밀번호를 입력 안 했을 때
	    		alert("비워둘 수 없는 항목입니다.");
	    		userPw.focus();
	    	}else{																	//현재, 새로운 비밀번호까지는 입력 함
	    		if(pwResult.value == null || pwResult.value == ''){					//현재 비밀번호, 새로운 비밀번호만 입력하고 확인x
	    	    		alert("비워둘 수 없는 항목입니다.");
	    	    		pwResult.focus();
	    		}else{
	    			if(userPw.value == pwResult.value){
	    				if(mailBtn.style.visibility == 'visible'){
	    			    	if(mailCodeInput.style.backgroundColor == 'rgb(224, 224, 224)'){
	    			    		const phone = firstPhone.value+secondPhone.value+thirdPhone.value;
	    			    		formData.append("userPhone", phone);
	    			    		formData.append(userPw.name, userPw.value);
	    			    		formData.append(userAddr.name, userAddr.value);
	    			    		formData.append(userZip.name, userZip.value);
	    			    		formData.append(addrDetail.name, addrDetail.value);
	    			    		formData.append(userEmail.name, userEmail.value);
	    			    		formData.append('userCode', '${userInfo.userCode}');
	    			    		serverCallByFetchAjax(formData, 'modifyUserInfoAjax', 'post', 'modifyResult');
	    			    	}else{
	    			    		alert('이메일 인증을 해주세요.');
	    				        mailCodeInput.focus();
	    			    	}
	    			}else{
	    				const phone = firstPhone.value+secondPhone.value+thirdPhone.value;
			    		formData.append("userPhone", phone);
			    		formData.append(userPw.name, userPw.value);
			    		formData.append(userAddr.name, userAddr.value);
			    		formData.append(userZip.name, userZip.value);
			    		formData.append(addrDetail.name, addrDetail.value);
			    		formData.append(userEmail.name, userEmail.value);
			    		formData.append('userCode', '${userInfo.userCode}');
			    		serverCallByFetchAjax(formData, 'modifyUserInfoAjax', 'post', 'modifyResult');
	    			}
	    		}else{
					alert("비밀번호를 다시 확인해주세요.");
					pwResult.focus();
				}
	    	}
	    }
	    }else if(mailBtn.style.visibility == 'visible'){
	    	if(mailCodeInput.style.backgroundColor == 'rgb(224, 224, 224)'){
	    		const phone = firstPhone.value+secondPhone.value+thirdPhone.value;
	    		formData.append("userPhone", phone);
	    		formData.append(userAddr.name, userAddr.value);
	    		formData.append(userZip.name, userZip.value);
	    		formData.append(addrDetail.name, addrDetail.value);
	    		formData.append(userEmail.name, userEmail.value);
	    		formData.append('userCode', '${userInfo.userCode}');
	    		serverCallByFetchAjax(formData, 'modifyUserInfoAjax', 'post', 'modifyResult');
	    	}else{
	    		alert('이메일 인증을 해주세요.');
		        mailCodeInput.focus();
	    	}
	    }else{
	    	if(userPw.value == null || userPw.value == ''){
	    		const phone = firstPhone.value+secondPhone.value+thirdPhone.value;
	    		formData.append("userPhone", phone);
	    		formData.append(userAddr.name, userAddr.value);
	    		formData.append(userZip.name, userZip.value);
	    		formData.append(addrDetail.name, addrDetail.value);
	    		formData.append(userEmail.name, userEmail.value);
	    		formData.append('userCode', '${userInfo.userCode}');
	    		serverCallByFetchAjax(formData, 'modifyUserInfoAjax', 'post', 'modifyResult');
	    	}else{
	    		const phone = firstPhone.value+secondPhone.value+thirdPhone.value;
	    		formData.append("userPhone", phone);
	    		formData.append(userPw.name, userPw.value);
	    		formData.append(userAddr.name, userAddr.value);
	    		formData.append(userZip.name, userZip.value);
	    		formData.append(addrDetail.name, addrDetail.value);
	    		formData.append(userEmail.name, userEmail.value);
	    		formData.append('userCode', '${userInfo.userCode}');
	    		serverCallByFetchAjax(formData, 'modifyUserInfoAjax', 'post', 'modifyResult');
	    	}
	    }
	}else{
		let formData = new FormData();
		const firstPhone = document.getElementsByClassName('firstPhone')[0];
	    const secondPhone = document.getElementsByClassName('secondPhone')[0];
	    const thirdPhone = document.getElementsByClassName('thirdPhone')[0];
	    const userAddr = document.getElementsByClassName('userAddr')[0];
	    const userZip = document.getElementsByClassName('userZip')[0];
	    const addrDetail = document.getElementsByClassName('addrDetail')[0];
	    const userEmail = document.getElementsByClassName('userEmail')[0];
	    const mailCodeInput = document.getElementById('mailCodeInput');
	    var mailBtn = document.getElementsByClassName('isEmail-btn')[0];
	    
	    if(firstPhone.value == null || firstPhone.value == ''){
	    	alert("비워둘 수 없는 항목입니다.");
	    	firstPhone.focus();
	    }else if(secondPhone.value == null || secondPhone.value == ''){
	    	alert("비워둘 수 없는 항목입니다.");
	    	secondPhone.focus();
	    }else if(thirdPhone.value == null || thirdPhone.value == ''){
	    	alert("비워둘 수 없는 항목입니다.");
	    	thirdPhone.focus();
	    }else if(userAddr.value == null || userAddr.value == ''){
	    	alert("비워둘 수 없는 항목입니다.");
	    	userAddr.focus();
	    }else if(userZip.value == null || userZip.value == ''){
	    	alert("비워둘 수 없는 항목입니다.");
	    	userZip.focus();
	    }else if(addrDetail.value == null || addrDetail.value == ''){
	    	alert("비워둘 수 없는 항목입니다.");
	    	addrDetail.focus();
	    }else if(userEmail.value == null || userEmail.value == ''){
	    	alert("비워둘 수 없는 항목입니다.");
	    	userEmail.focus();
	    }else if(userEmail.value != null || userEmail.value != ''){
	    	if(mailBtn.style.visibility == 'visible'){
		    	if(mailCodeInput.style.backgroundColor != 'rgb(224, 224, 224)'){
		    		alert('이메일 인증을 해주세요.');
			        mailCodeInput.focus();
		    	}else{
		    		const phone = firstPhone.value+secondPhone.value+thirdPhone.value;
		    		formData.append("userPhone", phone);
		    		formData.append(userAddr.name, userAddr.value);
		    		formData.append(userZip.name, userZip.value);
		    		formData.append(addrDetail.name, addrDetail.value);
		    		formData.append(userEmail.name, userEmail.value);
		    		formData.append('userCode', '${userInfo.userCode}');
		    		serverCallByFetchAjax(formData, 'modifyUserInfoAjax', 'post', 'modifyResult');
		    	}
	    	}else{
	    		const phone = firstPhone.value+secondPhone.value+thirdPhone.value;
	    		formData.append("userPhone", phone);
	    		formData.append(userAddr.name, userAddr.value);
	    		formData.append(userZip.name, userZip.value);
	    		formData.append(addrDetail.name, addrDetail.value);
	    		formData.append(userEmail.name, userEmail.value);
	    		formData.append('userCode', '${userInfo.userCode}');
	    		serverCallByFetchAjax(formData, 'modifyUserInfoAjax', 'post', 'modifyResult');
	    	}
	    }
	}
}

function modifyResult(jsonData){
	alert(jsonData.message);
	if(jsonData.message == "회원정보가 수정되었습니다.\n다시 로그인 해주시길 바랍니다."){
		serverCallByRequest('modifyAfter', 'post', '');
	}else{
		serverCallByRequest('afterPage', 'get', '');
	}
}

//이메일 인증
function authMail(){
	let formData = new FormData();
	const mail = document.getElementsByClassName("userEmail")[0];
	formData.append(mail.name, mail.value);
	serverCallByFetchAjax(formData, "EmailAuth", "post", "authMailResult");
}

function authMailResult(jsonData){
	alert("인증 코드가 입력하신 이메일로 전송 되었습니다.");
	var mailInputArea = document.getElementById('mail-inputArea');
    mailInputArea.style.height = '100px';

    // #mailCodeArea의 display 속성 변경
    var mailCodeArea = document.getElementById('mailCodeArea');
    mailCodeArea.style.display = 'block';
}

//이메일 인증번호 확인
function mailCode(){
	let formData = new FormData();
	const mailCode = document.getElementsByClassName('mailCode')[0];
	formData.append(mailCode.name, mailCode.value);
	serverCallByFetchAjax(formData, "mailCode", "post", "mailCodeResult");
}
function mailCodeResult(jsonData){
	const mailCodeInput = document.getElementById('mailCodeInput');
    alert(jsonData.message);
    if (jsonData.message === "인증 되었습니다.") {
    	mailCodeInput.style.backgroundColor = '#E0E0E0';
        mailCodeInput.setAttribute('readonly', true);
    } else {
    	mailCodeInput.value = "";
    	mailCodeInput.focus();
    }
}

//전체동의를 하면 하단 2개의 check box 활성화
function checkAll(){
	const totalAgreeCheckbox = document.getElementById("total-agree");
    const dirrhks1Checkbox = document.getElementById("checkAgree1");
    const dirrhks2Checkbox = document.getElementById("checkAgree2");

    dirrhks1Checkbox.checked = totalAgreeCheckbox.checked;
    dirrhks2Checkbox.checked = totalAgreeCheckbox.checked;
	
}
//카카오 우편번호
function openKakaoPostcode() {
	new daum.Postcode({
	oncomplete: function(data) {
    		// 주소와 우편번호를 받아온 후 각각의 입력 필드에 설정
    		document.getElementsByClassName('userAddr')[0].value = data.address;
    		document.getElementsByClassName('userZip')[0].value = data.zonecode;
    		var detail = document.getElementsByClassName('addrDetail')[0];
    		if(detail.value == null || detail.value == ''){
    			detail.focus();
    		}else{
    			detail.value = '';
    			detail.focus();
    		}
		}
	}).open();
}

//비밀번호 일치 확인
function checkPasswordMatch() {
		    const password = document.getElementsByClassName('userPw')[0].value;
		    const confirmPassword = document.getElementsByClassName('pwResult')[0].value;
		    const pwResultInput = document.getElementsByClassName('pwResult')[0];

		    if (password !== confirmPassword) {
		        // 비밀번호 불일치 처리
		        pwResultInput.style.backgroundColor = 'red'; // 연한 붉은색 테두리로 변경
		    } else {
		        // 비밀번호 일치 처리
		        pwResultInput.style.backgroundColor = '#B0FFB0'; // 기본 테두리 색상으로 변경 (혹은 원하는 다른 색상으로 변경 가능)
		    }
		}
		
//아이디 중복체크
function dupIdCheck() {
    let formData = new FormData();
    const id = document.getElementsByClassName('userId')[0];
	const exText = document.getElementById('ex-text2');
	
    if (id.value.length >= 4 && id.value.length <= 16) {
        formData.append(id.name, id.value);
        serverCallByFetchAjax(formData, "dupIdCheck", "post", "dupIdCheckResult");
    } else {
        alert("아이디는 영문소문자 또는 숫자 4~16자로 입력해 주세요.");
        id.value = '';
		id.focus();
    }
}

function dupIdCheckResult(jsonData) {
	if (jsonData.message != null) {
		alert(jsonData.message);
		const id = document.getElementsByClassName('userId')[0];
		id.value = '';
		id.focus();
	}else{
		const idButton = document.getElementById('idCheck-btn');
		alert("사용 가능한 아이디 입니다.");
		idButton.style.display = "none";
		const id = document.getElementsByClassName('userId')[0];
		const pw = document.getElementsByClassName('userPw')[0];
		id.readOnly = true;
		id.style.backgroundColor= '#7FE8D5';
		pw.focus();
	}
}
//전화번호 입력을 안 했을 경우 알림
function phoneAlert(){
	var secPhone = document.getElementById("secPhone").value;
    var trdPhone = document.getElementById("trdPhone").value;
    var phoneAlert = document.getElementById("phoneAlert");

    // secPhone과 trdPhone 둘 중 하나라도 값이 없으면 알림을 보여줌
    if (!secPhone || !trdPhone) {
        phoneAlert.style.display = "block";
    } else {
        phoneAlert.style.display = "none";
    }
}

//회원가입
function join() {
		    const firstPhone = document.getElementsByClassName('firstPhone')[0];
		    const secondPhone = document.getElementsByClassName('secondPhone')[0];
		    const thirdPhone = document.getElementsByClassName('thirdPhone')[0];
		    const userAddr = document.getElementsByClassName('userAddr')[0];
		    const userZip = document.getElementsByClassName('userZip')[0];
		    const addrDetail = document.getElementsByClassName('addrDetail')[0];
		    const userEmail = document.getElementsByClassName('userEmail')[0];
		    const userPw = document.getElementsByClassName('userPw')[0];
		    const pwResult = document.getElementsByClassName('pwResult')[0];
		    const mailCodeInput = document.getElementById('mailCodeInput');
			
		    if (
		        firstPhone.value.trim() === '' ||
		        secondPhone.value.trim() === '' ||
		        thirdPhone.value.trim() === '' ||
		        userAddr.value.trim() === '' ||
		        userZip.value.trim() === '' ||
		        addrDetail.value.trim() === '' ||
		        userEmail.value.trim() === '' ||
		        userPw.value.trim() === '' ||
		        pwResult.value.trim() === ''
		    ) {
		        let emptyField = null;
		        if (userId.value.trim() === '') emptyField = userId;
		        else if (firstPart.value.trim() === '') emptyField = firstPart;
		        else if (secondPart.value.trim() === '') emptyField = secondPart;
		        else if (firstPhone.value.trim() === '') emptyField = firstPhone;
		        else if (secondPhone.value.trim() === '') emptyField = secondPhone;
		        else if (thirdPhone.value.trim() === '') emptyField = thirdPhone;
		        else if (userAddr.value.trim() === '') emptyField = userAddr;
		        else if (userZip.value.trim() === '') emptyField = userZip;
		        else if (addrDetail.value.trim() === '') emptyField = addrDetail;
		        else if (userEmail.value.trim() === '') emptyField = userEmail;
		        else if (userName.value.trim() === '') emptyField = userName;
		        else if (userPw.value.trim() === '') emptyField = userPw;
		        else if (pwResult.value.trim() === '') emptyField = pwResult;

		        alert('필수 입력 항목을 모두 입력해주세요.');
		        emptyField.focus();
		    } else {
		    	if(dirrhks1Checkbox.checked){
		    		if(dirrhks2Checkbox.checked){
		    			const userCode = firstPart.value + secondPart.value;
						const userPhone = firstPhone.value + secondPhone.value + thirdPhone.value;
				    	let formData = new FormData;
				    	formData.append(userName.name, userName.value);
				    	formData.append("userCode", userCode);
				    	formData.append("userPhone", userPhone);
				    	formData.append(userAddr.name, userAddr.value);
				    	formData.append(userZip.name, userZip.value);
				    	formData.append(addrDetail.name, addrDetail.value);
				    	formData.append(userEmail.name, userEmail.value);
				    	formData.append(userId.name, userId.value);
				    	formData.append(userPw.name, userPw.value);
				    	if (mailCodeInput.style.backgroundColor !== 'rgb(224, 224, 224)') {
					        alert('이메일 인증을 해주세요.');
					        mailCodeInput.focus();
					        return; // 인증되지 않았다면 function 종료
					    }
				    	serverCallByFetchAjax(formData, "joinMember", "post","joinMemberResult");
		    		}else{
		    			alert("필수 선택 항목입니다.");
		    			dirrhks2Checkbox.focus();
		    		}
		    	}else{
		    		alert("필수 선택 항목입니다.");
		    		dirrhks1Checkbox.focus();
		    	}
		    }
		}
	
//회원가입 콜백
function joinMemberResult(jsonData){
	alert(jsonData.message);
	if(jsonData.message == "성공적으로 회원가입이 되었습니다!"){
		serverCallByRequest('pageTest','get','');
	}else{
        const inputFields = document.querySelectorAll('input[type="text"], input[type="password"], input[type="email"], input[type="checkbox"]');
        inputFields.forEach(input => {
            input.value = '';
        });

        const userName = document.getElementsByClassName('userId')[0];
        userName.focus();
	}
}

//메뉴바 카테고리 클릭
function clickCate(index) {
	var cidIndex = document.getElementsByClassName('cid'+index);
	var a = document.getElementsByClassName('a'+index);
	var b = document.getElementById('b'+index);
	for(var i=0; i<cidIndex.length; i++){
		if(cidIndex[i].style.display == 'block'){
			cidIndex[i].style.display = 'none';
			a[i].style.display = 'none';
			b.style.display = 'none';
		}else{
			cidIndex[i].style.display = 'block';
			a[i].style.display = 'block';
			b.style.display = 'block';
		}
	}
    /*const cidElement = document.getElementById("cid");
    const cidLineElement = document.getElementById("cidLine");

    // "none"과 ""(또는 아무 값도 없는 경우) 사이에서 display 속성을 전환합니다.
    if (cidElement.style.display === "none" || cidElement.style.display === "") {
        cidElement.style.display = "block";
        cidLineElement.style.display = "block";
    } else {
        cidElement.style.display = "none";
        cidLineElement.style.display = "none";
    }*/
}
//메뉴 슬라이드
function  aa(){
	const menuSidebar = document.getElementById("menuSidebar");
    const menuBackground = document.getElementById("menuBackground");

    if (menuSidebar.style.left === "0px") {
        menuSidebar.style.left = "-250px";
        menuBackground.style.display = "none";
    } else {
        menuSidebar.style.left = "0px";
        menuBackground.style.display = "block";
    }
}

document.getElementById("menuBackground").addEventListener("click", function() {
    const menuSidebar = document.getElementById("menuSidebar");
    const menuBackground = document.getElementById("menuBackground");

    menuSidebar.style.left = "-250px";
    menuBackground.style.display = "none";
});

// 닫기 버튼 클릭 시 메뉴바가 들어가도록 처리
document.getElementById("closeButton").addEventListener("click", function() {
    const menuSidebar = document.getElementById("menuSidebar");
    const menuBackground = document.getElementById("menuBackground");

    menuSidebar.style.left = "-250px";
    menuBackground.style.display = "none";
});



//첫 번째 입력란에 이벤트 리스너 추가
document.querySelector(".secondPhone").addEventListener("input", function() {
    const firstPart = this.value;

    // 입력란의 길이가 6이 되면 두 번째 입력란으로 포커스 이동
    if (firstPart.length === 4) {
        document.querySelector(".thirdPhone").focus();
    }
});

function toggleExit(){
	const firstLine = document.getElementById("firstLine");
    const exitButton = document.getElementById("exit");

    if (firstLine.style.display === "none") {
        firstLine.style.display = "block";
        exitButton.value = "닫기";
    } else {
        firstLine.style.display = "none";
        exitButton.value = "열기";
    }
}

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
			delay:2500, //슬라이드 바뀌는 시간
			disableOnInteraction : false,
		},
		loop : true,
    });
    
function getProductPage(data){
	let formChild = [[]];
	if(data.includes('-')) {
		formChild = [["cdCode", data]];
    } else {
    	formChild = [["cateCode", data]];
    }
	serverCallByRequest("getProductDetailPage","get",formChild);
}

function flexToggle(){
	var toggle = document.getElementById('toggle-area-cate');
	toggle.style.display = 'flex';
}

function noneToggle(){
	var toggle = document.getElementById('toggle-area-cate');
	toggle.style.display = 'none';
}

function cateDTop(element, data){
    // 클릭한 카테고리 영역을 가져옴
    var selectedCate = document.getElementById(data);

    // 클릭한 카테고리의 현재 표시 상태를 확인
    var currentState = selectedCate.style.display;

    // 모든 카테고리 영역을 숨김
    var cateTexts = document.getElementsByClassName('top-fix-bar');
    for (var i = 0; i < cateTexts.length; i++) {
        cateTexts[i].style.display = 'none';
    }

    // 클릭한 카테고리 영역을 토글하여 보이거나 숨김
    if (currentState === 'none') {
        selectedCate.style.display = 'block';
        // 모든 cate-content 요소의 텍스트 굵기를 초기화
        var cateContents = document.getElementsByClassName('cate-content');
        for (var j = 0; j < cateContents.length; j++) {
            cateContents[j].style.fontWeight = 'normal';
        }
        // 클릭된 요소의 텍스트 굵기를 변경
        element.style.fontWeight = 'bold';
    } else {
        selectedCate.style.display = 'none';
        // 클릭된 요소의 텍스트 굵기를 초기화
        element.style.fontWeight = 'normal';
    }
}

//window에 스크롤 이벤트를 추가하여 스크롤이 발생할 때마다 함수를 실행합니다.
window.addEventListener('scroll', function() {
    // 현재 스크롤 위치를 가져옵니다.
    var scrollPosition = window.scrollY;

    // 특정 스크롤 위치를 설정합니다. 이 값은 .navBar-area가 보이기 시작할 스크롤 위치입니다.
    var triggerPosition = 500; // 예: 스크롤 위치가 200px 지점을 지나치면 .navBar-area를 보이도록 설정
	var snack = document.getElementById('topSnackCateDetail');
	var toy = document.getElementById('topToyCateDetail');
	var feed = document.getElementById('topFeedCateDetail');
	var hair = document.getElementById('topHairCateDetail');
	var clean = document.getElementById('topCleanCateDetail');
	var dish = document.getElementById('topDishCateDetail');
	var walk = document.getElementById('topWalkCateDetail');
	var house = document.getElementById('topHouseCateDetail');
    // 만약 스크롤 위치가 트리거 위치를 지나쳤다면
    if (scrollPosition > triggerPosition) {
        // .navBar-area 요소를 보이도록 설정합니다.
        document.querySelector('.navBar-area').style.display = 'flex';
    } else {
        // 그렇지 않으면 숨깁니다.
        document.querySelector('.navBar-area').style.display = 'none';
        snack.style.display = 'none';
        toy.style.display = 'none';
        feed.style.display = 'none';
        hair.style.display = 'none';
        clean.style.display = 'none';
        dish.style.display = 'none';
        walk.style.display = 'none';
        house.style.display = 'none';
    }
});

function toggleTooltip(){
	const tool = document.getElementById('rr-tooltip');
	if(tool.style.display === 'none' || tool.style.display === ''){
		tool.style.display = 'block';
	}else{
		tool.style.display = 'none';
	}
}

//로그아웃
function logOut(){
		alert("로그아웃 되었습니다.")
		serverCallByRequest('logOut','get','');
	}
	
function flexToolTip(){
	var tool = document.getElementById('rr-tooltip');
	tool.style.display = 'block';
}

function noneToolTip(){
	var tool = document.getElementById('rr-tooltip');
	tool.style.display = 'none';
}
</script>

</body>
</html>