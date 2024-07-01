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
	<link href="resources/css/login.css" rel="stylesheet" />
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
<div id="firstLine">
	<a>신규가입 하고 10% 쿠폰 받기! </a>
</div>
	<input type="button" value="닫기" id="exit" onclick="toggleExit()">
<nav>
<div id="secLine">
	<div id="secIn">
		<div id="tt">
		<i class="fa-solid fa-microphone" style="color: #666;"></i>
		<a>고객지원센터: 010-2349-1054</a>
		</div>
		<div id="cc">
		</div>
		<div id="rr">
			<input type="button" id="rr-btn" value="회원가입" onClick="serverCallByRequest('join','get','')">
			<div id="rr-icon">/</div>
			<input type="button" id="rr-btn" value="로그인" onclick="serverCallByRequest('login','get','')">
		</div>
	</div>
</div>
<div id="line"></div>
<div id="logoArea">
<img alt="logo" src="resources/img/puppy logo.jpg" width="100px" height="100px">
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
</nav>
<div id="miniText">
	<div id="miniIn">
		<i class="fa-solid fa-house" id="miniIcon"></i>
		<div id="miniArrow">></div>
		<div id="miniLoginText">로그인</div>
		<div id="miniArrow">></div>
		<div id="miniJoinText">비밀번호 찾기</div>
	</div>
</div>
<div id="joinTitle">
	FIND PASSWORD
<div style="width: 25px; height: 1px; background-color: black; margin: 0 auto; margin-top: -40px;"></div>
</div>
<div id="joinLine"><i class="fa-solid fa-diamond" id="diaIcon"></i></div>
<div id="joinTextArea">비밀번호 찾기<br>
내 기본 정보 입력</div>
<div id="joinLine"><i class="fa-solid fa-diamond" id="diaIcon"></i></div>
<div id="findArea">
	<div id="findInputArea">
		<div id="findExText">
			아래 양식을 입력하고<br>
			계정을 찾아주세요.
		</div>
		<div style="width: 100%; height: 1px; background-color: #F0F0F0; margin: 25px 0px 19px;"></div>
		<div style="flex-direction: column; display: flex; justify-content: flex; text-align: left;">
			<div style="float: left; padding: 6.25px 12.5px 6px; color: #000000;">이름</div>
			<input type="text" id="findId-nameInput" class="userName" name="userName">
		</div>
		<div style="flex-direction: column; display: flex; justify-content: flex; text-align: left;">
			<div style="float: left; padding: 6.25px 12.5px 6px; color: #000000;">아이디</div>
			<input type="text" id="findId-nameInput" class="userId" name="userId">
		</div>
		<div style="flex-direction: column; display: flex; justify-content: flex; text-align: left;">
			<div style="float: left; padding: 6.25px 12.5px 6px; color: #000000;">이메일</div>
			<div style="display: flex; margin-bottom: 10px;">
				<input type="text" id="findId-mailInput" class="userEmail" name="userEmail"> <input type="button" id="findId-mailResult-btn" onclick="authMail()" value="인증하기">
			</div>
			<div id="find-mailCode-input">
				<div id="codeResult">
					<input type="text" id="findId-mailInputResult" class="mailCode" name="mailCode" placeholder="인증번호"> <input type="button" id="findId-mailResult-btn" onclick="mailCode()" value="확인">
				</div>
			</div>
		</div>
			<div style="width: 100%; height: 1px; background-color: #F0F0F0; margin: 25px 0px 19px;"></div>
			<div style="margin: 0 auto;">
				<button id="findPassword-btn" onclick="findUserPw()"><i class="fa-solid fa-check" style="margin-right: 3px;"></i>비밀번호 찾기</button>
				<button id="find-cancle-btn">취소</button>
			</div>
	</div>
</div>
<!-- Footer 내용 추가 -->
<footer id="footer">
   <div id="footerWrap">
       <div class="logo">
            <img alt="logo" src="resources/img/puppy logo.jpg">
       </div>
       <hr class="footer-line">
       <div id="footerContent">
           <div id="storeInfo" class="info">
               <p>매장 이름: Puppy</p>
               <p>주소: 인천광역시 미추홀수 매소홀로 488번길 6-32 태승빌딩 5층</p>
               <p>대표: 황영호</p>
               <p>사업자번호: 000-00-00000</p>
           </div>
           <div id="contactInfo" class="info">
               <p>고객센터: 010-2349-1054</p>
               <p>운영시간:</p>
               <p>평일: 오전 10:00 ~ 오후 6:00</p>
               <p>점심시간: 오후 12:00 ~ 오후 1:00</p>
               <p>토 / 일 / 공휴일: 휴무</p>
           </div>
       </div>
   </div>
</footer>




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


function findUserPw() {
    const name = document.getElementsByClassName('userName')[0];
    const mail = document.getElementsByClassName('userEmail')[0];
    const mailCode = document.getElementsByClassName('mailCode')[0];
    const id = document.getElementsByClassName('userId')[0];

    // Check if name, mail, and mailCode exist and are not empty
    if (!name.value || !id.value || !mail.value || !mailCode.value) {
        alert("필수 입력 항목입니다.");

        // Set focus to the first input that is empty
        if (!name.value) {
            name.focus();
        } else if(!id.value){
        	id.focus();
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
            [id.name, id.value],
            [mail.name, mail.value]
        ];
    	console.log(data);
        serverCallByRequest('findPwResult','get',data);
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
	
	function flexToggle(){
		var toggle = document.getElementById('toggle-area-cate');
		toggle.style.display = 'flex';
	}

	function noneToggle(){
		var toggle = document.getElementById('toggle-area-cate');
		toggle.style.display = 'none';
	}
</script>

</body>
</html>