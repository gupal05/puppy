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
			<c:choose>
					<c:when test="${empty userInfo}">
						<input type="button" id="rr-btn" value="회원가입"
							onClick="serverCallByRequest('join','get','')">
						<div id="rr-icon">/</div>
						<input type="button" id="rr-btn" value="로그인"
							onclick="serverCallByRequest('login','get','')">
					</c:when>
					<c:otherwise>
						<input type="button" id="rr-btn" value="로그아웃" onClick="logOut()">
						<div id="rr-icon">/</div>
						<div id="rr-tooltip" onmouseover="flexToolTip()"
							onmouseout="noneToolTip()">
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
						<c:if test="${userInfo.userGrade eq '0'}">
							<button onclick="serverCallByRequest('afterPage','get','')"
								style="font-weight: bold; border: none; background-color: red; cursor: pointer;">관리자
								페이지 이동</button>
						</c:if>
						<c:if test="${userInfo.userGrade eq '1'}">
							<input type="button" value="${userInfo.userName}"
								style="color: #31CAAE;" id="rr-btn" onmouseover="flexToolTip()"
								onmouseout="noneToolTip()">
						</c:if>
					</c:otherwise>
				</c:choose>
		</div>
</div>
<div id="line"></div>
<div id="logoArea">
<div style="cursor: pointer;" onclick="clickLogo()">
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
		<div id="miniArrow"></div>
		<div id="miniLoginText"></div>
		<div id="miniArrow"></div>
		<div id="miniJoinText"></div>
	</div>
