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
<style>
        /* 스타일링을 위한 CSS */
        #addCart-btn-orderView {
        padding: 7px;
        border: 1px solid #ccc;
        border-radius: 3px;
        background-color: white;
        cursor: pointer;
        transition: background-color 0.3s ease;
        }
        #addCart-btn-orderView:hover {
        	background-color: #ccc;
        	color: white;
        	font-weight: bold;
        }

        #orderView-btn-orderView {
        padding: 2px;
        font-size: 12px;
        border: 1px solid #31CAAE;
        background-color: white;
        color: #444444;
        cursor: pointer;
        transition: background-color 0.3s ease;
        height: 36px;
        margin: 6.6px 0px 3.3px 0px;
        border-radius: 3px;
        }
        #orderView-btn-orderView:hover {
            background-color: #31CAAE;
            color: white;
        }

        #delOrder-btn-orderView {
        padding: 2px;
        font-size: 12px;
        border: 1px solid #444444;
        background-color: white;
        color: #444444;
        cursor: pointer;
        transition: background-color 0.3s ease;
        height: 36px;
        margin: 3.3px 0px 6.6px 0px;
        border-radius: 3px;
        }
        
        #delOrder-btn-orderView:hover {
        	background-color: #444444;
        	color: white; 
        }
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
      				<div id="myList" onclick="serverCallByRequest('modifyUserInfo', 'post', '')">
        				내 정보 수정
      				</div>
	      			<div id="myList" style="cursor: default; background-color: #eee; color: #424000;">
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
		<div id="miniLoginText">마이페이지</div>
		<div id="miniArrow">></div>
		<div id="miniLoginText">주문조회</div>
	</div>
</div>
<div id="joinTitle" style="margin-bottom: 50px;">
	MY ORDER
<div style="width: 25px; height: 1px; background-color: black; margin: 0 auto; margin-top: -40px;"></div>
</div>
<div id="cart-cart-text">
	<div style="width: 25%; height: 71.31px;">
		<div id="nowText" style="width: 100%; height: 56.49px; font-size: 14px; pading: 7.65px 0px 7.2px; text-align: center; line-height: 56.49px; color: #444444; cursor: pointer;" onclick="orderType('B')">주문 내역(0)</div>
		<div id="nowLine" style="width: 100%; height: 2px; background-color: #444444;"></div>
	</div>
	<div style="width: 25%; height: 71.31px;">
		<div id="cancelText" style="width: 100%; height: 56.49px; font-size: 14px; pading: 7.65px 0px 7.2px; text-align: center; line-height: 56.49px; color: #999999; cursor: pointer;" onclick="orderType('C')">취소/반품 내역(0)</div>
		<div id="cancelLine" style="width: 100%; height: 2px; background-color: #eeeeee;"></div>
	</div>
</div>
<div style="width: 100%; height: 60px;"></div>
<!-- if문 들어갈 곳 -->
<div id="orderNowView" style="display: block;">
<c:if test="${empty orderList}">
<div id="emptyCart">
	<div id="note-icon"><i class="fa-regular fa-clipboard"></i></div>
	<div>주문한 상품이 없습니다.</div>
