<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>puppy-order</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.2.0.js"></script>
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
	<link href="resources/css/order.css" rel="stylesheet" />
	<link href="resources/css/join.css" rel="stylesheet" />
</head>
<body style="margin: 0;">
<div class="order-area">
	<div class="order-title-area">
		<div class="back-icon"><i class="fa-solid fa-chevron-left" style="cursor: pointer;" onclick="serverCallByRequest('cartPage','post','')"></i></div>
		<div class="order-title-text">PUPPY</div>
		<div class="icon-area">
			<div class="top-icon">
				<i class="fa-solid fa-bag-shopping" style="cursor: pointer;"></i>
			</div>
			<div class="top-icon">
				<i class="fa-regular fa-user" style="cursor: pointer;"></i>
			</div>
		</div>
	</div>
	<div class="order-top-text"><div style="margin-right: 25px; font-weight: bold;">주문/결제</div></div>
</div>
<div class="order-conetnt-area">
	<div style="width: 100%; height: 10px; background-color: #ddd; margin-top: -5px;"></div>
	<div class="delivery-info-area" id="delivery-info-area">
		<div class="delivery-info-area-in" id="del-for-padding">
			<div class="delivery-info-area-in-text">배송지</div>
			<div class="delivery-info-area-in-text" style="cursor: pointer;" onclick="hiddenInfo('delInfo')"><i class="fa-solid fa-chevron-up" id="delUpIcon"></i><i class="fa-solid fa-chevron-down" id="delDownIcon" style="display: none;"></i></div>
		</div>
		<div id ="bottom-area">
		<div class="delivery-info-area-in-select">
    		<input type="checkbox" class="check-delivery-info circle-checkbox" id="sameUserInfo"> <div class="same-userInfo">회원 정보와 동일</div>
    		<input type="checkbox" class="check-delivery-info circle-checkbox" id="noSameUserInfo"> <div class="same-userInfo">새로운 배송지</div>
		</div>
		<div class="user-name-info">
			<div style="width: 10%; display: flex;"><div style="line-height: 46px;">받는사람</div><i class="fa-solid fa-star-of-life" id="starIcon" style="font-size: 6px; line-height: 46px; margin-left: 5px;"></i></div>
			<input type="text" class="user-name-info-text-area" id="userName" value="${userInfo.userName}">
		</div>
		<div class="user-name-info">
			<div style="width: 10%; display: flex;"><div style="line-height: 46px;">주소</div><i class="fa-solid fa-star-of-life" id="starIcon" style="font-size: 6px; line-height: 46px; margin-left: 5px;"></i></div>
			<input type="text" class="user-addr-area-text-area" id="zip" value="${userInfo.userZip}"><button class="addr-search-btn">주소 검색</button>
		</div>
		<div class="user-name-info">
			<div style="width: 10%; display: flex;"><div style="line-height: 46px; display: none;">주소</div><i class="fa-solid fa-star-of-life" id="starIcon" style="display: none;font-size: 6px; line-height: 46px; margin-left: 5px;"></i></div>
			<input type="text" class="user-name-info-text-area" id="addr" value="${userInfo.userAddr}">
		</div>
		<div class="user-name-info">
			<div style="width: 10%; display: flex;"><div style="line-height: 46px; display: none;">주소</div><i class="fa-solid fa-star-of-life" id="starIcon" style="display: none; font-size: 6px; line-height: 46px; margin-left: 5px;"></i></div>
			<input type="text" class="user-name-info-text-area" id="addrDetail" value="${userInfo.userAddrDetail}">
		</div>
		
		<div class="user-name-info">
			<div style="width: 10%; display: flex;"><div style="line-height: 46px;">전화번호</div><i class="fa-solid fa-star-of-life" id="starIcon" style="font-size: 6px; line-height: 46px; margin-left: 5px;"></i></div>
			<div style="width: 90%; display: flex;">
				<input type="text" value="${first}" id="firstOrderPhone" class="user-phone-text-area" style="margin-left: 11.7px;"><div style="line-height: 46px; margin-left: 8px;">-</div>
				<input type="text" value="${sec}" id="secOrderPhone" class="user-phone-text-area"><div style="line-height: 46px; margin-left: 8px;">-</div>
				<input type="text" value="${trd}" id="trdOrderPhone" class="user-phone-text-area">
			</div>
		</div>
		<div class="user-name-info">
			<div style="width: 10%; display: flex;"><div style="line-height: 46px;">이메일</div><i class="fa-solid fa-star-of-life" id="starIcon" style="font-size: 6px; line-height: 46px; margin-left: 5px;"></i></div>
			<div style="width: 90%; display: flex;">
				<input type="text" value="${firstMail}" id="firstMail" class="user-mail-text-area" style="margin-left: 11.7px;"><div style="line-height: 46px; margin-left: 8px;">@</div>
				<input type="text" value="${secMail}" id="secMail" class="user-mail-text-area">
			</div>
		</div>
		<div style="width: 103.7%; height: 1px; background-color: #ccc; margin-top: 17px; margin-left: -16px;"></div>
		<div class="user-select-info" style="padding: 20px 0px 15px;">
				<select class="delivery-select-box" id="delivery-select-box" onchange="userInput()">
					<option value="0">-- 메세지 선택(선택 사항) --</option>
					<option value="배송 전에 미리 연락바랍니다.">배송 전에 미리 연락바랍니다.</option>
					<option value="부재 시 경비실에 맡겨주세요.">부재 시 경비실에 맡겨주세요.</option>
					<option value="부재 시 문 앞에 놓아주세요.">부재 시 문 앞에 놓아주세요.</option>
					<option value="빠른 배송 부탁드립니다.">빠른 배송 부탁드립니다.</option>
					<option value="택배함에 보관해주세요.">택배함에 보관해주세요.</option>
					<option value="6">직접 입력</option>
				</select>
				<input type="text" class="delivery-select-box" id="userInput" style="width: 96.3%; margin-top: 10px; display: none;">
		</div>
		</div>
	</div>
		<div style="width: 100%; height: 10px; background-color: #ddd; margin-top: -5px;"></div>
	<div class="delivery-info-area" id="delivery-info-area">
		<div class="delivery-info-area-in" id="pro-for-padding">
			<div class="delivery-info-area-in-text">주문상품</div>
			<div class="delivery-info-area-in-text" style="cursor: pointer;" onclick="hiddenInfo('productInfo')"><i class="fa-solid fa-chevron-up" id="proUpIcon"></i><i class="fa-solid fa-chevron-down" id="proDownIcon" style="display: none;"></i></div>
		</div>
		<c:forEach var="proList" items="${proList}" varStatus="loopStatus">
		<c:forEach var="img" items="${proList.imgList}">
		<c:forEach var="cart" items="${proList.cartList}">
		<div class="product-order-info-area" id="product-order-info-area">
			<div style="width: 90px; height: 90px; margin-right: 20px;">
				<img alt="pro" src="resources/productImg/${img.img}" width="88px" height="90px">
			</div>
			<div style="width: 85%; font-size: 14px;">
				<div style="margin-bottom: 12px; font-weight: bold;">${proList.productsName}</div>
				<input type="hidden" style="margin-bottom: 12px; font-weight: bold;" value="${proList.productsCode}" class="proList-code">
				<input type="hidden" style="margin-bottom: 12px; font-weight: bold;" value="${cart.cartCount}" class="proList-count">
				<div style="margin-bottom: 20px; color: #606060;">수량 : ${cart.cartCount}</div>
				<div style="margin-bottom: 0; font-weight: bold;"><fmt:formatNumber value="${proList.productsPrice}" type="number" pattern="###,###원"/></div>
			</div>
			<button class="order-x-btn" style="cursor: pointer;"><i class="fa-solid fa-x"></i></button>
		</div>
			<div id="order-product-info-line" style="width: 100%; height: 1px; border-top: 1px dotted #ccc; margin-top: 20px; margin-bottom: 20px;"></div>
		</c:forEach>
		</c:forEach>
		</c:forEach>
		
	</div>
		<div id="product-info-del-price" style="width: 96.8%; height: 22.39px; padding: 11px 16px; background-color: #F7F7F7; margin-top: -10px; display: flex; justify-content: space-between;">
			<div style="font-size: 16px; color: #606060;">배송비</div>
			<div style="font-size: 14px; font-weight: bold;">3,000원</div>
		</div>
		<div style="width: 100%; height: 10px; background-color: #ddd; margin-top: -5px;"></div>
	<div class="delivery-info-area" id="delivery-info-area">
		<div class="delivery-info-area-in" id="for-padding">
			<div class="delivery-info-area-in-text">할인/부가결제</div>
			<div class="delivery-info-area-in-text" style="cursor: pointer;" onclick="hiddenInfo('discountInfo')"><i class="fa-solid fa-chevron-up" id="upIcon"></i><i class="fa-solid fa-chevron-down" id="downIcon" style="display: none;"></i></div>
		</div>
		<div class="order-discount-area">
			<div style="display: flex;">
				<div class="reserves-text" style="margin-right: 39px;">쿠폰 </div>
				<c:choose>
				    <c:when test="${empty couponList}">
				    <select class="user-addr-area-text-area" style="width: 83.3%; height: 42px; margin-left: 0px;" id="coupon-selBox">
				    	<option value="0">-- 쿠폰을 선택하세요 --</option>
				    </select>
				        <!-- <input type="text" class="user-addr-area-text-area" style="width: 81.2%; height: 20px; margin-left: 0px;" id="acc-text-area" onclick="noneAcc()" readonly> -->
				        <button class="addr-search-btn" style="background-color: #FFFFFF; font-weight: bold;" onclick="notCouponResult()" id="coupon-result-btn">쿠폰 적용</button>
				    </c:when>
				    <c:otherwise>
				    	<select class="user-addr-area-text-area" style="width: 83.3%; height: 42px; margin-left: 0px;" id="coupon-selBox">
					    	<option value="0">-- 쿠폰을 선택하세요 --</option>
					    	<c:forEach var="coupon" items="${couponList}">
					    	<option value="${coupon.couponBenefit}, ${coupon.couponCode}, ${coupon.couponPrice}">${coupon.couponName}</option>
					    	</c:forEach>
					    </select>
				        <!-- <input type="text" class="user-addr-area-text-area" style="width: 81.2%; height: 20px; margin-left: 0px;" id="acc-text-area" onblur="accAppend(this)" onkeypress="handleKeyPress(event)"> -->
				        <button class="addr-search-btn" style="background-color: #FFFFFF; font-weight: bold;" onclick="couponResult()" id="coupon-result-btn">쿠폰 적용</button>
				    </c:otherwise>
				</c:choose>
			</div>
		</div>
		<div class="user-point" style="margin-right: 27px;">
			<div class="point-text">적용 금액</div>
			<div class="point-text-price" id="coupon-result-area"><fmt:formatNumber value="0" type="number" pattern="###,###원"/></div>
		</div>
		<div class="order-discount-area" style="margin-top: 15px;">
			<div style="display: flex;">
				<div class="reserves-text">적립금</div>
				<c:choose>
				    <c:when test="${empty userInfo.userAcc or userInfo.userAcc == 0}">
				        <input type="text" class="user-addr-area-text-area" style="width: 81.2%; height: 20px; margin-left: 0px;" id="acc-text-area" onclick="noneAcc()" readonly>
				        <button class="addr-search-btn" style="background-color: #FFFFFF; font-weight: bold;" onclick="noneAcc()">전액 사용</button>
				    </c:when>
				    <c:otherwise>
				        <input type="text" class="user-addr-area-text-area" style="width: 81.2%; height: 20px; margin-left: 0px; text-align: right;" id="acc-text-area" onblur="accAppend(this)" onkeypress="handleKeyPress(event)">
				        <button class="addr-search-btn" style="background-color: #FFFFFF; font-weight: bold;" onclick="acctest()" id="use-all-acc">전액 사용</button>
				    </c:otherwise>
				</c:choose>
			</div>
		</div>
		<div class="user-point" style="margin-right: 27px;">
			<div class="point-text">보유 잔액</div>
			<div class="point-text-price" id="havaPoint"><fmt:formatNumber value="${userInfo.userAcc}" type="number" pattern="###,###원"/></div>
		</div>
		<div style="width: 95.4%; padding: 13px 20px; margin-top: 40px; background-color: #F9F8FA; cursor: pointer;" onclick="dropEx()">
			<div style="display: flex; justify-content: space-between; ">
				<div class="ex-text">상품 주문시 할인은 쿠폰과 적립금 중 하나만 적용이 가능합니다.</div>
				<i class="fa-solid fa-chevron-up" id="exUpIcon" style="display: block; line-height: 27.52px;"></i><i class="fa-solid fa-chevron-down" id="exDownIcon" style="line-height: 27.52px; display: none;"></i>
			</div>
			<div class="ex-hidden" id="ex-hidden" style="display: block;">
				<div class="ex-text">1회 구매시 적립금 최대 사용금액은 2,000원입니다.</div>
			</div>
		</div>
	</div>
	<div id="product-info-del-price" style="width: 96.8%; height: 35px; padding: 11px 16px; background-color: #F7F7F7; margin-top: -10px; display: flex; justify-content: space-between; margin-top: 10px;">
		<div style="font-size: 18px; font-weight: bold; line-height: 35px;">적용금액</div>
		<div style="font-size: 18px; font-weight: bold; color: #31CAAE; line-height: 35px;" id="accResult">0원</div>
	</div>
	<div style="width: 100%; height: 10px; background-color: #ddd; margin-top: -5px;"></div>
	<div class="delivery-info-area" id="delivery-info-area">
		<div class="delivery-info-area-in" id="pro-for-padding">
			<div class="delivery-info-area-in-text">결제정보</div>
			<div class="delivery-info-area-in-text" style="cursor: pointer;" onclick="hiddenInfo('productInfo')"><i class="fa-solid fa-chevron-up" id="proUpIcon"></i><i class="fa-solid fa-chevron-down" id="proDownIcon" style="display: none;"></i></div>
		</div>
		<div>
			<div class="order-info-text-in" style="padding-top: 0px;">
				<div>주문상품</div>
				<div class="order-info-text-in-num" id="allPriceArea">
					<fmt:formatNumber value="${allPrice}" type="number" pattern="###,###원"/>
				</div>
			</div>
			<div class="order-info-text-in">
				<div>배송비</div>
				<div class="order-info-text-in-num">+3,000원</div>
			</div>
			<div class="order-info-text-in">
				<div>할인</div>
				<div class="order-info-text-in-num" style="display: flex;"><input type="text" style="color: #DC2C2C; border: none; text-align: right; font-size: 16px; font-weight: bold;" id="discount-area" value="-0" readonly>원</div>
			</div>
		</div>
	</div>
		<div id="product-info-del-price" style="width: 96.8%; height: 35px; padding: 11px 16px; background-color: #F7F7F7; margin-top: -10px; display: flex; justify-content: space-between; margin-top: 10px;">
		<div style="font-size: 18px; font-weight: bold; line-height: 35px;">최종 결제 금액</div>
		<div style="font-size: 18px; font-weight: bold; color: #31CAAE; line-height: 35px;" id="paymentResult">
  			<fmt:formatNumber value="${plusDelivery}" type="number" pattern="###,###원"/>
		</div>

	</div>
	<div style="width: 100%; height: 10px; background-color: #ddd; margin-top: -5px;"></div>
	<div class="delivery-info-area" id="delivery-info-area">
		<div class="delivery-info-area-in" id="pro-for-padding">
			<div class="delivery-info-area-in-text">결제수단</div>
			<div class="delivery-info-area-in-text" style="cursor: pointer;" onclick="hiddenInfo('productInfo')"><i class="fa-solid fa-chevron-up" id="proUpIcon"></i><i class="fa-solid fa-chevron-down" id="proDownIcon" style="display: none;"></i></div>
		</div>
		<div style="padding-bottom: 16px;">
			<div class="order-info-text-in" style="padding-bottom: 20px;">
				<div>결제수단 선택</div>
			</div>
			<button class="payment-btn" id="payment" value="pay" onclick="clickTest('payment')" style="border: 0.5px solid #6fa3ff; background-color: #eee;"><img alt="account" src="resources/img/ico_bank.gif"></button>
			<button class="payment-btn" id="nice" onclick="clickTest('nice')"><img alt="nice" src="resources/img/ico_card.gif"></button>
			<button class="payment-btn" id="kakao" onclick="clickTest('kakao')"><img alt="kakao" src="resources/img/kakaopay.png" width="105px" height="43px"></button>
			<button class="payment-btn" id="toss" onclick="clickTest('toss')"><img alt="toss" src="resources/img/tosspay.jpg" width="95px" height="30px"></button>
		</div>
		<div id="pay-area" style="width: 100%; background-color: #FAFAFD; border: 0.5px solid #ccc; display: block;">
			<div class="user-name-info" style="display: block;">
			<div style="display: flex;">
				<div style="width: 10%; display: flex; padding: 16px 0px 12px 16px;"><div>입금은행</div><i class="fa-solid fa-star-of-life" id="starIcon" style="font-size: 6px; line-height: 20px; margin-left: 5px;"></i></div>
				<div style="padding: 5px 16px 5px 4px; width: 100%; height: 42px;">
					<select id="selAccount" style="padding: 0px 20px 0px 15px; width: 100%; height: 100%; border: 0.5px solid #ccc; border-radius: 1px; font-size: 14px; font-weight: bold;">
						<option>::: 선택해 주세요. :::</option>
						<option>카카오뱅크 3333-05-8631048 황영호</option>
					</select>
				</div>
			</div>
			<div style="display: flex;">
				<div style="width: 10%; display: flex; padding: 16px 0px 12px 16px;"><div>입금자명</div><i class="fa-solid fa-star-of-life" id="starIcon" style="font-size: 6px; line-height: 20px; margin-left: 5px;"></i></div>
				<div style="padding: 5px 16px 5px 4px; width: 100%; height: 42px;">
					<input type="text" id="accountName"style="padding: 10px 11px 10px 10px; width: 97.5%; height: 20px; border: 0.5px solid #ccc; border-radius: 1px; font-size: 14px; font-weight: bold;">
				</div>
			</div>
			<div style="padding: 15px 16px 10px 16px;">
				<div style="font-size: 15px; font-weight: bold; padding: 10px 0px 10px;">현금영수증</div>
				<div style="display: flex;">
					<input type="checkbox" class="check-delivery-info circle-checkbox" id="cashBill"> <div class="same-userInfo" style="margin-right: 20px;">현금영수증 신청</div>
	    			<input type="checkbox" class="check-delivery-info circle-checkbox" id="noCashBill"> <div class="same-userInfo">신청안함</div>
    			</div>
			</div>
			<div style="padding: 15px 16px 5px 16px;">
				<div style="font-size: 15px; font-weight: bold; padding: 10px 0px 10px;">세금계산서</div>
				<div style="display: flex;">
					<input type="checkbox" class="check-delivery-info circle-checkbox" id="taxBill"> <div class="same-userInfo" style="margin-right: 20px;">세금계산서 신청</div>
	    			<input type="checkbox" class="check-delivery-info circle-checkbox" id="noTaxBill"> <div class="same-userInfo">신청안함</div>
    			</div>
			</div>
			</div>
		</div>
		<!-- <button onclick="requestPay()"></button> -->
	</div>
		<div style="width: 100%; height: 10px; background-color: #ddd; margin-top: -5px;"></div>
		<div class="delivery-info-area" id="delivery-info-area" style="height: 27px;">
		<div class="delivery-info-area-in" id="pro-for-padding">
			<div class="delivery-info-area-in-text">적립 혜택</div>
			<div style="width: 87%; text-align: right; font-size: 15px; font-weight: bold; color: #31CAAE; line-height: 25px;">220원 예정</div>
			<div class="delivery-info-area-in-text" style="cursor: pointer;" onclick="hiddenInfo('productInfo')"><i class="fa-solid fa-chevron-up" id="proUpIcon"></i><i class="fa-solid fa-chevron-down" id="proDownIcon" style="display: none;"></i></div>
		</div>
	</div>
	<div style="width: 100%; height: 10px; background-color: #ddd; margin-top: -5px;"></div>
	<div class="delivery-info-area" id="delivery-info-area">
		<div style="width: 96%; background-color: #FAFAFD; border: 0.5px solid #ccc; height: 34.66px; padding: 10px 16px; margin-bottom: 20px;">
			<div style="font-size: 15px; color: #383838; line-height: 34.66px;">구매조건 확인 및 결제진행 동의</div>
		</div>
		<div style="font-size: 16px; font-weight: bold; text-align: center;">주문 내용을 확인하였으며 약관에 동의합니다.</div>
		<!-- <button onclick="requestPay()"></button> -->
	</div>
	<button class="pay-btn" onclick="requestPay()">
		<div id="last-pay-price"><fmt:formatNumber value="${plusDelivery}" type="number" pattern="###,###원"/></div>
		<div> 결제하기</div>
	</button>
	<div class="help-area">
		<div>- 무이자할부가 적용되지 않은 상품과 무이자할부가 가능한 상품을 동시에 구매할 경우 전체 주문 상품 금액에 대해 무이자할부가 적용되지 않습니다.</div>
		<div style="margin-left: 9.5px; padding-bottom: 23px;">  무이자할부를 원하시는 경우 장바구니에서 무이자할부 상품만 선택하여 주문하여 주시기 바랍니다.</div>
		<div>- 최소 결제 가능 금액은 결제금액에서 배송비를 제외한 금액입니다.</div>
	</div>
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

