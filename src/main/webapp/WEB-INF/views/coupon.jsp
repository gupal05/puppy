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
<!-- 상품정보 상품문의... 글꼴 -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Gothic+A1:wght@600&display=swap" rel="stylesheet">
<!-- Core theme JS-->
	<script src="resources/js/mainsj.js"></script>
	<link href="resources/css/main.css" rel="stylesheet" />
	<link href="resources/css/join.css" rel="stylesheet" />
	<link href="resources/css/login.css" rel="stylesheet" />
	<link href="resources/css/product.css" rel="stylesheet" />
	<link href="resources/css/cart.css" rel="stylesheet" />
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
								<div id="myList"
									onclick="serverCallByRequest('modifyUserInfo', 'post', '')">
									내 정보 수정</div>
								<div id="myList"
									onclick="serverCallByRequest('cartPage','post','')">장바구니
								</div>
								<div id="myList"
									onclick="serverCallByRequest('orderViewPage', 'post', '')">
									주문목록</div>
								<div id="myList"
									onclick="serverCallByRequest('couponPage','post','')">쿠폰
									/ 적립</div>
								<div id="myList"
									onclick="serverCallByRequest('wishPage','post','')">찜 상품
								</div>
							</div>
			</div>
			<input type="button" value="${userInfo.userName}" style="color: #31CAAE;" id="rr-btn" onmouseover="flexToolTip()" onmouseout="noneToolTip()">
		</div>
</div>
<div id="line"></div>
<div id="logoArea">
<div style="cursor: pointer;" onclick="serverCallByRequest('afterPage','get','')">
<img alt="logo" src="resources/img/puppy logo.jpg" width="100px" height="100px">
</div>
</div>
<div id="line"></div>
<div id="categories">
	<div id="cateIn">
		<div id="menuArea">
			<i class="fa-solid fa-bars" id="menuBar" onclick="aa()"></i>
		</div>
		<div id="snackCate" class="ci" onmouseover="flexToggle()" onmouseout="noneToggle()">간식</div>
		<div id="toyCate" class="ci" onmouseover="flexToggle()" onmouseout="noneToggle()">장난감/훈련용품</div>
		<div id="feedCate" class="ci" onmouseover="flexToggle()" onmouseout="noneToggle()">사료/영양제</div>
		<div id="hairCate" class="ci" onmouseover="flexToggle()" onmouseout="noneToggle()">미용용품</div>
		<div id="cleanCate" class="ci" onmouseover="flexToggle()" onmouseout="noneToggle()">위생용품</div>
		<div id="dishCate" class="ci" onmouseover="flexToggle()" onmouseout="noneToggle()">식기</div>
		<div id="walkCate" class="ci" onmouseover="flexToggle()" onmouseout="noneToggle()">외출용품</div>
		<div id="houseCate" class="ci" onmouseover="flexToggle()" onmouseout="noneToggle()">집/쿠션</div>
		<div id="etc" class="ci" onmouseover="flexToggle()" onmouseout="noneToggle()" >기타</div>
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
	<div class="cateText" id="etc" style="height: 370px;" onmouseover="flexToggle()" onmouseout="noneToggle()">
		<div class="cateText-in" onclick="serverCallByRequest('search', 'get', '')"> 상품 검색</div>
		<div class="cateText-in" onclick="serverCallByRequest('QnA')">상품 문의</div>
		<div class="cateText-in" onclick="serverCallByRequest('review')">상품 후기</div>
		<div class="cateText-in" onclick="serverCallByRequest('notice')">공지사항</div>
	</div>
</div>
<div id="miniText">
	<div id="miniIn">
		<i class="fa-solid fa-house" id="miniIcon"></i>
		<div id="miniArrow">></div>
		<div id="miniLoginText">마이페이지</div>
		<div id="miniArrow">></div>
		<div id="miniLoginText">쿠폰</div>
	</div>
</div>
<div id="joinTitle" style="margin-bottom: 50px;">
	COUPON
<div style="width: 25px; height: 1px; background-color: black; margin: 0 auto; margin-top: -40px;"></div>
</div>
<div id="cart-cart-text">
	<div style="width: 15%; height: 71.31px; cursor: pointer;" onclick="changeColor()">
		<div style="width: 100%; height: 56.49px; font-size: 14px; pading: 7.65px 0px 7.2px; text-align: center; line-height: 56.49px; color: #444444;" id="coupon-text">쿠폰</div>
		<div style="width: 100%; height: 2px; background-color: #444444;" id="coupon-line"></div>
	</div>
	<div style="width: 15%; height: 71.31px; cursor: pointer;" onclick="changeColor()">
		<div  style="width: 100%; height: 56.49px; font-size: 14px; pading: 7.65px 0px 7.2px; text-align: center; line-height: 56.49px; color: #999999;" id="accu-text">적립금</div>
		<div style="width: 100%; height: 2px; background-color: #eeeeee;" id="accu-line"></div>
	</div>