</div>
<div id="productInfoArea">
	<div id="pro-sec-area">
		<div id="title-img-area">
			<div id="title-img-area-in">
				<img alt="test" src="resources/productImg/${title}" width="600px" height="600px">
			</div>
		</div>
		<div id="title-text-area">
			<div id="title-text-area-big">
			${pro.productsName}
			</div>
			<input type="hidden" id="productsCode" class="productsCode" name="productsCode" value="${pro.productsCode}">
			<input type="hidden" id="productsName" class="productsName" name="productsName" value="${pro.productsName}">
			<div id="title-text-area-price">
			<fmt:formatNumber value="${pro.productsPrice}" pattern="#,###원" var="formattedPrice" />
                <c:out value="${formattedPrice}" />
			</div>
			<div style="width: 100%; height: 1px; margin: 10px 0px 10px; background-color: #eee;"></div>
			<div id="detail-text">
			<div style="width: 196.42px; height: 20px;"></div>
			<div style="display: flex;">
				<div id="detail-text-bold">
					<div style="font-weight: bold;">상세옵션</div>
				</div>
				<div id="fontMini">
					<div style="line-height: 21.58px; margin-left: 5px;">/</div>
				</div>
				<div id="fontMini">
					<div style="line-height: 23.58px; margin-left: 5px;">상품 기본정보 입니다.</div>
				</div>
			</div>
			<div style="width: 100%; height: 2px; background-color: #F0F0F0;"></div>
			<div id="proOtherInfo">
				<div id="delPrice">
					<div id="dot">ㆍ</div>배송비
				</div>
				<div id="delpriceInt">
					<div style="font-weight: bold;">3,000원</div>
				</div>
			</div>
				<div style="width: 100%; height: 1px; background-color: #eee;"></div>
			<div id="proOtherInfo">
				<div id="delPrice">
					<div id="dot">ㆍ</div>적립금
				</div>
				<div id="delpriceInt">
					<div style="color: #999999;">${acc}원 (1%)</div>
				</div>
			</div>
				<div style="width: 100%; height: 1px; background-color: #eee;"></div>
			<div id="proOtherInfo">
				<div id="delPrice">
					<div id="dot">ㆍ</div>배송기간
				</div>
				<div id="delpriceInt">
					<div style="font-weight: bold;">3~5일</div>
				</div>
			</div>
				<div style="width: 100%; height: 1px; background-color: #eee;"></div>
			<div id="pro-text-line-bottom-text">
				<div id="pro-text-line-bottom-text-firstLine">
					<div id="dot-sec">ㆍ</div><div id="orderCountInfo">주문 수량 안내</div><div id="pro-text-line-bottom-text-firstLine-slash">/</div><div style="font-size: 12px; color: #999999;">최소 주문 수량</div><div style="font-size: 13px; color: #31CAAE; font-weight: bold; margin: 0px 5px; line-height: 15px;">1개</div><div style="font-size: 12px; color: #999999;">이상</div>
				</div>
				<div id="pro-text-line-bottom-text-firstLine">
					<div id="dot-sec">ㆍ</div><div id="orderCountInfo">수량을 선택해주세요.</div>
				</div>
			</div>
			<div style="width: 196.42px; height: 20px;"></div>
			<div style="display: flex;">
				<div id="detail-text-bold">
					<div style="font-weight: bold;">상품선택</div>
				</div>
				<div id="fontMini">
					<div style="line-height: 21.58px; margin-left: 5px;">/</div>
				</div>
				<div id="fontMini">
					<div style="line-height: 23.58px; margin-left: 5px;">옵션을 선택해주세요.</div>
				</div>
			</div>
			<div style="width: 100%; height: 2px; background-color: #F0F0F0;"></div>
			<div style="display: flex;">
			<div id="dot-trd">ㆍ</div>
				<div id="sel-text-title-area">${pro.productsName}</div>
				<div id="productCount-numBox">
					<input type="text" id="count-num-box" class="productsCount" name="productsCount" value="1">
					<div>
					<div id="up-count-arrow" onclick="countChange('p')"><i class="fa-solid fa-chevron-up"></i></div>
					<div id="down-count-arrow" onclick="countChange('m')"><i class="fa-solid fa-chevron-down"></i></div>
					</div>
				</div>
				<div id="product-total-price"><fmt:formatNumber value="${pro.productsPrice}" pattern="#,###원" var="formattedPrice" />
                <c:out value="${formattedPrice}" /></div><div style="line-height: 59.25px;padding-left: 5px;"><img alt="wjrflq" src="resources/img/ico_product_point.gif" width="11px" height="11px"></div><div id="total-acc">(${acc}원)</div>
			</div>
			<div style="width: 100%; height: 29px; background-color: #F9F9F9;"></div>
			<div style="width: 100%; height: 30.8px; padding: 20px 0px; display: flex; color: #999999;">
				<div id="won-icon">
					<i class="fa-solid fa-won-sign"></i>
				</div>
				<div style="line-height: 30.8px; font-size: 13px; padding: 0px 5px;">최종 결제 금액</div>
				<div style="width: 45%;"></div>
				<div style="font-size: 13px; color: black; line-height: 30.8px; padding-right: 15px;">Total</div>
				<div style="font-size: 13px; color: black; line-height: 27.8px;">:</div>
				<div style="font-size: 22px; color: #31CAAE; font-weight: bold; line-height: 27.8px; padding-left: 15px;" id="final-price"><fmt:formatNumber value="${pro.productsPrice}" pattern="#,###원" var="formattedPrice" />
                <c:out value="${formattedPrice}" /></div>
			</div>
			<div style="display: flex;">
				<div style="width: 284.23px; height: 57.64px; padding: 3px;">
					<button id="buy-btn" onclick="buyProduct()">B U Y</button>
				</div>
				<div style="width: 139.11px; height: 57.64px; padding: 3px;">
					<button id="cart-btn" onclick="insCart()" style="text-align: center;"><i class="fa-solid fa-cart-shopping" style="margin-right: 5px;"></i>C A R T</button>
				</div>
				<c:choose>
					<c:when test="${not empty wish}">
						<div style="width: 139.11px; height: 57.64px; padding: 3px;">
							<button id="wish-btn" onclick="insWish()" style="text-align: center; background-color: #777777; color: white;"><i class="fa-solid fa-star" style="color: #FFD700; margin-right: 5px;"></i>W I S H</button>
						</div>
					</c:when>
					<c:when test="${empty wish}">
						<div style="width: 139.11px; height: 57.64px; padding: 3px;">
							<button id="wish-btn" onclick="insWish()" style="text-align: center;"><i class="fa-regular fa-star" style="margin-right: 5px;"></i>W I S H</button>
						</div>
					</c:when>
				</c:choose>
			</div>
			</div>
		</div>
	</div>