</div>
</c:if>
<c:if test="${not empty orderList}">
<div id="cart-pro-list-area">
	<div id="cart-pro-list-text-and-line">
		<div id="cart-pro-list-text-and-line-first">
			<div id="real-text-cart">주문내역</div>
			<div id="real-text-cart-line"></div>
		</div>
		<div id="cart-pro-list-text-and-line-sec">
			<div id="real-text-cart-slash">/</div>
			<div id="real-text-cart-line-all"></div>
		</div>
		<div id="cart-pro-list-text-and-line-trd">
			<div id="real-text-cart-trd-text">주문한 상품 내역을 확인하세요.</div>
			<div id="real-text-cart-line-all"></div>
		</div>
	</div>
	<!-- foreach 시작 -->
	<c:forEach var="orderList" items="${orderList}" varStatus="loop">
    <div style="width: 100%; border: 1px solid #ccc; border-radius: 5px; margin-top: 20px;">
        <div style="padding: 15px;">
            <div style="font-size: 20px; font-weight: bold;">주문</div>
            <input type="hidden" id="order-pro-count${loop.index}" value="${orderList.orderDiscount}">
            <div style="width: 100%; border: 1px solid #ccc; border-radius: 5px; margin-top: 10px;">
                <div style="display: flex; justify-content: space-between;">
                    <div style="font-size: 20px; font-weight: bold; padding: 16px 0px 16px 16px;">주문완료 ${orderList.orderPayment}</div>
                    <div style="font-size: 14px; line-height: 59px; padding-right: 16px; color: #346AFF; font-weight: bold; cursor: pointer;">주문 상세 보기 ></div>
                </div>
                <c:forEach var="proList" items="${orderList.product}" varStatus="loopStatus">
                    <c:forEach var="img" items="${proList.imgList}">
                        <div style="width: 100%; height: 1px; background-color: #ccc;"></div>
                        <div style="display: flex;">
                            <div style="padding: 16px; height: 60px;">
                                <img alt="title-img" src="resources/productImg/${img.img}" width="60px" height="60px">
                            </div>
                            <div style="padding: 16px; height: 60px;">
                                <div style="font-weight: bold; margin-top: 8px;">${proList.productsName}</div>
                                <div style="color: #999999;"><fmt:formatNumber value="${proList.productsPrice}" type="number" pattern="###,###" />원 ${proList.productsCount}개</div>
                            </div>
                            <div style="line-height: 92px; margin-left: auto;">
                                <button id="addCart-btn-orderView">장바구니 담기</button>
                            </div>
                            <div style="width: 1px; height: 92px; background-color: #ccc; margin: 0px 15px;"></div>
                            <div style="display: flex; flex-direction: column; padding-right:15px;">
                                <button id="orderView-btn-orderView">배송조회</button>
                                <button id="delOrder-btn-orderView" data-imp-uid="${orderList.orderCode}" data-product-id="${proList.productsCode}" data-product-price="${proList.productsPrice}" onclick="requestRefund(this, ${proList.productsPrice}, ${proList.productsCount}, ${loop.index})">주문 취소/반품</button>
                            </div>
                        </div>
                    </c:forEach>
                </c:forEach>
            </div>
        </div>
    </div>
</c:forEach>


<div class="pagination" style="display: flex; justify-content: center; padding-top: 30px;">
	<button style="margin: 0px 8px; font-weight: bold; border: none; background-color: white; font-size: 15px; cursor: pointer; display: flex;" onclick="pagingFirst('${pageNum}','mi')"><i class="fa-solid fa-chevron-left" style="line-height: 20.8px;"></i><div style="margin-left: 5px;">이전</div></button>
    <c:forEach var="page" items="${paging}">
        <c:if test="${page == pageNum}">
            <button style="margin: 0px 8px; font-weight: bold; border: none; background-color: white; font-size: 15px; cursor: pointer;" onclick="pagingTest('${page}', '${type}')">${page}</button>
        </c:if>
        <c:if test="${page != pageNum}">
            <button style="margin: 0px 8px; border: none; background-color: white; font-size: 15px; cursor: pointer;" onclick="pagingTest('${page}', '${type}')">${page}</button>
        </c:if>
    </c:forEach>
    <button style="margin: 0px 8px; font-weight: bold; border: none; background-color: white; font-size: 15px; cursor: pointer; display: flex;" onclick="pagingFirst('${pageNum}','pl')"><div style="margin-right: 5px;">다음</div><i class="fa-solid fa-chevron-right" style="line-height: 20.8px;"></i></button>
</div>

</div>
</c:if>
</div>
<div id="ordercancelView" style="display: none;">
<c:if test="${empty orderList}">
<div id="emptyCart">
	<div id="note-icon"><i class="fa-regular fa-clipboard"></i></div>
	<div>취소/환불 내역이 없습니다.</div>