//HTML 요소 가져오기
const cashBillCheckbox = document.getElementById('cashBill');
const noCashBillCheckbox = document.getElementById('noCashBill');

// 현금영수증 신청 체크박스가 기본으로 체크되어 있도록 설정
noCashBillCheckbox.checked = true;

// 현금영수증 신청 체크박스가 클릭되었을 때의 이벤트 처리
noCashBillCheckbox.addEventListener('click', function() {
    // 다른 체크박스 체크 해제
    cashBillCheckbox.checked = false;
});

// 신청안함 체크박스가 클릭되었을 때의 이벤트 처리
cashBillCheckbox.addEventListener('click', function() {
    // 현금영수증 신청 체크박스 체크 해제
    noCashBillCheckbox.checked = false;
});

//HTML 요소 가져오기
const aa = document.getElementById('sameUserInfo');
const nn = document.getElementById('noSameUserInfo');

// 현금영수증 신청 체크박스가 기본으로 체크되어 있도록 설정
aa.checked = true;

// 현금영수증 신청 체크박스가 클릭되었을 때의 이벤트 처리
aa.addEventListener('click', function() {
    // 다른 체크박스 체크 해제
    nn.checked = false;
    var name = document.getElementById('userName');
    var zip = document.getElementById('zip');
    var addr = document.getElementById('addr');
    var addrDetail = document.getElementById('addrDetail');
    var firstPhone = document.getElementById('firstOrderPhone');
    var secPhone = document.getElementById('secOrderPhone');
    var trdPhone = document.getElementById('trdOrderPhone');
    var firstMail = document.getElementById('firstMail');
    var secMail = document.getElementById('secMail');
    name.value = "${userInfo.userName}";
    zip.value = "${userInfo.userZip}";
    addr.value = "${userInfo.userAddr}";
    addrDetail.value = "${userInfo.userAddrDetail}";
    firstPhone.value = "${first}";
    secPhone.value = "${sec}";
    trdPhone.value = "${trd}";
    firstMail.value = "${firstMail}";
    secMail.value = "${secMail}";
});