</div>
<div style="width: 100%; height: 60px;"></div>
<div style="width: 100%; height: 1px; margin-top: 50px; margin-bottom: 50px; background-color: #eee;"></div>
<div id="product-info-content"> 
	<div id="product-info-content-area">
		<div id="product-info-content-btn-s" onclick="clickProContentBtn(1)">
			<div id="product-info-content-btn-text">상품정보</div>
			<div id="product-info-content-btn-text-line-s-info"></div>
		</div>
		<div id="product-info-content-btn-b" onclick="clickProContentBtn(3)">
			<div id="product-info-content-btn-text">상품후기<div id="review-count">0</div></div>
			<div id="product-info-content-btn-text-line-s-review"></div>
		</div>
		<div id="product-info-content-btn-b" onclick="clickProContentBtn(2)">
			<div id="product-info-content-btn-text">상품문의<div id="review-count">0</div></div>
			<div id="product-info-content-btn-text-line-s-q"></div>
		</div>
		<div id="product-info-content-btn-s" onclick="clickProContentBtn(4)">
			<div id="product-info-content-btn-text">안내</div>
			<div id="product-info-content-btn-text-line-ss"></div>
		</div>
	</div>
</div>
<div style="width: 100%; padding: 60px 0px;"></div>
<div id="product-info-area-sc">
<div id="delivery-img-area">
	<div style="display: flex; justify-content: center;">
		<img alt="delivery" src="resources/img/배송안내.jpg" width="700px">
	</div>
	<div style="display: flex; justify-content: center;">
		<img alt="content" src="resources/productImg/${content}" width="800px" id="content-img">
	</div>
	<div id="product-info-detail-btn-area">
		<input type="button" id="product-info-detail-btn" value="상품 상세보기" onclick="toggleProInfo()">
	</div>
</div>
</div>
<div style="width: 100%; height: 50px; padding: 30px 0px;">
	<div id="joinLine"><i class="fa-solid fa-diamond" id="diaIcon"></i></div>
</div>
<div id="product-review-area-sc">
<div id="review-title-text-area">
	<div id="review-text-font">
		REVIEW
	</div>
	<div style="font-size: 14px; text-align: center; color: #CCCCCC;">상품 사용 후기입니다.</div>
	<div style="display: flex; justify-content: center;">
		<div style="width: 25px; height: 1px; background-color: black; margin-top: 30px;"></div>
	</div>
</div>
<div id="review-result">
	아직 후기가 없습니다.
	<div id="review-mini-text">지금 첫번째 후기를 작성해보세요!</div>
</div>
<div style="width: 1382px; height: 45.38px; padding: 10px 0px; display: flex; margin: 0 auto;">
<div style="line-height: 45.38px;">
	<button id="go-center-btn"><i class="fa-regular fa-face-smile" style="margin-right: 5px;"></i>고객지원센터 바로가기</button>
</div>
	<div style="font-size: 12px; line-height: 45.38px; margin-left: 602.2px; padding: 0px 20px;">상품을 구매하셨다면 후기를 남겨주세요.</div>
<div style="line-height: 45.38px; padding: 0px 20px;">
	<button id="go-review-total-btn">후기글 전체보기</button>
</div>
<div style="line-height: 45.38px; padding: 0px 20px;">
	<button id="go-write-review-total-btn"><i class="fa-solid fa-pen" style="margin-right: 8px; font-size: 11px;"></i>후기 작성</button>
</div>
</div>
</div>
<div style="width: 1382px; height: 1px; background-color: #eee; margin: 0 auto;"></div>
<div style="width: 100%; height: 50px; padding: 30px 0px;">
	<div id="joinLine"><i class="fa-solid fa-diamond" id="diaIcon"></i></div>
</div>
<div id="product-qna-area-sc">
<div id="review-title-text-area">
	<div id="review-text-font">
		Q & A
	</div>
	<div style="font-size: 14px; text-align: center; color: #CCCCCC;">상품 Q&A 입니다.</div>
	<div style="display: flex; justify-content: center;">
		<div style="width: 25px; height: 1px; background-color: black; margin-top: 30px;"></div>
	</div>
