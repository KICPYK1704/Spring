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

.txtright{
	text-align: right;
}

.txtleft{
	text-align: left;
}

.txtsz14 {
	font-size: 14px;
}

.txtsz16 {
	font-size: 16px;
}

.txtsz18 {
	font-size: 18px;
}

.free-container8 {
      margin-top: 80px;
    }

.free-container3 {
      margin-top: 30px;
    }
    
.right-free {
      margin-right: 10px;
    }
    
.row .col.s11.left-free {
      margin-left: 10px;
    }

.box {
	border: solid black;
	border-width: thin;
}

.hi60 {
	height: 600px;
} 
 
.hi12 {
	height: 120px;
}  
 
.hi20 {
	height: 200px;
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
.bt_BW {
	display: inline-block;
	color: #081a3f;
	position: relative;
	overflow: hidden;
	z-index: 1;
	width: 220px;
	height: 45px;
	line-height: 45px;
	padding: 0;
	background-color: #fefeff;
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

select {
	height: 30px;
	font-size: 16px;
	padding: 0px;
	display: block;
	margin-top: 6px;
	border-color: #081a3f;
	width: 40%;
	
}

input {
	display: block;
	float: right;
	line-height: 20px;
	font-size: 16px;
	border-color: #081a3f;
}

.sel{
	line-height: 40px;
}

</style>
<script type="text/javascript">
$(document).ready(function(){
	$('.small').mouseenter(function(){
		$('#big').attr("src", $(this).attr("src"));
	});
	
});

function buy(){
	$('#flag').val("directbuy");
	$('form').attr("action", "orderprocess");
	$('form').submit();
}
 
function cart(){
	$('form').attr("action", "CartInsert");
	$('form').submit();
}
</script>
</head>
<body>
<%@include file="../../../top.jsp"%>
<div id="top_block">
<div class="row container">


	<!-- 여백 -->
   		 
	<div class="col s12 free-container8"></div>
			
			
	<!-- 샵, 디자이너 타이틀 및 이미지 레이아웃 -->
		
	<div class="col s7">
		<div class="row">
			<div class="col s6 txtleft txtsz16"><b>${dto.des_shoptitle }</b></div>
			<div class="col s6 txtright txtsz16"><b>${dto.des_name }&nbsp; 디자이너</b></div>
			

			<!-- 여백 -->
   		 
			<div class="col s12 free-container3"></div>
			
			
			<!-- 이미지 -->
			<div class="col s12">
			<img id="big" class="responsive-img box" src="resources/img/${Ilist[0].pic_url }">
			</div>
			

			<!-- 여백 -->
   		 
			<div class="col s12 free-container3"></div>
			
			
			<!-- 이미지 선택란 -->
			<div class="col s12">
				<div class="row">
					<c:forEach var="img" items="${Ilist }">
						<div class="col s2 right-free">
							<img class="responsive-img box small" src="resources/img/${img.pic_url }">
						</div>
					</c:forEach>
					
					<div class="col s2"></div>
				</div>
			</div>
		</div>
	</div>
		
		
	<!-- 여백 -->
   		 
	<div class="col s1"></div>
		
		
	<!-- 상세보기 및 주문 옵션 레이아웃 -->
		
	<div class="col s4">
		<div class="row">
		
			<!-- 제품 타이틀 -->
			
			<div class="col s12 txtleft txtsz18">
				<b>${dto.prod_name }</b>
			</div>
			

			<!-- 여백 -->
   		 
			<div class="col s12 free-container3"></div>

			
			<!-- 상세 정보 칸 -->
			
			<div class="col s11 left-free">
				<div class="row">
				
					<!-- 상세 정보 -->
					<div class="col s12 txtleft hi20">
						<span>${dto.prod_intro }</span>
					</div>
				
		
					<!-- 디자이너 메세지 상자 -->
					
					<div class="col s12 txtleft">
						<div class="box hi20">${dto.prod_Msg }</div>
						<p/>
						<hr>
					
					<!-- 주문 옵션 -->
						<div class="col s12 txtleft txtsz18 hi20">
							<div class="row">
								<div class="col s4 txtleft sel">
									PRICE <br>
									COLOR <br>
									SIZE <br>
									QUANTITY <br>
								</div>
								<div class="col s8 txtright sel">
									${dto.prod_price} won<br>
									<form action="" name="frm">
									<input type="hidden" name="prod_classf1" value="${prod_classf1}">
									<input type="hidden" name="prod_classf2" value="${prod_classf2}">
									<input type="hidden" name="prod_no" value="${dto.prod_no}">
									<select name="stock_no" class="right">
										<c:forEach var="cr" items="${Olist }" varStatus="status">
											<c:choose>
												<c:when test="${status.first }">
													<option value="${cr.stock_no}"  selected="selected">${cr.stock_color} ${cr.stock_size}</option>
												</c:when>
												<c:otherwise>
													<option value="${cr.stock_no}">${cr.stock_color} ${cr.stock_size}</option>
												</c:otherwise>										
											</c:choose>
										</c:forEach>
									</select>
									<br>
									<!-- 
									<select name="stock_size" class="right">
										<c:forEach var="sz" items="${Olist }" varStatus="status">
											<c:choose>
												<c:when test="${status.first }">
													<option value="${sz.stock_size}" selected="selected">${sz.stock_size}</option>
												</c:when>
												<c:otherwise>
													<option value="${sz.stock_size}">${sz.stock_size}</option>
												</c:otherwise>										
											</c:choose>
										</c:forEach>
									</select>
									 -->
									<br>
									<input type="number" name="quantity" value="1" style="height: 30px; width: 40%;">
									<input type="hidden" name="flag" value="" id="flag">
									</form>
								</div>
								<div class="col s12">
								<hr>
								</div>
							</div>
						</div>
					</div>
					<!-- 결제 및 장바구니 버튼 -->
					<div class="col s12">
						<a class="btn bt_BG" href="javascript:buy()">BUY IT NOW</a><br><br>
						<a class="btn bt_BW" href="javascript:cart()">ADD TO CART</a>
					</div>
				</div>
			</div>
			
			
			<!-- 여백 -->
			<div class="col s1"></div>
			
		</div>
	</div>
</div>
</div>
</body>
</html>