nn.addEventListener('click', function() {
    aa.checked = false;
    var zip = document.getElementById('zip');
    var addr = document.getElementById('addr');
    var addrDetail = document.getElementById('addrDetail');
    
    // 각 input 요소의 value를 비웁니다.
    document.querySelectorAll('.user-name-info input').forEach(function(input) {
        input.value = '';
    });

    // 각 input 요소의 placeholder를 설정합니다.
    zip.placeholder = "우편번호";
    addr.placeholder = "기본주소";
    addrDetail.placeholder = "상세주소";
});

//HTML 요소 가져오기
const tax = document.getElementById('taxBill');
const noTax = document.getElementById('noTaxBill');

// 현금영수증 신청 체크박스가 기본으로 체크되어 있도록 설정
noTax.checked = true;

// 현금영수증 신청 체크박스가 클릭되었을 때의 이벤트 처리
noTax.addEventListener('click', function() {
    // 다른 체크박스 체크 해제
    tax.checked = false;
});

// 신청안함 체크박스가 클릭되었을 때의 이벤트 처리
tax.addEventListener('click', function() {
    // 현금영수증 신청 체크박스 체크 해제
    noTax.checked = false;
});
//aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
function hiddenInfo(data){
	
	if(data === 'delInfo'){
		const area = document.getElementById("bottom-area");
		const paddingFor = document.getElementById("del-for-padding");
		const up = document.getElementById("delUpIcon");
		const down = document.getElementById("delDownIcon");
		if(area.style.display === "none"){
			area.style.display = "block";
			down.style.display = "none";
			up.style.display = "block";
			paddingFor.style.paddingBottom  ='20px';
		}else{
			area.style.display = "none";
			down.style.display = "block";
			up.style.display = "none";
			paddingFor.style.paddingBottom  ='0';
		}
	} else if(data === 'productInfo'){
		const area = document.getElementById("product-order-info-area");
		const paddingFor = document.getElementById("pro-for-padding");
		const up = document.getElementById("proUpIcon");
		const down = document.getElementById("proDownIcon");
		const line = document.getElementById("order-product-info-line");
		const delP = document.getElementById("product-info-del-price");
		if(area.style.display === "none"){
			area.style.display = "flex";
			down.style.display = "none";
			up.style.display = "block";
			line.style.display = "block";
			delP.style.display = "flex";
			paddingFor.style.paddingBottom  ='20px';
		}else{
			area.style.display = "none";
			down.style.display = "block";
			up.style.display = "none";
			line.style.display = "none";
			delP.style.display = "none";
			paddingFor.style.paddingBottom  ='0';
		}
	}
	
	
}

