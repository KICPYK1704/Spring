<%@page import="com.team4.model.member.MemberDto"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.team4.model.order.PreOrderDto"%>
<%@page import="com.team4.model.order.OrderDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%int sum = 0; %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/css/materialize.min.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/js/materialize.min.js"></script>
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<script type="text/javascript">
$(document).ready(function() {
	$('select').material_select();
	$('#frm').change(function(){
		alert("aa");
	})
	$('input[name=selectaddr]').change(function(){
		if($(this).val() == 'same'){
			$("#oname").val($("#order_name").val());
			$("#oaddr").val($("#order_addr").val());
			$("#otel").val($("#order_tel").val());
		} else if($(this).val() == 'new'){
			$("#oname").val("");
			$("#oaddr").val("");
			$("#otel").val("");
		}
	})
});

function confirm(){
	frm.action="orderprocess";
	frm.method="post";
	frm.submit();
}

function getMemInfo(){
	alert(aa);
}

function newAddr(){
	alert($(this).val())
	$("#oname").empty();
	$("#oaddr").empty();
	$("#otel2").empty();
	$("#otel3").empty();
	$("#oid").empty();
	$("#omail").empty();
}


</script>
</head>
<body>
	<div class="row">
		<div class="col s8 offset-s2">
			<!-- include top-->
			<div class="divider"></div>
			<br><br><br>
			<h5>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;주문서 작성</h5>
			<br> <br> <br>
			<blockquote><b>&nbsp;&nbsp;&nbsp;&nbsp;주문 상품 정보</b></blockquote>
			<p/><br>
			<table class="bordered">
				<tr><th>상품 이미지</th><th>상품 정보</th><th>판매가</th><th>수량</th><th>합계</th></tr>
				<!-- 반복문 -->
				<c:set var="sss" value="0" />
				<c:choose>
					<c:when test="${flag == 'directbuy'}">
					<c:set var="p" value="${pdto}"/>
						<tr>
							<td><img src="resources/img/${p.pic_url}" width="200px"></td>
							<td><a href="">${p.prod_name}</a><br>${p.stock_color} / ${p.stock_size}</td>
							<td>${p.prod_price}</td>
							<td>${p.order_quantity}</td>
							<!-- <td>${quantity}</td> -->
							<!-- request.getParameter("quantity") : 상품 상세보기 창에서 수량 넘겨줌(name = quantity 으로) -->
							<td>${p.prod_price * p.order_quantity}</td>
							<!-- int 처리하기 -->
						</tr>	
						<tr height="70px" style="">
							<td colspan="5" style="text-align: right;">상품구매금액 ${p.prod_price * p.order_quantity} + 배송비 2,500 = 합계 : ${(p.prod_price * p.order_quantity) + 2500}원&nbsp;&nbsp;&nbsp;&nbsp;</td>
						</tr>		
					</c:when>
					<c:when test="${flag == 'cartbuy' }">
						<c:forEach var="p" items="${plist}">
							<tr>
								<td><img src="resources/img/${p.pic_url}"></td>
								<td><a href="">${p.prod_name}</a><br>${p.stock_color} / ${p.stock_size}</td>
								<td>${p.prod_price}</td>
								<td>${p.order_quantity}</td>
								<!-- <td>${quantity}</td> -->
								<td>${p.prod_price * p.order_quantity}</td>
								<!-- int 처리하기 -->
							</tr>
							<c:set var="sss" value="${sss + (p.prod_price * p.order_quantity)}" />
						</c:forEach>					
					<%
						List<PreOrderDto> list = (List<PreOrderDto>)request.getAttribute("plist");
						sum = 0;
						for(PreOrderDto p : list){
							sum += p.getProd_price() * p.getOrder_quantity();
						}
					%>
					<tr height="70px" style="">
						<td colspan="5" style="text-align: right;">상품구매금액 <%= sum %> + 배송비 2500 = 합계 : <%= (sum + 2500) %>원&nbsp;&nbsp;&nbsp;&nbsp;</td>
					</tr>
					</c:when>
				</c:choose>
				<!-- <tr height="150px">
					<td width="200px"><i class="large material-icons">camera_alt</i></td>
					<td><a href="#!">[CS1930]취향저격 1+1아이템ver.베이직 카라 셔츠+블랑 니트 베스트 ★300개 한정수량★</a><br>[옵션: 02블랙/Free 사이즈/05화이트/L 사이즈]</td>
					<td>25,800원</td>
					<td>1</td>
					<td>25,800원</td>
				</tr> -->
			</table>
			<div class="card-panel valign-wrapper pink lighten-5" style="width: 100%; height: 50px; color: red"><i class="material-icons" style="color: red">info_outline</i>&nbsp;&nbsp;상품의 옵션 및 수량 변경은 상품상세 또는 장바구니에서 가능합니다.</div>
			<div style="width: 100%; text-align: right; margin-top: 5px"><button class="waves-effect waves-light btn grey"><i class="material-icons left">shopping_cart</i>&nbsp;&nbsp;&nbsp;장바구니 <i class="material-icons right">chevron_right</i></button></div>
			<br><br>
			<div class="divider"></div>
			<br><br>
			<blockquote><b>&nbsp;&nbsp;&nbsp;&nbsp;주문자 정보${sss}</b></blockquote><p/>
			<table class="bordered">
				<tr>
					<td style="width: 250px; text-align: center">주문하시는 분</td>
					<td><input type="text" name="order_name" id="order_name" value="${meminfo.mem_name}" readonly="readonly" style="width: 300px"></td>
				</tr>
					<% 
					MemberDto dto = (MemberDto)request.getAttribute("meminfo");	
					//String str = dto.getorder_
					String tel = dto.getMem_tel();
					String[] tels = tel.split("-");
					String email = dto.getMem_email();
					String[] emails = email.split("@");
					%>
				<tr>
					<td style="height: 200px"><div style="width: 100%; text-align: center">주소</div></td>
					<td>
						<input type="text" name="order_addr" id="order_addr" value="${meminfo.mem_address }" readonly="readonly" style="width: 500px"><label for="addr1">기본 주소</label>
						
						<!-- <input type="text" name="postnumber"value="110-801" readonly="readonly" style="width: 200px">&nbsp;&nbsp;<button class="waves-effect waves-light btn grey">검색</button><br>
						<input type="text" name="address1" value="서울특별시 종로구 계동" readonly="readonly" style="width: 500px">&nbsp;&nbsp;기본 주소<br>
						<input type="text" name="address2" value="136번지 번영주택 201호" readonly="readonly" style="width: 500px">&nbsp;&nbsp;상세 주소 -->						
					</td>
				</tr>
				<tr>
					<td style="text-align: center">전화번호</td>
					<td>
						<input type="text" name="order_tel" id="order_tel" value="${meminfo.mem_tel}">
						<%-- <div class="row valign-wrapper" style="height: 100%">
							<input type="text" name="tel1" value="<%=tels[0] %>" readonly="readonly" style="width: 70px; text-align: center; margin-top: 20px">
							&nbsp;&nbsp;<b>-</b>&nbsp;&nbsp;
							<input type="text" name="tel2" value="<%=tels[1] %>" readonly="readonly" style="width: 100px; text-align: center; margin-top: 20px">
							&nbsp;&nbsp;<b>-</b>&nbsp;&nbsp;
							<input type="text" name="tel3" value="<%=tels[2] %>" readonly="readonly" style="width: 100px; text-align: center; margin-top: 20px">
						</div> --%>
					</td>
				</tr>
				<tr>
					<td><div style="width: 100%;text-align: center">이메일</div></td>
					<td>
						<input type="text" name="email_id" value="<%=emails[0] %>" readonly="readonly" style="width: 150px">&nbsp;@&nbsp;
						<input type="text" name="email_mail" value="<%=emails[1] %>" readonly="readonly" style="width: 150px">
					</td>
				</tr>
			</table>
			<div style="width: 100%; text-align: right; margin-top: 5px"><button class="waves-effect waves-light btn grey" onclick="location.href='membermypage'"><i class="material-icons left">person</i>&nbsp;회원정보 수정 <i class="material-icons right">chevron_right</i></button></div>
			<br><br>
			<blockquote><b>&nbsp;&nbsp;&nbsp;&nbsp;배송 정보</b></blockquote><p/>
			<form name="frm">
			<input type="hidden" name="order_memid" value="${meminfo.mem_id}">
			<input type="hidden" name="order_stockno" value="${pdto.stock_no}">
			<input type="hidden" name="order_quantity" value="${pdto.order_quantity}">
			<table class="bordered">
				<tr>
					<td style="text-align: center">배송지 선택</td>
					<td>
						<input id="same" class="with-gap" type="radio" name="selectaddr" value="same">
						<label for="same">주문자 정보와 동일</label>&nbsp;&nbsp;
						<input id="new" class="with-gap" type="radio" name="selectaddr" value="new">
						<label for="new">새로운 배송지 입력</label>
					</td>
				</tr>
				<tr>
					<td style="width: 250px; text-align: center">받는 분</td>
					<td><input type="text" name="order_name" id="oname" style="width: 300px"></td>