</div>
</c:if>
<c:if test="${not empty orderList}">
<div id="cart-pro-list-area">
	<div id="cart-pro-list-text-and-line">
		<div id="cart-pro-list-text-and-line-first">
			<div id="real-text-cart">주문 취소내역</div>
			<div id="real-text-cart-line"></div>
		</div>
		<div id="cart-pro-list-text-and-line-sec">
			<div id="real-text-cart-slash">/</div>
			<div id="real-text-cart-line-all"></div>
		</div>
		<div id="cart-pro-list-text-and-line-trd">
			<div id="real-text-cart-trd-text">취소한 상품 내역을 확인하세요.</div>
			<div id="real-text-cart-line-all"></div>
		</div>
	</div>
	<!-- foreach 시작 -->
	<c:forEach var="orderList" items="${orderList}" varStatus="loop">
    <div style="width: 100%; border: 1px solid #ccc; border-radius: 5px; margin-top: 20px;">
        <div style="padding: 15px;">
            <div style="font-size: 20px; font-weight: bold;">주문 취소</div>
            <input type="hidden" id="order-pro-count${loop.index}" value="${orderList.orderDiscount}">
            <div style="width: 100%; border: 1px solid #ccc; border-radius: 5px; margin-top: 10px;">
                <div style="display: flex; justify-content: space-between;">
                    <div style="font-size: 20px; font-weight: bold; padding: 16px 0px 16px 16px;">주문 취소 완료</div>
                    <div style="font-size: 14px; line-height: 59px; padding-right: 16px; color: #346AFF; font-weight: bold; cursor: pointer;">주문 상세 보기 ></div>
                </div>
                <c:forEach var="proList" items="${orderList.product}" varStatus="loopStatus">
                    <c:forEach var="img" items="${proList.imgList}">
                        <div style="width: 100%; height: 1px; background-color: #ccc;"></div>
                        <div style="display: flex;">
                            <div style="padding: 16px; height: 60px;">
                                <img alt="title-img" src="resources/productImg/${img.img}" width="60px" height="60px">
                            </div>
                            <div style="padding: 16px; height: 60px;">
                                <div style="font-weight: bold; margin-top: 8px;">${proList.productsName}</div>
                                <div style="color: #999999;"><fmt:formatNumber value="${proList.productsPrice}" type="number" pattern="###,###" />원 ${proList.productsCount}개</div>
                            </div>
                            <div style="line-height: 92px; margin-left: auto;">
                                <button id="addCart-btn-orderView">장바구니 담기</button>
                            </div>
                            <div style="width: 1px; height: 92px; background-color: #ccc; margin: 0px 15px;"></div>
                            <div style="display: flex; flex-direction: column; padding-right:15px;">
                                <button id="orderView-btn-orderView">배송조회</button>
                                <button id="delOrder-btn-orderView" data-imp-uid="${orderList.orderCode}" data-product-id="${proList.productsCode}" data-product-price="${proList.productsPrice}" onclick="requestRefund(this, ${proList.productsPrice}, ${proList.productsCount}, ${loop.index})">주문 취소/반품</button>
                            </div>
                        </div>
                    </c:forEach>
                </c:forEach>
            </div>
        </div>
    </div>
</c:forEach>


<div class="pagination" style="display: flex; justify-content: center; padding-top: 30px;">
	<button style="margin: 0px 8px; font-weight: bold; border: none; background-color: white; font-size: 15px; cursor: pointer; display: flex;" onclick="pagingFirst('${pageNum}','mi')"><i class="fa-solid fa-chevron-left" style="line-height: 20.8px;"></i><div style="margin-left: 5px;">이전</div></button>
    <c:forEach var="page" items="${paging}">
        <c:if test="${page == pageNum}">
            <button style="margin: 0px 8px; font-weight: bold; border: none; background-color: white; font-size: 15px; cursor: pointer;" onclick="pagingTest('${page}', '${type}')">${page}</button>
        </c:if>
        <c:if test="${page != pageNum}">
            <button style="margin: 0px 8px; border: none; background-color: white; font-size: 15px; cursor: pointer;" onclick="pagingTest('${page}', '${type}')">${page}</button>
        </c:if>
    </c:forEach>
    <button style="margin: 0px 8px; font-weight: bold; border: none; background-color: white; font-size: 15px; cursor: pointer; display: flex;" onclick="pagingFirst('${pageNum}','pl')"><div style="margin-right: 5px;">다음</div><i class="fa-solid fa-chevron-right" style="line-height: 20.8px;"></i></button>
</div>

</div>
</c:if>
</div>
<div id="orderBeforeView" style="display: none;">
<c:if test="${empty proList}">
<div id="emptyCart">
	<div id="note-icon"><i class="fa-regular fa-clipboard"></i></div>
	<div>이전 주문내역이 없습니다.</div>