function dropEx(){
	const hiddenEx = document.getElementById("ex-hidden");
	const up = document.getElementById("exUpIcon");
	const down = document.getElementById("exDownIcon");
	if(hiddenEx.style.display === "none"){
		hiddenEx.style.display = "block"
		down.style.display = "none";
		up.style.display = "block";
	}else{
		hiddenEx.style.display = "none"
		down.style.display = "block";
		up.style.display = "none";
	}
}

function userInput(){
	const sel = document.getElementById("delivery-select-box");
	const input = document.getElementById("userInput");
	if(sel.value === "6"){
		input.style.display = "block";
	}else{
		input.style.display = "none";
	}
}

function clickTest(data){
	const payment = document.getElementById("payment");
	const nice = document.getElementById("nice");
	const kakao = document.getElementById("kakao");
	const toss = document.getElementById("toss");
	const area = document.getElementById("pay-area");
	if(data === "payment"){
		payment.style.border = "0.5px solid #6fa3ff";
		payment.style.backgroundColor = "#eee";
		nice.style.border = "0.5px solid #ccc";
		nice.style.backgroundColor = "white";
		kakao.style.border = "0.5px solid #ccc";
		kakao.style.backgroundColor = "white";
		toss.style.border = "0.5px solid #ccc";
		toss.style.backgroundColor = "white";
		area.style.display = "block";
	} else if(data === "nice"){
		payment.style.border = "0.5px solid #ccc";
		payment.style.backgroundColor = "white";
		nice.style.border = "0.5px solid #6fa3ff";
		nice.style.backgroundColor = "#eee";
		kakao.style.border = "0.5px solid #ccc";
		kakao.style.backgroundColor = "white";
		toss.style.border = "0.5px solid #ccc";
		toss.style.backgroundColor = "white";
		area.style.display = "none";
	} else if(data === "kakao"){
		payment.style.border = "0.5px solid #ccc";
		payment.style.backgroundColor = "white";
		nice.style.border = "0.5px solid #ccc";
		nice.style.backgroundColor = "white";
		kakao.style.border = "0.5px solid #6fa3ff";
		kakao.style.backgroundColor = "#eee";
		toss.style.border = "0.5px solid #ccc";
		toss.style.backgroundColor = "white";
		area.style.display = "none";
	} else if(data === "toss"){
		payment.style.border = "0.5px solid #ccc";
		payment.style.backgroundColor = "white";
		nice.style.border = "0.5px solid #ccc";
		nice.style.backgroundColor = "white";
		kakao.style.border = "0.5px solid #ccc";
		kakao.style.backgroundColor = "white";
		toss.style.border = "0.5px solid #6fa3ff";
		toss.style.backgroundColor = "#eee";
		area.style.display = "none";
	}
}