</div>
<div id="review-result">
	게시물이 없습니다.
	<div id="review-mini-text">지금 첫번째 게시글을 작성해보세요!</div>
</div>
<div style="width: 1382px; height: 45.38px; padding: 10px 0px; display: flex; margin: 0 auto;">
<div style="line-height: 45.38px;">
	<button id="go-center-btn"><i class="fa-regular fa-face-smile" style="margin-right: 5px;"></i>고객지원센터 바로가기</button>
</div>
	<div style="font-size: 12px; line-height: 45.38px; margin-left: 602.2px; padding: 0px 20px;">상품에 대해 궁금한 점이 있으신가요?</div>
<div style="line-height: 45.38px; padding: 0px 20px;">
	<button id="go-review-total-btn">문의글 전체보기</button>
</div>
<div style="line-height: 45.38px; padding: 0px 20px;">
	<button id="go-write-review-total-btn"><i class="fa-solid fa-pen" style="margin-right: 8px; font-size: 11px;"></i>문의하기</button>
</div>
</div>
</div>
<div style="width: 100%; height: 50px; padding: 30px 0px;">
	<div id="joinLine"><i class="fa-solid fa-diamond" id="diaIcon"></i></div>
</div>
<div id="store-guide-area-sc">
<div id="review-title-text-area">
	<div id="review-text-font">
		STORE GUIDE
	</div>
	<div style="font-size: 14px; text-align: center; color: #CCCCCC;">쇼핑몰 주문ㆍ배송안내</div>
	<div style="display: flex; justify-content: center;">
		<div style="width: 25px; height: 1px; background-color: black; margin-top: 30px;"></div>
	</div>
</div>
<div id="return-result">
	교환/반품 안내
<div style="width: 20%; height: 1px; background-color: #ccc; margin: 0 auto; margin-top: 10px;"></div>
<div id="return-content">
	<div style="margin-bottom: 5px;">교환 및 반품 주소</div>
	<div style="color: red; margin-bottom: 30px;">- 제품마다 출고지가 다를 수 있기 때문에 반드시 제품을 받으신 택배사로 연락하셔서 받으신 운송장번호 알려주시고 반품 요청하시기 바랍니다.<br>
							 - 그냥 마음대로 반품하거나 네이버에서 반품 요청하실 경우 다른곳으로 반품되어 환불이 지연될 수 있습니다.</div>
							 교환 및 반품이 가능한 경우<br>
							 - 계약내용에 관한 서면을 받은 날부터 7일. 단, 그 서면을 받은 때보다 재화등의 공급이 늦게 이루어진 경우에는 재화등을 공급받거나 재화등의 공급이 시작된 날부터 7일 이내<br>
							   - 공급받으신 상품 및 용역의 내용이 표시.광고 내용과 다르거나 계약내용과 다르게 이행된 때에는 당해 재화 등을 공급받은 날 부터 3월이내, 그사실을 알게 된 날 또는 알 수 있었던 날부터 30일이내<br>
							   <br>
							   교환 및 반품이 불가능한 경우<br>
							   - 이용자에게 책임 있는 사유로 재화 등이 멸실 또는 훼손된 경우(다만, 재화 등의 내용을 확인하기 위하여 포장 등을 훼손한 경우에는 청약철회를 할 수 있습니다)<br>
							   - 이용자의 사용 또는 일부 소비에 의하여 재화 등의 가치가 현저히 감소한 경우<br>
							   - 시간의 경과에 의하여 재판매가 곤란할 정도로 재화등의 가치가 현저히 감소한 경우<br>
							   - 복제가 가능한 재화등의 포장을 훼손한 경우<br>
							   - 개별 주문 생산되는 재화 등 청약철회시 판매자에게 회복할 수 없는 피해가 예상되어 소비자의 사전 동의를 얻은 경우<br>
							   - 디지털 콘텐츠의 제공이 개시된 경우, (다만, 가분적 용역 또는 가분적 디지털콘텐츠로 구성된 계약의 경우 제공이 개시되지 아니한 부분은 청약철회를 할 수 있습니다.)<br>
							   <br>
							   ※ 고객님의 마음이 바뀌어 교환, 반품을 하실 경우 상품반송 비용은 고객님께서 부담하셔야 합니다.<br>
							   (색상 교환, 사이즈 교환 등 포함)