</div>
</c:if>
<c:if test="${not empty proList}">
<div id="cart-pro-list-area">
	<div id="cart-pro-list-text-and-line">
		<div id="cart-pro-list-text-and-line-first">
			<div id="real-text-cart">일반상품</div>
			<div id="real-text-cart-line"></div>
		</div>
		<div id="cart-pro-list-text-and-line-sec">
			<div id="real-text-cart-slash">/</div>
			<div id="real-text-cart-line-all"></div>
		</div>
		<div id="cart-pro-list-text-and-line-trd">
			<div id="real-text-cart-trd-text">장바구니 일반상품 목록을 확인하세요.</div>
			<div id="real-text-cart-line-all"></div>
		</div>
	</div>
	<div id="cart-sel-area" style="font-weight: bold; margin-left: 20px;">
	<div id="input-sel-div-area">
		<input type="hidden" id="cart-check-all-box">
	</div>
		<div id="cart-sel-img-text"> <!-- 3 -->
			이미지
		</div>
		<div id="cart-sel-proInfo-text"> <!-- 40 -->
			상품정보
		</div>
		<div id="cart-sel-img-text"> <!-- 3 -->
			수량
		</div>
		<div id="cart-sel-price-text"> <!-- 6 -->
			상품구매금액
		</div>
		<div id="cart-dc-price-text"> <!-- 4 -->
			할인금액
		</div>
		<div id="cart-dc-price-text"> <!-- 4 -->
			적립금
		</div>
		<div id="cart-delivery-type-text"> <!-- 5 -->
			배송구분
		</div>
		<div id="cart-choice-text"> <!-- 5 -->
			선택
		</div>
	</div>
	<div style="width: 100%; height: 1px; background-color: #F0F0F0;"></div>
	<!-- if로 데이터가 있나 확인 하고 있을 경우 이 영역을 foreach로 돌리면 됨 foreach 돌릴 구간 -->
	<c:forEach var="proList" items="${proList}" varStatus="loopStatus">
	<c:forEach var="img" items="${proList.imgList}">
	<c:forEach var="cart" items="${proList.cartList}">
	<div id="cart-sel-area" style="height: 123.75px; line-height: 89.75px; margin-left: 20px;">
	<div id="input-sel-div-area">
		<input type="checkbox" id="cart-check-all-box">
	</div>
		<div id="cart-sel-img-text"> <!-- 3 -->
			<div style="height: 13px;"></div>
			<img alt="title-img" src="resources/productImg/${img.img}" width="60px" height="60px">
		</div>
		<div id="cart-sel-proInfo-text"> <!-- 40 -->
			<div id="cart-sel-proInfo-text-title">
				${proList.productsName}
			</div>
			<input type="hidden" value="${proList.productsPrice}" id="proPrice${loopStatus.index}">
			<input type="text" value="${proList.productsCode}" id="proCode${loopStatus.index}" name="productsCode">
		</div>
		<div id="cart-sel-img-text"> <!-- 3 -->
			<div id="productCount-numBox-cart">
					<input type="text" id="cart-count-num-box${loopStatus.index}" class="cart-productsCount-num-box" name="productsCount" value="${cart.cartCount}">
					<div>
						<div id="up-arrow-icon" onclick="countChange('p',${loopStatus.index}, ${proList.productsSellCount})"><i class="fa-solid fa-chevron-up"></i></div>
					<div id="down-arrow-icon" onclick="countChange('m',${loopStatus.index}, ${proList.productsSellCount})"><i class="fa-solid fa-chevron-down"></i></div>
					</div>
			</div>
			<div id="cart-change-btn-result" onclick="ee(${loopStatus.index}, ${proList.productsSellCount})">
				변경<i class="fa-solid fa-arrow-rotate-right"></i>
			</div>
		</div>
		<div id="cart-product-price${loopStatus.index}" class="cart-sel-price-text-input"> <!-- 6 -->
			<fmt:formatNumber value="${cart.cartPrice}" pattern="#,###원" var="formattedPrice" />
                <c:out value="${formattedPrice}" />
		</div>
		<div id="cart-dc-price-text"> <!-- 4 -->
			-
		</div>
		<div id="cart-dc-price-text" style="display: flex;"> <!-- 4 -->
		<div style="line-height: 91.75px; padding-right: 5px;">
		<img alt="wjrflq" src="resources/img/ico_product_point.gif" width="11px" height="11px" style="margin-left: 8px;">
		</div>
		<div  class="cart-product-add${loopStatus.index}">
			<fmt:formatNumber value="${proList.productsSellCount}" pattern="#,###" var="formattedPrice" />
                <c:out value="${formattedPrice}" />
        </div>
		</div>
		<div id="cart-delivery-type-text"> <!-- 5 -->
			<input type="text" id="basic-delivery-type" value="기본배송">
		</div>
		<div id="cart-choice-text" style="line-height: 0px;"> <!-- 5 -->
			<button id="choice-btn-one" onclick="orPro(${loopStatus.index})"><div>주문하기</div><div>></div></button>
			<button id="choice-btn-two"><div>관심상품등록</div><div>></div></button>
			<button id="choice-btn-three" onclick="delProduct(${loopStatus.index})"><div>삭제</div><div style="line-height: 14.52px;"><i class="fa-solid fa-xmark"></i></div></button>
		</div>
	</div>
	<div style="width: 100%; height: 1px; background-color: #F0F0F0;"></div>
	</c:forEach>
	</c:forEach>
	</c:forEach>