<%-- 					<td><input type="text" name="order_name" value="${meminfo.mem_id }" style="width: 300px"></td> --%>
				</tr>
				<tr>
					<td style="height: 200px"><div style="width: 100%; text-align: center">주소</div></td>
					<td>
						<input type="text" name="order_addr" id="oaddr" style="width: 500px"><label for="addr1">기본 주소</label>
<%-- 						<input type="text" name="address" value="${meminfo.mem_address }" readonly="readonly" style="width: 500px"><label for="addr1">기본 주소</label> --%>
						<!-- <input type="text" name="postnumber"value="110-801" readonly="readonly" style="width: 200px">&nbsp;&nbsp;<button class="waves-effect waves-light btn grey">검색</button><br>
						<input type="text" name="address1" value="서울특별시 종로구 계동" style="width: 500px" id="addr1">
						<label for="addr1">기본 주소</label><br>
						<input type="text" name="address2" value="136번지 번영주택 201호" style="width: 500px" id="addr2">						
						<label for="addr1">상세 주소</label> -->
					</td>
				</tr>
				<tr>
					<td style="text-align: center">전화번호</td>
					<td>
						<div class="row valign-wrapper" style="height: 100%">
							<input type="text" name="order_tel" id="otel">
							<!-- <div class="col s1 input-field center-align"  style="text-align: center; margin-top: 20px">
								<select name="tel1">
									<option value="02">02</option>
									<option value="031">031</option>
									<option value="010" selected="selected">010</option>
									<option value="011">011</option>
								</select>
								<label>지역번호</label>
							</div>
							<div class="col s11">
								&nbsp;&nbsp;<b>-</b>&nbsp;&nbsp;
								<input type="text" name="tel2" value="" id="otel2" style="width: 100px; text-align: center; margin-top: 20px">
								&nbsp;&nbsp;<b>-</b>&nbsp;&nbsp;
								<input type="text" name="tel3" value="7369" id="otel3" style="width: 100px; text-align: center; margin-top: 20px">
								<input type="hidden" name="order_tel">
							</div> -->
						</div>
					</td>
				</tr>
				<!-- <tr>
					<td><div style="text-align: center">이메일</div></td>
					<td>
						<div class="row valign-wrapper" style="height: 100%">
							<div class="col s2 input-field center-align"  style="text-align: center; margin-top: 20px">
								<select name="emailmethod">
									<option value="write" onclick="javascript:writeemail('w');">직접 입력</option>
									<option value="naver.com" onclick="javascript:writeemail('n');">네이버</option>
									<option value="daum.net" onclick="javascript:writeemail('d');">다음</option>
									<option value="yahoo.co.kr" onclick="javascript:writeemail('y');">야후</option>
								</select>
								<label>이메일 선택</label>
							</div>
							<div class="col s10">
								&nbsp;&nbsp;&nbsp;&nbsp;
								<input type="text" name="email_id2" value="lsmy7369" id="oid" style="width: 150px; margin-top: 20px">&nbsp;@&nbsp;
								<input type="text" name="email_mail2" value="naver.com" id="omail" style="width: 150px; margin-top: 20px">
							</div>
						</div>
					</td>
				</tr> -->
			</table>
			<br><br>
			<blockquote><b>&nbsp;&nbsp;&nbsp;&nbsp;결제 예정 금액</b></blockquote><p/>
			<br>
			<div class="divider"></div>
			<br><br>
			<div style="width: 80%; margin-left: 87.62px">
			
				<c:set var="flag" value="${flag}" />
				<div class="row valign-wrapper" style="height: 150px">
					<div class="col s2" style="text-align: center; font-size:x-large;">
						<b>상품금액</b><p>
						<c:if test="${flag eq 'cartbuy'}">
							<%=sum %>원
						</c:if>
						<c:if test="${flag eq 'directbuy'}">
							${p.prod_price * p.order_quantity}원
						</c:if>
					</div>
					<div class="col s1" style="text-align: center">
						<i class="material-icons" style="font-size: 35px">add_circle</i>
					</div>
					<div class="col s2" style="text-align: center; font-size:x-large;">
						<b>배송비</b><p>
						2,500원
					</div>
					<div class="col s1" style="text-align: center">
						<i class="material-icons" style="font-size: 35px">remove_circle</i>
					</div>
					<div class="col s2" style="text-align: center; font-size:x-large;">
						<b>할인금액</b><p>
						0원
					</div>
					<div class="col s1" style="text-align: center">
						<i class="medium material-icons">drag_handle</i>
					</div>
					<div class="col s3" style="text-align: center; font-size:x-large;">
						<b>총 결제 금액</b><p>
						<c:if test="${flag eq 'cartbuy'}">
							<%=sum + 2500 %>원
						</c:if>
						<c:if test="${flag eq 'directbuy'}">
							${(p.prod_price * p.order_quantity) + 2500}원
						</c:if>
					</div>
				</div>
			</div>
				<c:if test="${flag eq 'cartbuy'}">
					<input type="hidden" name="order_pay" value="<%=sum + 2500 %>">
				</c:if>
				<c:if test="${flag eq 'directbuy'}">
					<input type="hidden" name="order_pay" value="${(p.prod_price * p.order_quantity) + 2500}">
				</c:if>
			<div class="divider"></div>
			<br><br>
			<div style="text-align: center; margin-right: 30px">
				<button class="waves-effect waves-light btn grey"><i class="medium material-icons">home</i></button>&nbsp;&nbsp;
				<button class="waves-effect waves-light btn grey"><i class="medium material-icons">shopping_cart</i></button>&nbsp;&nbsp;
				<button class="waves-effect waves-light btn light-blue darken-4" style="width: 200px" onclick="javascript:confirm();">결제하기 <i class="material-icons right">send</i></button>
			</div>
			</form>
		</div>
	</div>
</body>
</html>