<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>admin-page</title>
<!-- 아이콘 -->
<script src="https://kit.fontawesome.com/69077b3f9d.js" crossorigin="anonymous"></script>
<link href="\resources\css\main.css" rel="stylesheet" />
<link href="\resources\css\join.css" rel="stylesheet" />
<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800" rel="stylesheet">
<!-- fullcalendar -->
<link href='https://cdn.jsdelivr.net/npm/fullcalendar@5.11.0/main.min.css' rel='stylesheet' />
<script src='https://cdn.jsdelivr.net/npm/fullcalendar@5.11.0/main.min.js'></script>
<script src='https://cdn.jsdelivr.net/npm/fullcalendar@5.11.0/locales-all.min.js'></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/echarts/5.2.2/echarts.min.js"></script>
<script src="\resources\js\mainsj.js"></script>
<style>
/* 기존 스타일 */
.admin-index-navbar-text:hover {
    color: #CCCCCC;
}
.admin-index-navbar-bottom-text {
    font-weight: bold;
    padding: 0px 20px;
    color: white;
    cursor: pointer;
}
.admin-index-navbar-bottom-text:hover {
	background-color: #6B6B6B;
}

.admin-index-order-list-top {
    width: 14.27%;
    height: 14.60px;
    border-top: 1px solid #ccc;
    border-bottom: 1px solid #ccc;
    font-size: 12px;
    color: #454545;
    font-weight: bold;
    text-align: center;
    padding: 10px;
    background-color: #F8F8F8;
}
.admin-index-order-list-foreach {
    width: 14.27%;
    height: 14.60px;
    border-bottom: 1px solid #ccc;
    font-size: 12px;
    color: #454545;
    text-align: center;
    padding: 10px;
    background-color: white;
}

/* 드롭다운 메뉴 스타일 */
.dropdown {
    position: relative;
    display: inline-block;
}

.dropdown-content {
    display: none;
    position: absolute;
    background-color: #545454;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
    z-index: 1;
    top: 34px; /* 부모 요소의 높이와 일치 */
    left: 0;
    padding: 0;
    margin: 0;
    list-style: none;
    width: 100%; /* 부모 요소와 동일한 너비 */
    opacity: 0;
    transform: translateY(-10px);
    transition: opacity 0.3s ease, transform 0.3s ease;
}

.dropdown-content li {
    width: 100%; /* 부모 요소와 동일한 너비 */
    box-sizing: border-box; /* 패딩과 보더를 포함한 너비 계산 */
}

.dropdown-content li:hover {
    background-color: #6B6B6B;
}

.dropdown:hover .dropdown-content {
    display: block;
    opacity: 1;
    transform: translateY(0);
}
#calendar {
	max-width: 900px;
	margin: 40px auto;
}
</style>