</div>
<div id="total-price-area">
	<div id="price-plus-delivery-text" style="display: flex;">
		상품 구매 금액 
		<div id="price-all-cart-text" style="padding: 0px 5px;">
		<fmt:formatNumber value="${total}" pattern="#,###" var="formattedPrice" />
                <c:out value="${formattedPrice}" />
        </div> 
        + 배송비 3,000 = 합계 :
	</div>
	<div id="real-total-price-text">
		<fmt:formatNumber value="${plusTotal}" pattern="#,###원" var="formattedPrice" />
                <c:out value="${formattedPrice}" />
	</div>
</div>
<div id="cart-pro-list-area">
	<div style="width: 100%; height: 1px; background-color: #F0F0F0;"></div>
	<div style="padding: 10px 0px;"></div>
	<div style="width: 100%; height: 1px; background-color: #F0F0F0;"></div>
	<div style="display: flex;">
	<div class="is-last-btn-area">
		<button onclick="confirmDeleteCart()" style="margin-right: 5px; display: flex;" class="empty-cart-btn"><div style="line-height: 16px;"><i class="fa-solid fa-xmark"></i></div><div style="margin-left: 5px;">장바구니 비우기</div></button>
		<button class="empty-cart-btn" onclick="openNewWindow()" style="display: flex;"><div style="line-height: 16px;"><i class="fa-solid fa-clipboard"></i></div><div style="margin-left: 5px;">견적서 출력</div></button>
		<!-- <button onclick="showAlert()">버튼</button> -->
	</div>
	</div>
	<div style="width: 100%; height: 1px; background-color: #F0F0F0;"></div>
	<div style="display: flex; justify-content: center; padding-top: 30px;">
		<button class="order-product-all-btn" onclick="orderAllProduct()" style="margin-right: 8px; border: none; background-color: #31CAAE;"><i class="fa-solid fa-check" style="margin-right: 10px;"></i>전체상품 주문</button>
		<button class="order-product-sel-btn" onclick="showAlert()" style="border: 1px solid #ccc; background-color: #444444;"><i class="fa-regular fa-square-check" style="margin-right: 8px;"></i>선택상품 주문</button>
	</div>
</div>
</c:if>
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

document.addEventListener('DOMContentLoaded', function() {
	var data = '${type}';
	var now = document.getElementById('orderNowView');
	var cancel = document.getElementById('ordercancelView');
	var nowLine = document.getElementById('nowLine');
	var cancelLine = document.getElementById('cancelLine');
	var nowText = document.getElementById('nowText');
	var cancelText = document.getElementById('cancelText');
	
	if(data == 'B'){
		now.style.display = 'block';
		nowLine.style.backgroundColor = 'rgb(68, 68, 68)';
		nowText.style.color = 'rgb(68, 68, 68)';
		cancel.style.display = 'none';
		cancelLine.style.backgroundColor = 'rgb(238, 238, 238)';
		cancelText.style.color = 'rgb(153, 153, 153)';
	}else if(data == 'C'){
		cancel.style.display = 'block';
		cancelLine.style.backgroundColor = 'rgb(68, 68, 68)';
		cancelText.style.color = 'rgb(68, 68, 68)';
		now.style.display = 'none';
		nowLine.style.backgroundColor = 'rgb(238, 238, 238)';
		nowText.style.color = 'rgb(153, 153, 153)';
	}
});
//새로운 창을 열고 해당 창에 새로운 페이지를 로드하는 함수
function openNewWindow() {
    // 여기에 이동할 페이지의 URL을 입력하세요.
    var pageUrl = 'estimate';
    // 새 창 열기
    window.open(pageUrl, '_blank', 'width=600,height=400');
}

