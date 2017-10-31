<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/css/materialize.min.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/js/materialize.min.js"></script>
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
</head>
<body>
<%-- <%@include file="../../../top.jsp"%> --%>
<!-- <div id="top_block"> -->
	<div class="row">
		<div class="col s8 offset-s2">
			<!-- include top-->
			<br><br><br>
			<div style="text-align: center"><i class="material-icons" style="font-size: 300px; margin-right: 50px">shopping_basket</i></div>
			<div style="text-align: center; margin-right: 50px"><h2>결제 완료</h2></div>
			<div style="text-align: center">
				<ul class="collection">
					<li>
						결제가 성공적으로 완료되었습니다. 저희 쇼핑몰을 이용해 주셔서 대단히 감사합니다.
					</li>
					<li>
						상세 배송 상태는 이메일 lsmy7369@naver.com<%-- ${email} --%>로 확인하실 수 있습니다.
					</li>
					<li>
						결제 완료된 상품내역은 아래에서 확인하시기 바랍니다.
					</li>
				</ul>
			</div>
			<div class="row">
				<div class="col s8 offset-s2">
					<div class="row" style="height: 250px;background-color: gray;">
						<div class="col s3">
							<div style="margin-left: 5px;margin-top: 20px; font-size: 17px">				
								<i class="material-icons left" style="font-size: 25px">new_releases</i><b>주문 요약 정보</b>
							</div>
						</div>
						<div class="col s9">
							<div style="height: 230px; margin-top: 10px; margin-bottom: 10px; background-color: white;">
								<div class="row">
									<div class="col s3" style="font-size: 13px; margin-top: 12px; margin-left: 10px">
										<b>결제 금액</b><br>
										<b>상품 금액</b><br>
										<b>배송비</b><br>
										<b>할인 금액</b>							
									</div>
									<div class="col s8" style="font-size: 13px; margin-top: 12px">
										<%-- ${obean.order_pay} --%>28,300 <b>원</b>	<br>					
										<%-- ${pdto.prod_price * pdto.order_quantity } --%>25,800 <b>원</b>	<br>	
										<%-- <c:if test="${pdto.prod_price * pdto.order_quantity > 50000 }">
										250																
										</c:if> --%>					
										2500 <b>원</b>	<br>
										0 <b>원</b>						
									</div>
								</div>
								<div class="divider" style="margin-left: 20px; margin-right: 20px"></div>
								<div class="row">
									<div class="col s3" style="font-size: 13px; margin-top: 12px; margin-left: 10px">
										<b>주문 번호</b><br>
										<b>주문자명</b><br>
										<b>주문 일자</b><br>
										<b>주문 금액</b>							
									</div>
									<div class="col s8" style="font-size: 13px; margin-top: 12px">
										<%-- ${obean.order_no} --%>1<br>						
										<%-- ${obean.order_name} --%> 김수익 <b>님</b>	<br>						
										<%-- ${obean.order_regdate } --%>2017-10-31<br>						
										<b><%-- ${obean.order_pay } --%>28,300 원</b>						
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<br><br>
			<blockquote><b>&nbsp;&nbsp;&nbsp;&nbsp;결제 완료 내역</b></blockquote>
			<p/><br>
			<table class="bordered">
				<tr>
					<th>주문 번호</th><th>상품명</th><th>옵션</th><th>판매가</th><th>수량</th><th>소계</th>
				</tr>
				<!-- 주문내역 반복문 -->
				<tr>
					<td>${obean.order_no }</td>
					<td><a href="#!">${pdto.prod_name }</a></td>
					<td>${pdto.stock_color } / ${pdto.stock_size }</td>
					<td>${pdto.prod_price }원</td>
					<td>${pdto.order_quantity }</td>
					<td>${pdto.prod_price * pdto.order_quantity }원</td>
				</tr>
				<tr> 
					<td colspan="6" style="text-align: right">
						상품구매금액 ${pdto.prod_price * pdto.order_quantity} + 배송비 2,500 = 합계 : <b style="font-size: ">${obean.order_pay}</b>원
					</td>
				</tr>
			</table>
			<br><br>
			<div style="text-align: center">
				<button class="waves-effect waves-light btn grey"><i class="medium material-icons left">home</i>홈페이지</button>&nbsp;&nbsp;
				<button class="waves-effect waves-light btn light-blue darken-4">계속 쇼핑하기 <i class="material-icons right">send</i></button>
			</div>
			
		</div>
	</div>
<!-- </div> -->
</body>
</html>