</head>
<body style="margin: 0; padding: 0; width: 100%; height: 100%;">
	<nav>
		<div style="width: 100%; height: 50px; background-color: #3E3E3E; display: flex; justify-content: space-between;">
			<img src="http://demofran.com/admin/img/logo.gif" style="margin-top: 16px; margin-left: 17px;" width="179px" height="18px">
			<div style="line-height: 50px; display: flex; margin-right: 25px; font-size: 12px; color: #BBBBBB;">
				<div style="width: 0.5px; height: 100%; margin: 0px 10px; background-color: #545454;"></div>
				<div class="admin-index-navbar-text" style=" cursor: pointer;">관리자정보</div>
				<div style="width: 0.5px; height: 100%; margin: 0px 10px; background-color: #545454;"></div>
				<form action="/afterPage_admin_shop" method="get" id="moveShopForm">
					<div class="admin-index-navbar-text" style="cursor: pointer;" onclick="movePage('moveShopForm')">쇼핑몰</div>
				</form>
				<div style="width: 0.5px; height: 100%; margin: 0px 10px; background-color: #545454;"></div>
				<form action="/logOut" method="get" id="logOutForm">
					<div style="color: #FF0000; cursor: pointer;" onclick="logOut('logOutForm')">로그아웃</div>
				</form>
				<div style="width: 0.5px; height: 100%; margin: 0px 10px; background-color: #545454;"></div>
			</div>
		</div>
		<div style="width: 100%; height: 34px; background-color: #545454;">
		    <div style="display: flex; line-height: 34px; height: 100%; font-size: 13px;">
		        <div style="width: 0.5px; height: 100%; background-color: #3E3E3E;"></div>
		        <form action="/afterPage" method="get" id="mainForm">
			        <div class="admin-index-navbar-bottom-text" onclick="movePage('mainForm')">메인
			        </div>
		        </form>
		        <div style="width: 0.5px; height: 100%; background-color: #3E3E3E;"></div>
		        <div class="admin-index-navbar-bottom-text dropdown">
		            매출분석
		            <form action="/salesReport" method="post" id="salesReport">
		            	<input type="hidden" name="reportType" id="reportType" value="">
			            <ul class="dropdown-content">
			                <li class="admin-index-navbar-bottom-text" style="text-align: center; border-bottom: 0.5px solid #3E3E3E;" onclick="serverCallByRequest('admin/salesReport/day', 'post', '')">일 매출</li>
			                <li class="admin-index-navbar-bottom-text"  style="text-align: center; border-bottom: 0.5px solid #3E3E3E;" onclick="page_sales('month')">월 매출</li>
			                <li class="admin-index-navbar-bottom-text" style="text-align: center;" onclick="page_sales('year')">년 매출</li>
			            </ul>
		            </form>
		        </div>
		        <div style="width: 0.5px; height: 100%; background-color: #3E3E3E;"></div>
		        <div class="admin-index-navbar-bottom-text dropdown">
		            상품관리
		            <ul class="dropdown-content">
		                <li class="admin-index-navbar-bottom-text" style="text-align: center; border-bottom: 0.5px solid #3E3E3E;">상품등록</li>
		                <li class="admin-index-navbar-bottom-text" style="text-align: center; border-bottom: 0.5px solid #3E3E3E;">상품수정</li>
		                <li class="admin-index-navbar-bottom-text" style="text-align: center;">상품삭제</li>
		            </ul>
		        </div>
		        <div style="width: 0.5px; height: 100%; background-color: #3E3E3E;"></div>
		        <div class="admin-index-navbar-bottom-text dropdown">
		            주문관리
		        </div>
		        <div style="width: 0.5px; height: 100%; background-color: #3E3E3E;"></div>
		        <div class="admin-index-navbar-bottom-text dropdown">
		            회원관리
		        </div>
		        <div style="width: 0.5px; height: 100%; background-color: #3E3E3E;"></div>
		        <div class="admin-index-navbar-bottom-text dropdown">
		            쿠폰관리
		            <ul class="dropdown-content">
		                <li class="admin-index-navbar-bottom-text" style="text-align: center; border-bottom: 0.5px solid #3E3E3E;">쿠폰생성</li>
		                <li class="admin-index-navbar-bottom-text" style="text-align: center;">쿠폰발급</li>
		            </ul>
		        </div>
		        <div style="width: 0.5px; height: 100%; background-color: #3E3E3E;"></div>
		        <div class="admin-index-navbar-bottom-text dropdown">
		            고객지원
		            <ul class="dropdown-content">
		                <li class="admin-index-navbar-bottom-text" style="text-align: center; border-bottom: 0.5px solid #3E3E3E;">Q&A</li>
		                <li class="admin-index-navbar-bottom-text" style="text-align: center;">리뷰</li>
		            </ul>
		        </div>
		        <div style="width: 0.5px; height: 100%; background-color: #3E3E3E;"></div>
		    </div>
		</div>
	</nav>
	<!-- section -->
	<form action="/admin/salesReport/day" method="post" id="changeMonthForm">
		<input type="hidden" id="date" name="date" value="">
	</form>
	<div style="position: absolute; margin-top: 120px; margin-left: 350px;">
		<div style="display: flex;">
			<div>총매출 : </div>
			<div style="width: 50px; height: 15px; background-color: #4285f4; margin-top: 5px; margin-left: 3px; border-radius: 3px;"></div>
		</div>
		<div style="display: flex;">
			<div>순수익 : </div>
			<div style="width: 50px; height: 15px; background-color: red; margin-top: 5px; margin-left: 3px; border-radius: 3px;"></div>
		</div>
	</div>
	<div id='calendar'></div>
	<!-- footer -->
	<div style="width: 100%; height: 50px; padding: 30px 0px;">
		<div id="aa" style="width: 100%; height: 1px; background-color: #eee; display: flex; justify-content: center; align-items: center; margin-top: 25px; margin-bottom: 25px;"><i class="fa-solid fa-diamond" id="gg" style="font-size: 9px"></i></div>
	</div>
	<div style="width: 100%; height: 503px;">
	<div style="width: 100%; height: 1px; background-color: #F0F0F0;"></div>
	<div style="width: 100%; height: 314.06px; padding-top: 60px; background-color: #FBFBFB; display: flex; justify-content: center;">
		<div style="width: 80%; background-color: #FBFBFB;">
			<div style="height: 28.06px; display: flex;">
				<div style="display: flex; width: 20%;">
					<img alt="logo" src="\resources\img\puppy logo.jpg" width="28.05px" height="28.05px">
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

<script>
document.addEventListener('DOMContentLoaded', function() {
    var calendarEl = document.getElementById('calendar');
    var initialLoad = true;

    var dates = ${date};
    var prices = ${price};
    var margins = ${margin};

    var events = [];

    for (var i = 0; i < dates.length; i++) {
        var formattedPrice = prices[i].toLocaleString('ko-KR') + '원';
        var formattedMargin = margins[i].toLocaleString('ko-KR') + '원';
        
        events.push({ title: formattedPrice, start: dates[i], color:'#4285f4', order: 1 });
        events.push({ title: formattedMargin, start: dates[i], color: 'red', order: 2 });
    }

    var calendar = new FullCalendar.Calendar(calendarEl, {
        initialView: 'dayGridMonth',
        locale: 'ko',
        events: events,
        eventOrder: "order",
        datesSet: function(info) {
            if (!initialLoad) {
                var title = calendar.view.title;
            } else {
                initialLoad = false;
            }
        }
    });

    calendar.render();
});

function movePage(data){
	document.getElementById(data).submit();
}

function logOut(data){
		alert("로그아웃 되었습니다.");
		movePage(data);
	}

function page_sales(data){
	document.getElementById('reportType').value = data;
	document.getElementById('salesReport').submit();
}

</script>
</body>
</html>