function orderAllProduct(){
	serverCallByRequest('orderPage','post','');
}

// 이 부분이 장바구니에서 선택한 상품을 주문 했을 때 선택한 상품으로만 주문 페이지로 이동 시키게 작업 할 부분임
function showAlert() {
    var checkedProductIndexes = [];
	var products = [];
	
	var formChild = [];
	let formData = new FormData();
    // 모든 체크박스를 가져옴
    var checkboxes = document.querySelectorAll('input[type="checkbox"]');
    
    // 각 체크박스를 순회하면서 체크된 상품의 loopindex를 확인
    checkboxes.forEach(function(checkbox, index) {
        if (checkbox.checked) {
            // 체크된 체크박스의 loopindex 값을 배열에 추가
            checkedProductIndexes.push(index);
        }
    });

    // 체크된 상품이 있는지 확인 후 alert을 출력
    if (checkedProductIndexes.length > 0) {
    	for(let i=0; i<checkedProductIndexes.length; i++){
    		let data = [];
    		products[i] = document.getElementById('proCode'+checkedProductIndexes[i]).value;
    		data.push('sessionCode');
    		data.push(products[i]);
    		formChild.push(data);
    	}
    	console.log(formChild);
    	serverCallByRequest('orderSelPage','post',formChild);
    } else {
        alert("선택된 상품이 없습니다.");
    }
}

function insSessionCartResult(){
	alert('ss');
}

function confirmDeleteCart() {
    if (confirm("장바구니를 비우시겠습니까?")) {
    	serverCallByFetchAjax('', 'deleteCartAll', 'post', 'deleteCartAllResult');
    } else {
        // 사용자가 취소를 선택한 경우
        // 아무 동작도 하지 않음
    }
}

function deleteCartAllResult(message){
	alert(message.message);
	serverCallByRequest('cartPage','post','')
}

function delProduct(index){
	var productCode = document.getElementById('proCode'+index);
	if(confirm("해당 상품을 장바구니에서 삭제 하시겠습니까?")){
		let formData = new FormData();
		formData.append(productCode.name, productCode.value);
		serverCallByFetchAjax(formData, 'delProduct', 'post', 'delProductResult');
	} else{
		
	}
}

function delProductResult(jsonData){
	if(jsonData.message != null || jsonData.message != ''){
		alert(jsonData.message);
		serverCallByRequest('cartPage','post','')
	}else{
		alert("네트워크 오류 : 잠시후 다시 시도해주세요.")
	}
}

function testPrice() {
    var id = [];
    var price = [];
    var test = document.getElementsByClassName('cart-sel-price-text-input');

    for (var i = 0; i < test.length; i++) {
        id.push("cart-product-price" + i);
    }

    for (var x = 0; x < id.length; x++) {
        var rawPrice = document.getElementById(id[x]).innerText;
        
        // ','와 '원'을 제거한 후 숫자만 남기기
        var cleanedPrice = rawPrice.replace(/[^0-9]/g, '');

        price.push(parseInt(cleanedPrice, 10));
    }

    // 숫자들을 더해서 총합 구하기
    var totalPrice = price.reduce(function (accumulator, currentValue) {
        return accumulator + currentValue;
    }, 0);

    return(totalPrice);
}

function ee(index, acc){
	const i = "cart-count-num-box"+index;
	const data = document.getElementById(i);
	alert(acc);
}

//로그아웃
function logOut(){
		alert("로그아웃 되었습니다.")
		serverCallByRequest('logOut','get','');
	}