</div>
<!-- if문 들어갈 곳 -->
<div style="width: 80%;margin: 0 auto; display: block;" id="coupon-area">
	<div style="padding-bottom: 3px; font-size: 16px; font-weight: bold; display: flex;">총 <div style="color: #31CAAE; margin-left: 5px;">${couponCount}</div>장의 쿠폰</div>
	<div style="display: flex;">
		<div style="width: 10%; height: 3px; background-color: black;"></div>
		<div style="width: 90%; height: 3px; background-color: #F0F0F0;"></div>
	</div>
	<div style="width: 100%; display: flex; font-size: 13px; font-weight: bold; justify-content: space-between; background-color: #F0F0F0;">
		<div style="display: flex; width: 50%; justify-content: flex-start;">
			<div style="padding: 16px; width: 10%;">번호</div>
			<div style="padding: 16px; width: 90%;">쿠폰명</div>
		</div>
		<div style="display: flex; width: 50%; justify-content: flex-end; text-align: center;">
			<div style="padding: 16px; width: 10%;">적용 상품</div>
			<div style="padding: 16px; width: 10%;">구매 금액</div>
			<div style="padding: 16px; width: 12%;">쿠폰 혜택</div>
			<div style="padding: 16px; width: 10%;">사용 기한</div>
		</div>
	</div>
	<div style="width: 100%; height: 1px; background-color: #F0F0F0;"></div>
	<c:choose>
		<c:when test="${not empty cpList}">
			<c:forEach var="cp" items="${cpList}" varStatus="loopStatus">
				<div style="width: 100%; display: flex; font-size: 13px; font-weight: bold; justify-content: space-between;">
					<div style="display: flex; width: 50%; justify-content: flex-start;">
						<div style="padding: 16px; width: 10%;">
			                <c:choose>
			                    <c:when test="${loopStatus.index + 1 lt 10}">
			                        0<c:out value="${loopStatus.index + 1}" />
			                    </c:when>
			                    <c:otherwise>
			                        <c:out value="${loopStatus.index + 1}" />
			                    </c:otherwise>
			                </c:choose>
			            </div>
						<div style="padding: 16px; width: 90%;">${cp.couponName}</div>
					</div>
					<div style="display: flex; width: 50%; justify-content: flex-end; text-align: center;">
						<div style="padding: 16px; width: 10%;">${cp.couponApply}</div>
						<div style="padding: 16px; width: 10%;"><fmt:formatNumber value="${cp.couponPrice}" pattern="#,###원"/></div>
						<div style="padding: 16px; width: 12%;">${cp.couponBenefit}</div>
						<div style="padding: 16px; width: 10%;">${cp.couponEndDate}</div>
					</div>
				</div>
				<div style="width: 100%; height: 0.5px; background-color: #eee;"></div>
			</c:forEach>
		</c:when>
		<c:when test="${empty cpList}">
			<div id="emptyCart" style="padding: 60px;">
				<div id="note-icon"><i class="fa-regular fa-clipboard"></i></div>
				<div>보유하고 계신 쿠폰 내역이 없습니다.</div>
			</div>
		</c:when>
	</c:choose>
	<div style="width: 100%; height: 1px; background-color: #F0F0F0;"></div>
	<div style="width: 100%; height: 30px;"></div>
	<div style="width: 100%; height: 145px; border: 1px solid #31CAAE; border-radius: 3px; display: flex; align-items: center;">
		<div style="font-size: 44px; padding: 30px; width: 107px; height: 85px; text-align: center; line-height: 85px;"><i class="fa-regular fa-envelope"></i></div>
		<div style="width: 1px; height: 84.36px; background-color: #eee;"></div>
		<div style="flex-grow: 1; height: 85px; padding: 30px;">
			<div style="color: #31CAAE; font-size: 14px; font-weight: bold;"><i class="fa-solid fa-circle-check"></i> 쿠폰 등록</div>
			<div style="border-bottom: 1px dashed #eee; margin: 10px 0;"></div>
			<div style="display: flex;">
				<div style="width: 78%; height: 44.77px; padding-right: 5px; box-sizing: border-box;">
				    <input name="couponCode" id="coupon-text-input" type="text" style="width: 100%; height: 100%; padding: 0px 16px; box-sizing: border-box; background-color: #31CAAE; border: none; border-radius: 3px; color: white; font-weight: bold; outline: none;" placeholder="쿠폰 번호를 입력하세요.">
				</div>
				<div style="flex-grow: 1; height: 44.77px; padding: 0px 5px; box-sizing: border-box;">
					<button style="width: 100%; height: 100%; padding: 10.5px 18.5px; border: 2px solid #31CAAE; background-color: white; color: #31CAAE; text-align: center; border-radius: 3px; font-weight: bold; cursor: pointer;" onclick="eventCoupon()"><i class="fa-solid fa-check"></i> 확인 </button>
				</div>
			</div>
		</div>
		<div style="width: 1px; height: 84.36px; background-color: #eee;"></div>
		<div style="width: 420.7px; height: 85px; padding: 30px;">
			<div style="font-size: 14px; color: #444444; font-weight: bold;"><i class="fa-regular fa-circle-question"></i> 인증안내</div>
			<div style="border-bottom: 1px dashed #eee; margin: 10px 0;"></div>
			<div style="font-size: 12px; color: #999999; font-weight: bold;">1. 반드시 쇼핑몰에서 발행한 쿠폰번호만 입력해주세요.</div>
			<div style="font-size: 12px; color: #999999; font-weight: bold;">2. 10자 ~ 35자내 일련번호를 작성하시면 되시고, "-"는 제외하시길 바랍니다.</div>
		</div>
	</div>