</div>
</div>
</div>
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
 <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<!-- Initialize Swiper -->
<script>
window.onload = function() {
    // 페이지가 로드될 때 실행될 함수
    if (!sessionStorage.getItem('refreshed')) {
        // 상태를 세션 저장소에 기록
        sessionStorage.setItem('refreshed', 'true');
        // 1초 후에 페이지를 새로고침
        setTimeout(function() {
            window.location.reload();
        }, 0); // 1000 밀리초 = 1초
    } else {
        // 새로고침 후에는 상태를 세션 저장소에서 삭제
        sessionStorage.removeItem('refreshed');
    }
};

function clickLogo(){
		serverCallByRequest('goLogo','get','');
}

function insCart(){
	var user = '${userInfo}';
	if(user != ''){
		let formData = new FormData;
		const code = document.getElementById('productsCode');
		const count = document.getElementById('count-num-box');
		formData.append(code.name, code.value);
		formData.append(count.name, count.value);
		serverCallByFetchAjax(formData, 'insCart', 'post', 'addCartResult');
	}else{
		alert("로그인 후 이용이 가능합니다.");
		serverCallByRequest('login','get','');
	}
}

function addCartResult(jsonData){
	alert(jsonData.message);
	serverCallByRequest("cartPage","post",'');
}

function insWish(){
	var user = '${userInfo}';
	if(user != ''){
		let formData = new FormData;
		const code = document.getElementById('productsCode');
		formData.append(code.name, code.value);
		serverCallByFetchAjax(formData, 'insWish', 'post', 'addWishResult');
	}else{
		alert("로그인 후 이용이 가능합니다.");
		serverCallByRequest('login','get','');
	}
}

function addWishResult(jsonData){
	alert(jsonData.message);
	serverCallByRequest('wishPage','post','');
}

function countChange(action) {
	  var countNumBox = document.getElementById("count-num-box");
	  var countValue = parseInt(countNumBox.value);

	  // 동작에 따라 수량 업데이트 (증가 또는 감소)
	  if (action === 'p') {
	    countValue++;
	  } else if (action === 'm' && countValue > 1) {
	    countValue--;
	  }

	  // 입력 값 업데이트
	  countNumBox.value = countValue;

	  // 총 가격 엘리먼트 업데이트
	  var acc = ${acc};
	  var productPrice = ${pro.productsPrice}; // pro.productsPrice가 컨텍스트에서 사용 가능한 변수라고 가정합니다.
	  var totalAcc = countValue * acc;
	  var totalPrice = countValue * productPrice;

	  // 총 가격을 ###,###원 형식으로 포맷하고 '원' 글자 추가
	  var formattedTotalPrice = new Intl.NumberFormat('ko-KR').format(totalPrice) + '원';
	  var formattedTotalAcc = '('+new Intl.NumberFormat('ko-KR').format(totalAcc) + '원)';

	  // 총 가격 표시 업데이트
	  document.getElementById("product-total-price").innerHTML = formattedTotalPrice;
	  document.getElementById("total-acc").innerHTML = formattedTotalAcc;

	  // 볼드체 총 가격 표시 업데이트
	  document.getElementById("final-price").innerHTML = formattedTotalPrice;
	}



//상품 상세보기 버튼
function toggleProInfo() {
    const btn = document.getElementById('product-info-detail-btn');
    const img = document.getElementById('content-img');

    if (btn.value === "상품 상세보기") {
        img.classList.add('show');
        btn.value = "접기";
    } else {
    	var reviewArea = document.getElementById('product-info-area-sc');
		if (reviewArea) {
            reviewArea.scrollIntoView({ behavior: 'smooth' });
        }
        img.classList.remove('show');
        btn.value = "상품 상세보기";
    }
}