function countChange(action, index, acc) {
	  const i = "cart-count-num-box"+index;
	  let formData = new FormData();
	  var countNumBox = document.getElementById(i);
	  var countValue = parseInt(countNumBox.value);
	  var proCodeId = 'proCode'+index;
	  var proCode = document.getElementById(proCodeId);

	  // 동작에 따라 수량 업데이트 (증가 또는 감소)
	  if (action === 'p') {
	    countValue++;
	  } else if (action === 'm' && countValue > 1) {
	    countValue--;
	  }

	  // 입력 값 업데이트
	  countNumBox.value = countValue;
	// 총 가격 엘리먼트 업데이트
	  var priceId = "proPrice"+index;
	  var productPrice = document.getElementById(priceId).value; // pro.productsPrice가 컨텍스트에서 사용 가능한 변수라고 가정합니다.
	  var acc = productPrice / 100;
	  var totalAcc = countValue * acc;
	  var totalPrice = countValue * productPrice;
	  var totalPriceClass = "cart-product-price"+index;
	  var totalAccClass = "cart-product-add"+index;

	  // 총 가격을 ###,###원 형식으로 포맷하고 '원' 글자 추가
	  var formattedTotalPrice = new Intl.NumberFormat('ko-KR').format(totalPrice) + '원';
	  var formattedTotalAcc = new Intl.NumberFormat('ko-KR').format(totalAcc);

	  // 총 가격 표시 업데이트
	  document.getElementById(totalPriceClass).innerHTML = formattedTotalPrice;
	  document.getElementsByClassName(totalAccClass)[0].innerHTML = formattedTotalAcc;

	  // 볼드체 총 가격 표시 업데이트
	  //document.getElementById("final-price").innerHTML = formattedTotalPrice;
	  var formattedTotalPriceAll = new Intl.NumberFormat('ko-KR').format(testPrice());
	  var formattedTotalPricePlusDelivery = new Intl.NumberFormat('ko-KR').format(testPrice()+3000) + '원';
	  document.getElementById('price-all-cart-text').innerHTML = formattedTotalPriceAll;
	  document.getElementById('real-total-price-text').innerText = formattedTotalPricePlusDelivery;
	  formData.append(proCode.name, proCode.value);
	  formData.append('productsCount', countValue);
	  serverCallByFetchAjax(formData, 'upCartInfo', 'post', 'upCartInfoResult');
}

