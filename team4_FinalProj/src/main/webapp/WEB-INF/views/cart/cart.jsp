<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/js/materialize.min.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/css/materialize.min.css">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
	
<style type="text/css">

.count {
	display: inline-block;
	color: #fff;
	position: relative;
	overflow: hidden;
	z-index: 1;
	width: 30px;
	height: 30px;
	line-height: 30px;
	padding: 0;
	background-color: gray;
	border-radius: 50%;
	-webkit-transition: .3s;
	transition: .3s;
	cursor: pointer;
	font-size: 1.4rem;
	text-align: center;
}
.btn:hover {
	background-color: #455a64;
}
.bt_BG {
	display: inline-block;
	color: #fff;
	position: relative;
	overflow: hidden;
	z-index: 1;
	width: 220px;
	height: 45px;
	line-height: 45px;
	padding: 0;
	background-color: #455a64;
	border-radius: 3px;
	-webkit-transition: .3s;
	transition: .3s;
	cursor: pointer;
	font-size: 1.2rem;
	font-family: Comic Sans MS;
	text-align: center;
	border: solid #081a3f;
	border-width: thin;
}

.abc{
	text-align: center;
	background-color: #e3e2dd; 
	border: solid #d2d1cc;
	border-width: thin;
	font-size: 1.1rem;
	color: #5a5956;
}

.txtright{
	text-align: right;
}

.free-container8 {
      margin-top: 80px;
    }
    
.free-container4 {
      margin-top: 40px;
    }
    
.box{
	border: solid black;
	border-width: thin;
}

.cartsize{
	height: 120px;

}
</style>
</head>
<body>


	<div class="row">
	
		<!-- 여백 -->
   		 
		<div class="col s12 free-container8"></div>
		
		
		<!-- CART 타이틀 -->
		
		<div class="col s1"></div>
		<div class="col s10">
			<p />
			<b style="font-size: 35px;">CART</b>&nbsp;&nbsp;<a class="count">${count }</a>
			<hr>
			<p />
		</div>
		<div class="col s1"></div>
	</div>
	
	
	<!-- 내용 -->
	
	<div class="row">
		<div class="col s12">
			<div class="row container">
			
			
				<!-- 여백 -->
				
				<div class="col s12 free-container8"></div>

				
				<!-- 목록 머리 -->
				
				<div class="col s1 abc"><b>No</b></div>
				<div class="col s2 abc"><b>사진</b></div>
				<div class="col s2 abc"><b>제품명</b></div>
				<div class="col s1 abc"><b>디자이너</b></div>
				<div class="col s1 abc"><b>옵션</b></div>
				<div class="col s1 abc"><b>수량</b></div>
				<div class="col s1 abc"><b>가격</b></div>
				<div class="col s2 abc"><b>등록일</b></div>
				<div class="col s1 abc"><b>취소</b></div>
				
				
				<!-- 여백 -->
   		 
				<div class="col s12 free-container4"></div>
				
				
				<!-- 목록 상자 -->
				
				<div class="col s12 box">
				<c:forEach var="c" items="${list }">
				
				<div class="col s1 text-center cartsize">${c.cart_no }</div>
				<div class="col s2 text-center cartsize"><img class="responsive-img" src="resources/img/${c.pic_url }"></div>
				<div class="col s2 text-center cartsize">${c.prod_name }</div>
				<div class="col s1 text-center cartsize">${c.des_name }</div>
				<div class="col s1 text-center cartsize">${c.stock_color } ${c.stock_size }</div>
				<div class="col s1 text-center cartsize">${c.cart_quantity }</div>
				<div class="col s1 text-center cartsize">${c.prod_price }</div>
				<div class="col s2 text-center cartsize">${c.cart_regdate }</div>
				<div class="col s1 text-center cartsize abc"><a href="cartDelete?cart_no=${c.cart_no }"><b>취소</b></a></div>
				</c:forEach>
				</div>
				
				
				<!-- 여백 -->
   		 
				<div class="col s12 free-container4"></div>
				
				
				<!-- 주문 버튼 -->
				
				<div class="col s3 offset-s9 txtright">
					<a class="btn bt_BG">BUY IT NOW</a>
				</div>
			</div>
		</div>
	</div>
</body>
</html>