//아임포트 결제
var IMP = window.IMP;
        IMP.init("imp70328114");

        function requestPay() {
        	let formData = new FormData();
        	var userAcc = document.getElementById('acc-text-area');
        	var couSel = document.getElementById('coupon-selBox');
        	var cub = couSel.value.split(',');
        	var couponCode = cub[1];
        	var discountPriceBefore = document.getElementById('discount-area').value;
        	var discountPrice = parseFloat(discountPriceBefore.replace(/[-,]/g, ''));
        	var coment = document.getElementById('delivery-select-box');
        	var proInfo = document.getElementsByClassName('product-order-info-area');
        	var proListCode = document.getElementsByClassName('proList-code');
        	var proListCount = document.getElementsByClassName('proList-count');
        	var name = document.getElementById('userName');
            var zip = document.getElementById('zip');
            var addr = document.getElementById('addr');
            var addrDetail = document.getElementById('addrDetail');
            var firstPhone = document.getElementById('firstOrderPhone');
            var secPhone = document.getElementById('secOrderPhone');
            var trdPhone = document.getElementById('trdOrderPhone');
            var firstMail = document.getElementById('firstMail');
            var secMail = document.getElementById('secMail');
            var account = document.getElementById('selAccount');
            var accountName = document.getElementById('accountName');
        	const payment = document.getElementById("payment");
        	const nice = document.getElementById("nice");
        	const kakao = document.getElementById("kakao");
        	const toss = document.getElementById("toss");
        	var last = document.getElementById('last-pay-price');
        	var lastStr = last.innerText.replace(/[\,,원]/g, '');
        	var lastPrice = parseInt(lastStr);													//원래 가격 - 할인 가격
        	var proName = '';
        	var userAddr = "${userInfo.userAddr} "+"${userInfo.userAddrDetail}";
        	if(couSel.value != '0' || couSel.value != 0){
        		if(couSel.disabled == false){
        			var btn = document.getElementById('coupon-result-btn');
        			alert("쿠폰 적용 버튼을 클릭하세요.");
        			btn.focus();
        		}else{
        			if(name.value === '' || name.value === null || zip.value === '' || zip.value === null || addr.value === '' || addr.value === null || addrDetail.value === '' || addrDetail.value === null || firstPhone.value === '' || firstPhone.value === null || secPhone.value === '' || secPhone.value === null || trdPhone.value === '' || trdPhone.value === null || firstMail.value === '' || firstMail.value === null || secMail.value === '' || secMail.value === null){
	        		if(name.value === '' || name.value === null){
			        	alert("필수 입력 항목을 입력하세요.");
			        	name.focus();
	        		}else if(zip.value === '' || zip.value){
	        			alert("필수 입력 항목을 입력하세요.");
	        			zip.focus();
	        		}else if(addr.value === '' || addr.value){
	        			alert("필수 입력 항목을 입력하세요.");
	        			addr.focus();
	        		}else if(addrDetail.value === '' || addrDetail.value){
	        			alert("필수 입력 항목을 입력하세요.");
	        			addrDetail.focus();
	        		}else if(firstPhone.value === '' || firstPhone.value){
	        			alert("필수 입력 항목을 입력하세요.");
	        			firstPhone.focus();
	        		}else if(secPhone.value === '' || secPhone.value){
	        			alert("필수 입력 항목을 입력하세요.");
	        			secPhone.focus();
	        		}else if(trdPhone.value === '' || trdPhone.value){
	        			trdPhone.focus();
	        		}else if(firstMail.value === '' || firstMail.value){
	        			firstMail.focus();
	        		}else if(secMail.value === '' || secMail.value){
	        			secMail.focus();
	        		}
		        }else{
	        		if(${outCount} === 0){ //여기서부터~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
		            	proName = "${titleName}"
		            }else{
		            	proName = "${titleName} 외 "+${outCount}+" 개"		//상품 명
		            }
		        	if(payment.style.backgroundColor != "white"){
		        		if(account.value === '::: 선택해 주세요. :::' || account.value === null || accountName.value === '' || accountName.value === null){
		        			if(account.value === '::: 선택해 주세요. :::' || account.value === null){
		        				account.focus();
			        			alert("필수 입력 항목을 입력하세요.");
		        			}else if(accountName.value === null || accountName.value === ''){
		        				accountName.focus();
		        				alert("필수 입력 항목을 입력하세요.");
		        			}
		        		}else{												//결제 성공
		        			formData.append('order[0].orderRecipient', name.value);
		        			formData.append('order[0].orderZip', zip.value);
		        			formData.append('order[0].orderAddr', addr.value);
		        			formData.append('order[0].orderAddrDetail', addrDetail.value);
		        			formData.append('order[0].orderPhone', firstPhone.value+secPhone.value+trdPhone.value);
		        			formData.append('order[0].orderPayment', "계좌이체");
		        			formData.append('order[0].orderDiscount', discountPrice);
		        			formData.append('order[0].orderTotalPrice', lastPrice);
		        			formData.append('userAcc', userAcc.value);
			        		formData.append('coupon[0].couponCode', couponCode);
		        			if(coment.value != '0'){
		        				if(coment.value === '6'){
		        					var userComent = document.getElementById('userInput');
		        					formData.append('order[0].orderComent', userComent.value);
		        				}else{
		        					formData.append('order[0].orderComent', coment.value);
		        				}
		        			}else{
		        				console.log("no coment");
		        			}
		        			if(proInfo.length > 1){							//상품 여러개 주문
			        			for(var i=0; i<proListCode.length; i++){
			        				formData.append('order[0].product['+i+'].productsCode', proListCode[i].value);
			        				formData.append('order[0].product['+i+'].productsCount', proListCount[i].value);
			        			}
		        			}else{											//하나의 상품만 주문
		        				formData.append('order[0].product[0].productsCode', proListCode[0].value);
		        				formData.append('order[0].product[0].productsCount', proListCount[0].value);
		        			}
		        			serverCallByFetchAjax(formData, 'order', 'post', 'requestPayResult');
		        		}
		        	}else if(toss.style.backgroundColor != "white"){
		        		IMP.request_pay(
		    	                {
		    	                    pg: "tosspay",		//KG이니시스 pg파라미터 값
		    	                    pay_method: "card",		//결제 방법
		    	                    merchant_uid: "${a}",//주문번호
		    	                    name: proName,		//상품 명
		    	                    amount: lastPrice,			//금액
		    	      				buyer_email: "${userInfo.userEmail}",
		    	      				buyer_name: "${userInfo.userName}",
		    	      				buyer_tel: "${userInfo.userPhone}",
		    	      				buyer_addr: userAddr,
		    	     	
		    	                },
		    	                function (rsp) {
		    	      				//rsp.imp_uid 값으로 결제 단건조회 API를 호출하여 결제결과를 판단합니다.
		    	                    if (rsp.success) {
		    		        			formData.append('order[0].orderRecipient', name.value);
		    		        			formData.append('order[0].orderZip', zip.value);
		    		        			formData.append('order[0].orderAddr', addr.value);
		    		        			formData.append('order[0].orderAddrDetail', addrDetail.value);
		    		        			formData.append('order[0].orderPhone', firstPhone.value+secPhone.value+trdPhone.value);
		    		        			formData.append('order[0].orderPayment', "toss");
		    		        			formData.append('order[0].orderDiscount', discountPrice);
		    		        			formData.append('order[0].orderTotalPrice', lastPrice);
		    		        			formData.append('coupon[0].couponCode', couponCode);
		    		        			if(coment.value != '0'){
		    		        				if(coment.value === '6'){
		    		        					var userComent = document.getElementById('userInput');
		    		        					formData.append('order[0].orderComent', userComent.value);
		    		        				}else{
		    		        					formData.append('order[0].orderComent', coment.value);
		    		        				}
		    		        			}else{
		    		        				console.log("no coment");
		    		        			}
		    		        			if(proInfo.length > 1){							//상품 여러개 주문
		    			        			for(var i=0; i<proListCode.length; i++){
		    			        				formData.append('order[0].product['+i+'].productsCode', proListCode[i].value);
		    			        				formData.append('order[0].product['+i+'].productsCount', proListCount[i].value);
		    			        			}
		    		        			}else{											//하나의 상품만 주문
		    		        				formData.append('order[0].product[0].productsCode', proListCode[0].value);
		    		        				formData.append('order[0].product[0].productsCount', proListCount[0].value);
		    		        			}
		    		        			serverCallByFetchAjax(formData, 'order', 'post', 'requestPayResult');
		    	                    } else {
		    	                        alert("결제에 실패하였습니다. 에러 내용: " + rsp.error_msg);
		    	                    }
		    	                }
		    	            );
		        	}else if(kakao.style.backgroundColor != "white"){
		        		IMP.request_pay(
		    	                {
		    	                    pg: "kakaopay",		//KG이니시스 pg파라미터 값
		    	                    pay_method: "card",		//결제 방법
		    	                    merchant_uid: "${a}",//주문번호
		    	                    name: proName,		//상품 명
		    	                    amount: lastPrice,			//금액
		    	      				buyer_email: "${userInfo.userEmail}",
		    	      				buyer_name: "${userInfo.userName}",
		    	      				buyer_tel: "${userInfo.userPhone}",
		    	      				buyer_addr: userAddr,
		    	     	
		    	                },
		    	                function (rsp) {
		    	      				//rsp.imp_uid 값으로 결제 단건조회 API를 호출하여 결제결과를 판단합니다.
		    	                    if (rsp.success) {
		    		        			formData.append('order[0].orderRecipient', name.value);
		    		        			formData.append('order[0].orderZip', zip.value);
		    		        			formData.append('order[0].orderAddr', addr.value);
		    		        			formData.append('order[0].orderAddrDetail', addrDetail.value);
		    		        			formData.append('order[0].orderPhone', firstPhone.value+secPhone.value+trdPhone.value);
		    		        			formData.append('order[0].orderPayment', "kakaopay");
		    		        			formData.append('order[0].orderDiscount', discountPrice);
		    		        			formData.append('order[0].orderTotalPrice', lastPrice);
		    		        			formData.append('coupon[0].couponCode', couponCode);
		    		        			if(coment.value != '0'){
		    		        				if(coment.value === '6'){
		    		        					var userComent = document.getElementById('userInput');
		    		        					formData.append('order[0].orderComent', userComent.value);
		    		        				}else{
		    		        					formData.append('order[0].orderComent', coment.value);
		    		        				}
		    		        			}else{
		    		        				console.log("no coment");
		    		        			}
		    		        			if(proInfo.length > 1){							//상품 여러개 주문
		    			        			for(var i=0; i<proListCode.length; i++){
		    			        				formData.append('order[0].product['+i+'].productsCode', proListCode[i].value);
		    			        				formData.append('order[0].product['+i+'].productsCount', proListCount[i].value);
		    			        			}
		    		        			}else{											//하나의 상품만 주문
		    		        				formData.append('order[0].product[0].productsCode', proListCode[0].value);
		    		        				formData.append('order[0].product[0].productsCount', proListCount[0].value);
		    		        			}
		    		        			serverCallByFetchAjax(formData, 'order', 'post', 'requestPayResult');
		    	                    } else {
		    	                        alert("결제에 실패하였습니다. 에러 내용: " + rsp.error_msg);
		    	                    }
		    	                }
		    	            );
		        	} else if(nice.style.backgroundColor != "white"){
		        		IMP.request_pay(
		    	                {
		    	                    pg: "nice",		//KG이니시스 pg파라미터 값
		    	                    pay_method: "card",		//결제 방법
		    	                    merchant_uid: "${a}",//주문번호
		    	                	name: proName,
		    	                    amount: lastPrice,//${plusDelivery},			//금액
		    	      				buyer_email: "${userInfo.userEmail}",
		    	      				buyer_name: "${userInfo.userName}",
		    	      				buyer_tel: "${userInfo.userPhone}",
		    	      				buyer_addr: userAddr,
		    	     	
		    	                },
		    	                function (rsp) {
		    	      				//rsp.imp_uid 값으로 결제 단건조회 API를 호출하여 결제결과를 판단합니다.
		    	                    if (rsp.success) {
		    		        			formData.append('order[0].orderRecipient', name.value);
		    		        			formData.append('order[0].orderZip', zip.value);
		    		        			formData.append('order[0].orderAddr', addr.value);
		    		        			formData.append('order[0].orderAddrDetail', addrDetail.value);
		    		        			formData.append('order[0].orderPhone', firstPhone.value+secPhone.value+trdPhone.value);
		    		        			formData.append('order[0].orderPayment', "간편결제");
		    		        			formData.append('order[0].orderDiscount', discountPrice);
		    		        			formData.append('order[0].orderTotalPrice', lastPrice);
		    		        			formData.append('coupon[0].couponCode', couponCode);
		    		        			if(coment.value != '0'){
		    		        				if(coment.value === '6'){
		    		        					var userComent = document.getElementById('userInput');
		    		        					formData.append('order[0].orderComent', userComent.value);
		    		        				}else{
		    		        					formData.append('order[0].orderComent', coment.value);
		    		        				}
		    		        			}else{
		    		        				console.log("no coment");
		    		        			}
		    		        			if(proInfo.length > 1){							//상품 여러개 주문
		    			        			for(var i=0; i<proListCode.length; i++){
		    			        				formData.append('order[0].product['+i+'].productsCode', proListCode[i].value);
		    			        				formData.append('order[0].product['+i+'].productsCount', proListCount[i].value);
		    			        			}
		    		        			}else{											//하나의 상품만 주문
		    		        				formData.append('order[0].product[0].productsCode', proListCode[0].value);
		    		        				formData.append('order[0].product[0].productsCount', proListCount[0].value);
		    		        			}
		    		        			serverCallByFetchAjax(formData, 'order', 'post', 'requestPayResult');
		    	                    } else {
		    	                        alert("결제에 실패하였습니다. 에러 내용: " + rsp.error_msg);
		    	                    }
		    	                }
		    	            );
		        	}//여기까지~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
	        	}
        		}
        	}else{
	        	if(name.value === '' || name.value === null || zip.value === '' || zip.value === null || addr.value === '' || addr.value === null || addrDetail.value === '' || addrDetail.value === null || firstPhone.value === '' || firstPhone.value === null || secPhone.value === '' || secPhone.value === null || trdPhone.value === '' || trdPhone.value === null || firstMail.value === '' || firstMail.value === null || secMail.value === '' || secMail.value === null){
	        		if(name.value === '' || name.value === null){
			        	alert("필수 입력 항목을 입력하세요.");
			        	name.focus();
	        		}else if(zip.value === '' || zip.value){
	        			alert("필수 입력 항목을 입력하세요.");
	        			zip.focus();
	        		}else if(addr.value === '' || addr.value){
	        			alert("필수 입력 항목을 입력하세요.");
	        			addr.focus();
	        		}else if(addrDetail.value === '' || addrDetail.value){
	        			alert("필수 입력 항목을 입력하세요.");
	        			addrDetail.focus();
	        		}else if(firstPhone.value === '' || firstPhone.value){
	        			alert("필수 입력 항목을 입력하세요.");
	        			firstPhone.focus();
	        		}else if(secPhone.value === '' || secPhone.value){
	        			alert("필수 입력 항목을 입력하세요.");
	        			secPhone.focus();
	        		}else if(trdPhone.value === '' || trdPhone.value){
	        			trdPhone.focus();
	        		}else if(firstMail.value === '' || firstMail.value){
	        			firstMail.focus();
	        		}else if(secMail.value === '' || secMail.value){
	        			secMail.focus();
	        		}
		        }else{
	        		if(${outCount} === 0){ //여기서부터~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
		            	proName = "${titleName}"
		            }else{
		            	proName = "${titleName} 외 "+${outCount}+" 개"		//상품 명
		            }
		        	if(payment.style.backgroundColor != "white"){
		        		if(account.value === '::: 선택해 주세요. :::' || account.value === null || accountName.value === '' || accountName.value === null){
		        			if(account.value === '::: 선택해 주세요. :::' || account.value === null){
		        				account.focus();
			        			alert("필수 입력 항목을 입력하세요.");
		        			}else if(accountName.value === null || accountName.value === ''){
		        				accountName.focus();
		        				alert("필수 입력 항목을 입력하세요.");
		        			}
		        		}else{												//결제 성공
		        			formData.append('order[0].orderRecipient', name.value);
		        			formData.append('order[0].orderZip', zip.value);
		        			formData.append('order[0].orderAddr', addr.value);
		        			formData.append('order[0].orderAddrDetail', addrDetail.value);
		        			formData.append('order[0].orderPhone', firstPhone.value+secPhone.value+trdPhone.value);
		        			formData.append('order[0].orderPayment', "계좌이체");
		        			formData.append('order[0].orderDiscount', discountPrice);
		        			formData.append('order[0].orderTotalPrice', lastPrice);
		        			formData.append('userAcc', userAcc.value);
		        			if(couSel.value != '0' || couSel.value != 0){
			        			formData.append('coupon[0].couponCode', couponCode);
		        			}else{
		        				console.log("no coupon");
		        			}
		        			if(coment.value != '0'){
		        				if(coment.value === '6'){
		        					var userComent = document.getElementById('userInput');
		        					formData.append('order[0].orderComent', userComent.value);
		        				}else{
		        					formData.append('order[0].orderComent', coment.value);
		        				}
		        			}else{
		        				console.log("no coment");
		        			}
		        			if(proInfo.length > 1){							//상품 여러개 주문
			        			for(var i=0; i<proListCode.length; i++){
			        				formData.append('order[0].product['+i+'].productsCode', proListCode[i].value);
			        				formData.append('order[0].product['+i+'].productsCount', proListCount[i].value);
			        			}
		        			}else{											//하나의 상품만 주문
		        				formData.append('order[0].product[0].productsCode', proListCode[0].value);
		        				formData.append('order[0].product[0].productsCount', proListCount[0].value);
		        			}
		        			serverCallByFetchAjax(formData, 'order', 'post', 'requestPayResult');
		        		}
		        	}else if(toss.style.backgroundColor != "white"){
		        		IMP.request_pay(
		    	                {
		    	                    pg: "tosspay",		//KG이니시스 pg파라미터 값
		    	                    pay_method: "card",		//결제 방법
		    	                    merchant_uid: "${a}",//주문번호
		    	                    name: proName,		//상품 명
		    	                    amount: lastPrice,			//금액
		    	      				buyer_email: "${userInfo.userEmail}",
		    	      				buyer_name: "${userInfo.userName}",
		    	      				buyer_tel: "${userInfo.userPhone}",
		    	      				buyer_addr: userAddr,
		    	     	
		    	                },
		    	                function (rsp) {
		    	      				//rsp.imp_uid 값으로 결제 단건조회 API를 호출하여 결제결과를 판단합니다.
		    	                    if (rsp.success) {
		    	                    	var impCode = rsp.imp_uid;
		    		        			formData.append('order[0].orderCode', impCode);
		    		        			formData.append('order[0].orderRecipient', name.value);
		    		        			formData.append('order[0].orderZip', zip.value);
		    		        			formData.append('order[0].orderAddr', addr.value);
		    		        			formData.append('order[0].orderAddrDetail', addrDetail.value);
		    		        			formData.append('order[0].orderPhone', firstPhone.value+secPhone.value+trdPhone.value);
		    		        			formData.append('order[0].orderPayment', "toss");
		    		        			formData.append('order[0].orderDiscount', discountPrice);
		    		        			formData.append('order[0].orderTotalPrice', lastPrice);
		    		        			formData.append('userAcc', userAcc.value);
		    		        			if(coment.value != '0'){
		    		        				if(coment.value === '6'){
		    		        					var userComent = document.getElementById('userInput');
		    		        					formData.append('order[0].orderComent', userComent.value);
		    		        				}else{
		    		        					formData.append('order[0].orderComent', coment.value);
		    		        				}
		    		        			}else{
		    		        				console.log("no coment");
		    		        			}
		    		        			if(proInfo.length > 1){							//상품 여러개 주문
		    			        			for(var i=0; i<proListCode.length; i++){
		    			        				formData.append('order[0].product['+i+'].productsCode', proListCode[i].value);
		    			        				formData.append('order[0].product['+i+'].productsCount', proListCount[i].value);
		    			        			}
		    		        			}else{											//하나의 상품만 주문
		    		        				formData.append('order[0].product[0].productsCode', proListCode[0].value);
		    		        				formData.append('order[0].product[0].productsCount', proListCount[0].value);
		    		        			}
		    		        			serverCallByFetchAjax(formData, 'order', 'post', 'requestPayResult');
		    	                    } else {
		    	                        alert("결제에 실패하였습니다. 에러 내용: " + rsp.error_msg);
		    	                    }
		    	                }
		    	            );
		        	}else if(kakao.style.backgroundColor != "white"){
		        		IMP.request_pay(
		    	                {
		    	                    pg: "kakaopay",		//KG이니시스 pg파라미터 값
		    	                    pay_method: "card",		//결제 방법
		    	                    merchant_uid: "${a}",//주문번호
		    	                    name: proName,		//상품 명
		    	                    amount: lastPrice,			//금액
		    	      				buyer_email: "${userInfo.userEmail}",
		    	      				buyer_name: "${userInfo.userName}",
		    	      				buyer_tel: "${userInfo.userPhone}",
		    	      				buyer_addr: userAddr,
		    	     	
		    	                },
		    	                function (rsp) {
		    	      				//rsp.imp_uid 값으로 결제 단건조회 API를 호출하여 결제결과를 판단합니다.
		    	                    if (rsp.success) {
		    	                    	var impCode = rsp.imp_uid;
		    		        			formData.append('order[0].orderCode', impCode);
		    		        			formData.append('order[0].orderRecipient', name.value);
		    		        			formData.append('order[0].orderZip', zip.value);
		    		        			formData.append('order[0].orderAddr', addr.value);
		    		        			formData.append('order[0].orderAddrDetail', addrDetail.value);
		    		        			formData.append('order[0].orderPhone', firstPhone.value+secPhone.value+trdPhone.value);
		    		        			formData.append('order[0].orderPayment', "kakaopay");
		    		        			formData.append('order[0].orderDiscount', discountPrice);
		    		        			formData.append('order[0].orderTotalPrice', lastPrice);
		    		        			formData.append('userAcc', userAcc.value);
		    		        			if(coment.value != '0'){
		    		        				if(coment.value === '6'){
		    		        					var userComent = document.getElementById('userInput');
		    		        					formData.append('order[0].orderComent', userComent.value);
		    		        				}else{
		    		        					formData.append('order[0].orderComent', coment.value);
		    		        				}
		    		        			}else{
		    		        				console.log("no coment");
		    		        			}
		    		        			if(proInfo.length > 1){							//상품 여러개 주문
		    			        			for(var i=0; i<proListCode.length; i++){
		    			        				formData.append('order[0].product['+i+'].productsCode', proListCode[i].value);
		    			        				formData.append('order[0].product['+i+'].productsCount', proListCount[i].value);
		    			        			}
		    		        			}else{											//하나의 상품만 주문
		    		        				formData.append('order[0].product[0].productsCode', proListCode[0].value);
		    		        				formData.append('order[0].product[0].productsCount', proListCount[0].value);
		    		        			}
		    		        			serverCallByFetchAjax(formData, 'order', 'post', 'requestPayResult');
		    	                    } else {
		    	                        alert("결제에 실패하였습니다. 에러 내용: " + rsp.error_msg);
		    	                    }
		    	                }
		    	            );
		        	} else if(nice.style.backgroundColor != "white"){
		        		IMP.request_pay(
		    	                {
		    	                    pg: "nice",		//KG이니시스 pg파라미터 값
		    	                    pay_method: "card",		//결제 방법
		    	                    merchant_uid: "${a}",//주문번호
		    	                	name: proName,
		    	                    amount: lastPrice,//${plusDelivery},			//금액
		    	      				buyer_email: "${userInfo.userEmail}",
		    	      				buyer_name: "${userInfo.userName}",
		    	      				buyer_tel: "${userInfo.userPhone}",
		    	      				buyer_addr: userAddr,
		    	     	
		    	                },
		    	                function (rsp) {
		    	      				//rsp.imp_uid 값으로 결제 단건조회 API를 호출하여 결제결과를 판단합니다.
		    	                    if (rsp.success) {
		    	                    	var impCode = rsp.imp_uid;
		    		        			formData.append('order[0].orderCode', impCode);
		    		        			formData.append('order[0].orderRecipient', name.value);
		    		        			formData.append('order[0].orderZip', zip.value);
		    		        			formData.append('order[0].orderAddr', addr.value);
		    		        			formData.append('order[0].orderAddrDetail', addrDetail.value);
		    		        			formData.append('order[0].orderPhone', firstPhone.value+secPhone.value+trdPhone.value);
		    		        			formData.append('order[0].orderPayment', "간편결제");
		    		        			formData.append('order[0].orderDiscount', discountPrice);
		    		        			formData.append('order[0].orderTotalPrice', lastPrice);
		    		        			formData.append('userAcc', userAcc.value);
		    		        			if(coment.value != '0'){
		    		        				if(coment.value === '6'){
		    		        					var userComent = document.getElementById('userInput');
		    		        					formData.append('order[0].orderComent', userComent.value);
		    		        				}else{
		    		        					formData.append('order[0].orderComent', coment.value);
		    		        				}
		    		        			}else{
		    		        				console.log("no coment");
		    		        			}
		    		        			if(proInfo.length > 1){							//상품 여러개 주문
		    			        			for(var i=0; i<proListCode.length; i++){
		    			        				formData.append('order[0].product['+i+'].productsCode', proListCode[i].value);
		    			        				formData.append('order[0].product['+i+'].productsCount', proListCount[i].value);
		    			        			}
		    		        			}else{											//하나의 상품만 주문
		    		        				formData.append('order[0].product[0].productsCode', proListCode[0].value);
		    		        				formData.append('order[0].product[0].productsCount', proListCount[0].value);
		    		        			}
		    		        			serverCallByFetchAjax(formData, 'order', 'post', 'requestPayResult');
		    	                    } else {
		    	                        alert("결제에 실패하였습니다. 에러 내용: " + rsp.error_msg);
		    	                    }
		    	                }
		    	            );
		        	}//여기까지~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
	        	}
        	}
        }
        
        function requestPayResult(jsonData){
        	alert(jsonData.message);
        	serverCallByRequest('cartPage','post','');
        }
        
        function acctest(){
        	var acc = document.getElementById('acc-text-area');
        	acc.value = '${userInfo.userAcc}';
        	accAppend(acc);
        }
        
        function handleKeyPress(event) {
            if (event.key === 'Enter') {
                accAppend(event.target);
            }
        }

        /*function accAppend(element) {
            var discountAmount = parseInt(element.value); // 입력된 할인 금액을 정수로 변환
            var resultDiv = document.getElementById("result"); // 결과를 표시할 div의 id를 가져옴
            var discountedAmount = -discountAmount; // 할인 금액을 음수로 변경

            // 결과를 표시할 div에 할인된 금액을 표시
            discountArea.value = discountedAmount;
            resultDiv.innerText = discountedAmount + "원";
        }*/

        
        function accAppend(element) {
        	var btn = document.getElementById('use-all-acc');
        	var haveAcc = document.getElementById('havaPoint');
        	var accText = haveAcc.innerText;
        	var formattedValue = accText.replace(/[\,,원]/g, '');
        	var accAmount = parseInt(formattedValue);
        	var allPrice = document.getElementById('allPriceArea');
        	var allStr = allPrice.innerText;
        	var formattedValue2 = allStr.replace(/[\,,원]/g, '');
        	var all = parseInt(formattedValue2);
        	if(element.value !== null && element.value !== '' && element.value !== 0){
        		if(element.value <= accAmount){
        			if(element.value > all){
        				alert("적립금은 상품 금액보다 많이 적용 될 수 없습니다.");
        				var accTextArea = document.getElementById('acc-text-area');
            			accTextArea.value = '';
            			btn.focus();
        			}else{
		        		var discount = document.getElementById('discount-area');
		            	var pay = document.getElementById('paymentResult');
		            	var priceStr = pay.innerText.replace(/[\,,원]/g, '');
		            	var price = parseInt(priceStr);
		            	var resultPrice = document.getElementById('accResult');
		            	var resultPriceStr = resultPrice.innerText.replace(/[\,,원]/g, '');
		            	var rePrice = parseInt(resultPriceStr);
		            	var allPrice = document.getElementById('allPriceArea');
		            	var allPriceResult = allPrice.innerText.replace(/[\,,원]/g, '');
		            	var last = document.getElementById('last-pay-price');
		            	
		            	var formattedValue = parseFloat(element.value).toLocaleString();
		        		var discountStr = discount.value.replace(/,/g, ''); // ','를 빈 문자열로 대체하여 제거
		        		var discountAmount = parseInt(discountStr);
		        		var formattedValue2 = parseFloat(discountAmount - element.value).toLocaleString();
		            	price = price - element.value;
		            	if(price < 0){
		            		alert("적립금 사용금액을 확인해주세요.");
		            		var accTextArea = document.getElementById('acc-text-area');
	            			accTextArea.value = '';
	            			btn.focus();
		            	}else{
			            	var formattedValue3 = parseFloat(price).toLocaleString();
			            	discount.value = formattedValue2;
			            	pay.innerText = formattedValue3 + "원";
			            	last.innerText = formattedValue3 + "원";
			            	var formattedValue4 = parseFloat(rePrice - element.value).toLocaleString();
			            	resultPrice.innerText = formattedValue4 + "원";
			            	alert("적립금이 사용되었습니다");
			            	var button = document.getElementById('coupon-result-btn');
			            	var couSel = document.getElementById('coupon-selBox');
			                button.disabled = true;
			                couSel.disabled = true;
			            	var accTextArea = document.getElementById('acc-text-area');
			                var useAllAccBtn = document.getElementById('use-all-acc');
			                accTextArea.setAttribute('readonly', 'readonly');
			    	        // onblur 이벤트 핸들러를 제거합니다.
			    	        accTextArea.removeAttribute('onblur');
			    	        // onkeypress 이벤트 핸들러를 제거합니다.
			    	        accTextArea.removeAttribute('onkeypress');
			                useAllAccBtn.disabled = true;
		            	}
        			}
        		}else{
        			alert("보유 적립금을 확인해주세요.");
        			var accTextArea = document.getElementById('acc-text-area');
        			accTextArea.value = '';
        		}
        	}else{
        		//alert("사용하실 적립금을 입력해주세요.");
        	}
        }
        
        function noneAcc(){
        	alert('보유하신 적립금이 없습니다.');
        }
        
        function couponResult(){
        	var couSel = document.getElementById('coupon-selBox');
        	var cub = couSel.value.split(',');
        	var cu = cub[0];
        	var couponPrice = cub[2];
        	var cpPriceStr = parseFloat(couponPrice).toLocaleString();
        	var cuArea = document.getElementById('coupon-result-area');
        	var discount = document.getElementById('discount-area');
        	var pay = document.getElementById('paymentResult');
        	var priceStr = pay.innerText.replace(/[\,,원]/g, '');
        	var price = parseInt(priceStr);
        	var resultPrice = document.getElementById('accResult');
        	var resultPriceStr = resultPrice.innerText.replace(/[\,,원]/g, '');
        	var rePrice = parseInt(resultPriceStr);
        	var allPrice = document.getElementById('allPriceArea');
        	var allPriceResult = allPrice.innerText.replace(/[\,,원]/g, '');
        	var last = document.getElementById('last-pay-price');
        	var lastStr = last.innerText.replace(/[\,,원]/g, '');
        	var lastPay = parseInt(lastStr);
        	var accTextArea = document.getElementById('acc-text-area');
        	var useAllAccBtn = document.getElementById('use-all-acc');
        	var allPrice = ${allPrice};
        	if(allPrice < couponPrice){
        		alert("해당 쿠폰의 최소 사용 금액은 "+cpPriceStr+"원 입니다.");
        		var sel = document.getElementById('coupon-selBox');
        		sel.value = 0;
        		sel.focus();
        	}else{
        		if(cu.includes("%")){
            		//전체 가격의 10% 구하는 allPriceResult / couper
            		cuArea.innerText = cu;
            		alert(cu);
            		couper = cu.replace('%', '');
            		var formattedValue4 = parseFloat(rePrice -(allPriceResult / couper)).toLocaleString();
            		var formattedValue2 = parseFloat(discount.value - (allPriceResult / couper)).toLocaleString();
            		price = price - (allPriceResult / couper);
            		var formattedValue3 = parseFloat(price).toLocaleString();
    	        	resultPrice.innerText = formattedValue4 + "원";
    	        	discount.value = formattedValue2;
    	        	pay.innerText = formattedValue3 + "원";
            	}else{
            		var formattedValue = parseFloat(cu).toLocaleString();
            		var formattedValue2 = parseFloat(discount.value - cu).toLocaleString();
    	        	cuArea.innerText = formattedValue + "원";
    	        	discount.value = formattedValue2;
    	        	price = price - cu;
    	        	var formattedValue3 = parseFloat(price).toLocaleString();
    	        	pay.innerText = formattedValue3 + "원";
    	        	last.innerText = formattedValue3 + "원";
    	        	var formattedValue4 = parseFloat(rePrice - cu).toLocaleString();
    	        	resultPrice.innerText = formattedValue4 + "원";
            	}
            	alert("쿠폰이 적용되었습니다.");
            	accTextArea.setAttribute('readonly', 'readonly');
                accTextArea.style.outline = 'none';
    	        // onblur 이벤트 핸들러를 제거합니다.
    	        accTextArea.removeAttribute('onblur');
    	        // onkeypress 이벤트 핸들러를 제거합니다.
    	        accTextArea.removeAttribute('onkeypress');
                useAllAccBtn.disabled = true;
            	var button = document.getElementById('coupon-result-btn');
                button.disabled = true;
                couSel.disabled = true;
        	}
        }
        
        function notCouponResult(){
        	alert("보유하신 쿠폰이 없습니다.");
        	var button = document.getElementById('coupon-result-btn');
        	var couSel = document.getElementById('coupon-selBox');
            button.disabled = true;
            couSel.disabled = true;
        }
        
</script>

</body>
</html>