function upCartInfoResult(jsonData){
	if(jsonData.message === "네트워크 오류:네트워크가 불안정합니다.잠시 후 다시 시도해주세요"){
		alert(jsonData.message);
	}else{
		console.log("성공");
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
	
	function checkAll() {
	    var checkAllBox = document.getElementById("cart-check-all-box");
	    var checkboxes = document.getElementsByClassName("cart-check-product-box");

	    for (var i = 0; i < checkboxes.length; i++) {
	        checkboxes[i].checked = checkAllBox.checked;
	    }
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

	var swiper = new Swiper('.swiper-container', {
		pagination : {
			el : ".swiper-pagination",
			clickable : true,
		},
		paginationClickable : '.swiper-pagination',
		navigation : {
			nextEl : '.swiper-button-next',
			prevEl : '.swiper-button-prev',
		},

		spaceBetween : 0,
		effect : 'fade',
		autoplay : {
			delay : 2500, //슬라이드 바뀌는 시간
			disableOnInteraction : false,
		},
		loop : true,
	});
	
	function toggleTooltip(){
		const tool = document.getElementById('rr-tooltip');
		if(tool.style.display === 'none' || tool.style.display === ''){
			tool.style.display = 'block';
		}else{
			tool.style.display = 'none';
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
	
	function flexToolTip(){
		var tool = document.getElementById('rr-tooltip');
		tool.style.display = 'block';
	}

	function noneToolTip(){
		var tool = document.getElementById('rr-tooltip');
		tool.style.display = 'none';
	}
	
	function orPro(data){
		var formChild = [];
		var proCode = document.getElementById('proCode'+data);
		var proCount = document.getElementById('cart-count-num-box'+data);
		var data = [proCode.name, proCode.value];
		var data2 = ['cartList[0].cartCount', proCount.value];
		formChild.push(data);
		formChild.push(data2);
		serverCallByRequest('buyOrderPage','post',formChild);
	}
	
	function orderNowView(data){
		var now = document.getElementById('orderNowView');
		var cancel = document.getElementById('ordercancelView');
		var nowLine = document.getElementById('nowLine');
		var cancelLine = document.getElementById('cancelLine');
		var nowText = document.getElementById('nowText');
		var cancelText = document.getElementById('cancelText');
		
		if(data == 'now'){
			now.style.display = 'block';
			nowLine.style.backgroundColor = 'rgb(68, 68, 68)';
			nowText.style.color = 'rgb(68, 68, 68)';
			cancel.style.display = 'none';
			cancelLine.style.backgroundColor = 'rgb(238, 238, 238)';
			cancelText.style.color = 'rgb(153, 153, 153)';
		}else if(data == 'cancel'){
			cancel.style.display = 'block';
			cancelLine.style.backgroundColor = 'rgb(68, 68, 68)';
			cancelText.style.color = 'rgb(68, 68, 68)';
			now.style.display = 'none';
			nowLine.style.backgroundColor = 'rgb(238, 238, 238)';
			nowText.style.color = 'rgb(153, 153, 153)';
		}
	}
	
	function orderType(type){
		var formChild = [];
		var data = ['orderStatus', type];
		formChild.push(data);
		serverCallByRequest('orderViewPage', 'post', formChild);
	}
	
	function pagingTest(num, type){
		alert(type);
		var formChild = [];
		var data = ['pageNum', num];
		var data2 = ['orderStatus', type];
		formChild.push(data);
		formChild.push(data2);
		serverCallByRequest('orderViewPage','post',formChild);
	}
	
	function pagingFirst(num, type){
		var pageNum = ${paging}.length;
		if(type === 'mi'){
			if(parseInt(num)-1 < 1){
				alert("첫번째 페이지 입니다.");
			}else{
				var formChild = [];
				var data = ['pageNum', parseInt(num)-1];
				formChild.push(data);
				serverCallByRequest('orderViewPage','post',formChild);
			}
		}else{
			if(parseInt(num)+1 > pageNum){
				alert("마지막 페이지 입니다.");
			}else{
				var formChild = [];
				var data = ['pageNum', parseInt(num)+1];
				formChild.push(data);
				serverCallByRequest('orderViewPage','post',formChild);
			}
		}
	}
	
	
	
	function requestRefund(button, price, count, loop) {
	    const impUid = button.getAttribute('data-imp-uid');  // 결제 고유 ID
	    const reason = prompt("환불 사유를 입력하세요:");
	    const proCode = button.getAttribute('data-product-id');
	    const proCount = document.getElementById('order-pro-count' + loop).value;  // Hidden input의 value를 가져옵니다.
	    var total = price * count;
	    if(proCount == 1){
		    total += 3000;
	    }
	    if (reason) {
	        const data = {
	            impUid: impUid,
	            amount: total,
	            reason: reason,
	            proCode: proCode,
	        };

	        fetch('/refund', {
	            method: 'POST',
	            headers: {
	                'Content-Type': 'application/json'
	            },
	            body: JSON.stringify(data)
	        })
	        .then(response => response.json())
	        .then(result => {
	            if (result.success) {
	                alert("환불 성공");
	                serverCallByRequest('orderViewPage', 'post', '');
	            } else {
	            	if(result.message === "결제취소에 실패하였습니다. 테스트 MID 사용시 체크카드 거래인 경우에는 부분취소 불가능 거래(전체취소 요망)"){
		                alert("환불 실패: " + result.message);
		                if(confirm("해당 주문의 전체 상품을 환불 하시겠습니까?")){
		            		reRequestRefund(button, price, count, type);
		            	}else{
		            		alert("환불이 취소 되었습니다.");
		            	}
	            	}else{
	            		alert("환불 실패: " + result.message);
	            	}
	            }
	        })
	        .catch(error => {
	            console.error('Error:', error);
	            alert("환불 실패: 서버 오류");
	        });
	    } else {
	        alert("환불 사유를 입력해야 합니다.");
	    }
	}
	
	function reRequestRefund(button, price, count, type){
		 const impUid = button.getAttribute('data-imp-uid');  // 결제 고유 ID
		 const reason = prompt("환불 사유를 입력하세요:");
		 const proCode = button.getAttribute('data-product-id');
		 const total = price * count;
		 if (reason) {
		     const data = {
		         impUid: impUid,
		         amount: total,
		         reason: reason,
		         proCode: proCode,
		         type: type
		     };
	        fetch('/refundAll', {
		            method: 'POST',
		            headers: {
		                'Content-Type': 'application/json'
		            },
		            body: JSON.stringify(data)
		        })
		        .then(response => response.json())
		        .then(result => {
		            if (result.success) {
		                alert("환불 성공");
		                serverCallByRequest('orderViewPage', 'post', '');
		            } else {
			            alert("환불 실패: " + result.message);
		            }
		        })
		        .catch(error => {
		            console.error('Error:', error);
		            alert("환불 실패: 서버 오류");
		        });
		    } else {
		        alert("환불 사유를 입력해야 합니다.");
		    }
	}



</script>

</body>
</html>