</div>
<!-- if문 들어갈 곳 -->
<div style="width: 100%; height: 50px; padding: 30px 0px;">
	<div id="joinLine"><i class="fa-solid fa-diamond" id="diaIcon"></i></div>
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


//로그아웃
function logOut(){
		alert("로그아웃 되었습니다.")
		serverCallByRequest('logOut','get','');
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
	function aa() {
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

	document.getElementById("menuBackground").addEventListener(
			"click",
			function() {
				const menuSidebar = document.getElementById("menuSidebar");
				const menuBackground = document
						.getElementById("menuBackground");

				menuSidebar.style.left = "-250px";
				menuBackground.style.display = "none";
			});

	// 닫기 버튼 클릭 시 메뉴바가 들어가도록 처리
	document.getElementById("closeButton").addEventListener(
			"click",
			function() {
				const menuSidebar = document.getElementById("menuSidebar");
				const menuBackground = document
						.getElementById("menuBackground");

				menuSidebar.style.left = "-250px";
				menuBackground.style.display = "none";
			});

	function toggleExit() {
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

	
	function toggleTooltip(){
		const tool = document.getElementById('rr-tooltip');
		if(tool.style.display === 'none' || tool.style.display === ''){
			tool.style.display = 'block';
		}else{
			tool.style.display = 'none';
		}
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
	
	function flexToolTip(){
		var tool = document.getElementById('rr-tooltip');
		tool.style.display = 'block';
	}

	function noneToolTip(){
		var tool = document.getElementById('rr-tooltip');
		tool.style.display = 'none';
	}
	
	function changeColor(){
		var ct = document.getElementById('coupon-text');
		var cl = document.getElementById('coupon-line');
		var at = document.getElementById('accu-text');
		var al = document.getElementById('accu-line');
		var coupon = document.getElementById('coupon-area');
		
		if(cl.style.backgroundColor === 'rgb(68, 68, 68)'){ //적립금 눌렀을 때
			coupon.style.display = 'none';
			ct.style.color = 'rgb(153, 153, 153)';
			cl.style.backgroundColor = 'rgb(238, 238, 238)';
			at.style.color = 'rgb(68, 68, 68)';
			al.style.backgroundColor = 'rgb(68, 68, 68)';
		}else{												//쿠폰 눌렀을 때
			coupon.style.display = 'block';
			ct.style.color = 'rgb(68, 68, 68)';
			cl.style.backgroundColor = 'rgb(68, 68, 68)';
			at.style.color = 'rgb(153, 153, 153)';
			al.style.backgroundColor = 'rgb(238, 238, 238)';
		}
	}
	
	function eventCoupon(){
		let formData = new FormData();
		var couponNum = document.getElementById('coupon-text-input');
		formData.append(couponNum.name, couponNum.value);
		serverCallByFetchAjax(formData, 'isCouponNum', 'post', 'eventCouponResult');
	}
	
	function eventCouponResult(jsonData){
		alert(jsonData.message);
		serverCallByRequest('couponPage','post','');
	}
	$("#jtest").click(function(){
		alert("jtest");
	});
</script>

</body>
</html>