<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/js/materialize.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/css/materialize.min.css">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<title>회원 마이페이지</title>
</head>
<body>
<%@include file="../../../top.jsp"%>
<div id="top_block">
	<div class="container">
		<div class="row" style="padding-top: 2vh">
			<nav class="col s11 offset-s1 black">
				<div class="nav-wrapper">
					<a href="#" class="brand-logo center">My Page</a>
				</div>
			</nav>
		</div>
		<div class="row center-align"  style="padding-top: 6vh">
			<div class="col s3 offset-s1">
			<c:choose>
				<c:when test="${not empty sessionScope.login_mem}">
					<a href="membermypage" class="black-text">
						<img src="./resources/img/info.png" class="responsive-img">
						<h5>내 정보 보기/수정</h5>
					</a>
				</c:when>
				<c:when test="${not empty sessionScope.login_des}">
					<a href="designermypage" class="black-text">
						<img src="./resources/img/info.png" class="responsive-img">
						<h5>내 정보 보기/수정</h5>
					</a>
				</c:when>
			</c:choose>
			</div>
			<div class="col s3 offset-s1">
			<c:choose>
				<c:when test="${not empty sessionScope.login_mem}">
					<a href="" class="black-text">
						<img src="./resources/img/fan.png" class="responsive-img">
						<h5>팬 맺은 디자이너</h5>
					</a>
				</c:when>
				<c:when test="${not empty sessionScope.login_des}">
					<a href="" class="black-text">
						<img src="./resources/img/fan.png" class="responsive-img">
						<h5>팬 맺은 회원</h5>
					</a>
				</c:when>
			</c:choose>
			</div>
			<div class="col s3 offset-s1">
			<c:choose>
				<c:when test="${not empty sessionScope.login_mem}">
					<a href="orderlist" class="black-text">
						<img src="./resources/img/orderlist.png" class="responsive-img">
						<h5>주문 내역 확인</h5>
					</a>
				</c:when>
				<c:when test="${not empty sessionScope.login_des}">
					<a href="product_Mgt" class="black-text">
						<img src="./resources/img/prodMgt.png" class="responsive-img">
						<h5>상품 관리</h5>
					</a>
				</c:when>
			</c:choose>
			</div>
		</div>
	</div>
</div>
<script type="text/javascript" src="/finalproj/resources/js/channel.js"></script>
</body>
</html>