//상품정보, 상품문의, 상품후기, 안내 버튼 클릭에 따라 밑줄 변경
function clickProContentBtn(obj){
	const info = document.getElementById('product-info-content-btn-text-line-s-info');
	const qna = document.getElementById('product-info-content-btn-text-line-s-q');
	const review = document.getElementById('product-info-content-btn-text-line-s-review');
	const ss = document.getElementById('product-info-content-btn-text-line-ss');
	if(obj === 1){
		var reviewArea = document.getElementById('product-info-area-sc');
		if (reviewArea) {
            reviewArea.scrollIntoView({ behavior: 'smooth' });
        }
		if(info.style.display === "none"){
			info.style.display = "block";
			qna.style.display = "none";
			review.style.display = "none";
			ss.style.display = "none";
		}else{
			info.style.display = "block";
			qnd.style.display = "none";
			review.style.display = "none";
			ss.style.display = "none";
		}
	}else if(obj === 2){
		var reviewArea = document.getElementById('product-qna-area-sc');
		if (reviewArea) {
            reviewArea.scrollIntoView({ behavior: 'smooth' });
        }
		if(qna.style.display === "none"){
			qna.style.display = "block";
			info.style.display = "none";
			review.style.display = "none";
			ss.style.display = "none";
		}else{
			qna.style.display = "block";
			info.style.display = "none";
			review.style.display = "none";
			ss.style.display = "none";
		}
	}else if(obj === 3){
		var reviewArea = document.getElementById('product-review-area-sc');
		if (reviewArea) {
            reviewArea.scrollIntoView({ behavior: 'smooth' });
        }
		if(review.style.display === "none"){
			review.style.display = "block";
			info.style.display = "none";
			qna.style.display = "none";
			ss.style.display = "none";
		}else{
			review.style.display = "block";
			info.style.display = "none";
			qna.style.display = "none";
			ss.style.display = "none";
		}
	}else if(obj === 4){
		var reviewArea = document.getElementById('store-guide-area-sc');
		if (reviewArea) {
            reviewArea.scrollIntoView({ behavior: 'smooth' });
        }
		if(ss.style.display === "none"){
			ss.style.display = "block";
			info.style.display = "none";
			qna.style.display = "none";
			review.style.display = "none";
		}else{
			ss.style.display = "block";
			info.style.display = "none";
			qna.style.display = "none";
			review.style.display = "none";
		}
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

    // #mailCodeArea의 display 속성 변경
    var mailCodeArea = document.getElementById('codeResult');
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
	const mailCodeInput = document.getElementById('findId-mailInputResult');
    alert(jsonData.message);
    if (jsonData.message === "인증 되었습니다.") {
    	mailCodeInput.style.backgroundColor = '#E0E0E0';
        mailCodeInput.setAttribute('readonly', true);
    } else {
    	mailCodeInput.value = "";
    	mailCodeInput.focus();
    }
}


function findUserId() {
    const name = document.getElementById('findId-nameInput');
    const mail = document.getElementById('findId-mailInput');
    const mailCode = document.getElementById('findId-mailInputResult');

    // Check if name, mail, and mailCode exist and are not empty
    if (!name.value || !mail.value || !mailCode.value) {
        alert("필수 입력 항목입니다.");

        // Set focus to the first input that is empty
        if (!name.value) {
            name.focus();
        } else if (!mail.value) {
            mail.focus();
        } else if (!mailCode.value) {
            mailCode.focus();
        }
    } else if (mailCode.style.backgroundColor !== 'rgb(224, 224, 224)') {
        alert("인증번호 확인 버튼을 눌러주세요.");
    } else {
    	const data = [
            [name.name, name.value],
            [mail.name, mail.value]
        ];
    	console.log(data);
        serverCallByRequest('findIdResult','get',data);
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
	
	function buyProduct(){
		var user = '${userInfo}';
		if(user != ''){
			var formChild = [];
			var puCode = document.getElementById('productsCode');
			var puCount = document.getElementById('count-num-box');
			var data = [puCode.name, puCode.value];
			var data2 = ['cartList[0].cartCount', puCount.value];
			formChild.push(data);
			formChild.push(data2);
			serverCallByRequest('buyOrderPage','post',formChild);
		}else{
			alert("로그인 후 이용이 가능합니다.");
			serverCallByRequest('login','get','');
		}
	}
</script>

</body>
</html>