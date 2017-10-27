<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
  });
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
				<tr height="150px">
					<td width="200px"><i class="large material-icons">camera_alt</i></td>
					<td><a href="#!">[CS1930]취향저격 1+1아이템ver.베이직 카라 셔츠+블랑 니트 베스트 ★300개 한정수량★</a><br>[옵션: 02블랙/Free 사이즈/05화이트/L 사이즈]</td>
					<td>25,800원</td>
					<td>1</td>
					<td>25,800원</td>
				</tr>
				<tr height="70px" style="">
					<td colspan="5" style="text-align: right;">상품구매금액 25,800 + 배송비 2,500 = 합계 : 28,300원&nbsp;&nbsp;&nbsp;&nbsp;</td>
				</tr>
			</table>
			<div class="card-panel valign-wrapper pink lighten-5" style="width: 100%; height: 50px; color: red"><i class="material-icons" style="color: red">info_outline</i>&nbsp;&nbsp;상품의 옵션 및 수량 변경은 상품상세 또는 장바구니에서 가능합니다.</div>
			<div style="width: 100%; text-align: right; margin-top: 5px"><button class="waves-effect waves-light btn grey"><i class="material-icons left">shopping_cart</i>&nbsp;&nbsp;&nbsp;장바구니 <i class="material-icons right">chevron_right</i></button></div>
			<br><br>
			<div class="divider"></div>
			<br><br>
			<blockquote><b>&nbsp;&nbsp;&nbsp;&nbsp;주문자 정보</b></blockquote><p/>
			<form action="orderprocess" name="frm" method="post">
			<table class="bordered">
				<tr>
					<td style="width: 250px; text-align: center">주문하시는 분</td>
					<td><input type="text" name="order_name" value="이상명" readonly="readonly" style="width: 300px"></td>
				</tr>
				<tr>
					<td style="height: 200px"><div style="width: 100%; text-align: center">주소</div></td>
					<td>
						<input type="text" name="postnumber"value="110-801" readonly="readonly" style="width: 200px">&nbsp;&nbsp;<button class="waves-effect waves-light btn grey">검색</button><br>
						<input type="text" name="address1" value="서울특별시 종로구 계동" readonly="readonly" style="width: 500px">&nbsp;&nbsp;기본 주소<br>
						<input type="text" name="address2" value="136번지 번영주택 201호" readonly="readonly" style="width: 500px">&nbsp;&nbsp;상세 주소						
					</td>
				</tr>
				<tr>
					<td style="text-align: center">전화번호</td>
					<td>
						<div class="row valign-wrapper" style="height: 100%">
							<input type="text" name="tel1" value="010" readonly="readonly" style="width: 70px; text-align: center; margin-top: 20px">
							&nbsp;&nbsp;<b>-</b>&nbsp;&nbsp;
							<input type="text" name="tel2" value="7359" readonly="readonly" style="width: 100px; text-align: center; margin-top: 20px">
							&nbsp;&nbsp;<b>-</b>&nbsp;&nbsp;
							<input type="text" name="tel3" value="7369" readonly="readonly" style="width: 100px; text-align: center; margin-top: 20px">
						</div>
					</td>
				</tr>
				<tr>
					<td><div style="width: 100%;text-align: center">이메일</div></td>
					<td>
						<input type="text" name="email_id" value="lsmy7369" readonly="readonly" style="width: 150px">&nbsp;@&nbsp;
						<input type="text" name="email_mail" value="naver.com" readonly="readonly" style="width: 150px">
					</td>
				</tr>
			</table>
			<div style="width: 100%; text-align: right; margin-top: 5px"><button class="waves-effect waves-light btn grey"><i class="material-icons left">person</i>&nbsp;&nbsp;&nbsp;수정 <i class="material-icons right">chevron_right</i></button></div>
			<br><br>
			<blockquote><b>&nbsp;&nbsp;&nbsp;&nbsp;배송 정보</b></blockquote><p/>
			<table class="bordered">
				<tr>
					<td style="text-align: center">배송지 선택</td>
					<td>
						<input class="with-gap" type="radio" name="selectaddr" id="selectsameaddr">
						<label for="selectsameaddr">주문자 정보와 동일</label>&nbsp;&nbsp;
						<input class="with-gap" type="radio" name="selectaddr" id="selectnewaddr">
						<label for="selectnewaddr">새로운 배송지 입력</label>
					</td>
				</tr>
				<tr>
					<td style="width: 250px; text-align: center">받는 분</td>
					<td><input type="text" name="order_name" value="이상명" style="width: 300px"></td>
				</tr>
				<tr>
					<td style="height: 200px"><div style="width: 100%; text-align: center">주소</div></td>
					<td>
						<input type="text" name="postnumber"value="110-801" readonly="readonly" style="width: 200px">&nbsp;&nbsp;<button class="waves-effect waves-light btn grey">검색</button><br>
						<input type="text" name="address1" value="서울특별시 종로구 계동" style="width: 500px" id="addr1">
						<label for="addr1">기본 주소</label><br>
						<input type="text" name="address2" value="136번지 번영주택 201호" style="width: 500px" id="addr2">						
						<label for="addr1">상세 주소</label>
					</td>
				</tr>
				<tr>
					<td style="text-align: center">전화번호</td>
					<td>
						<div class="row valign-wrapper" style="height: 100%">
							<div class="col s1 input-field center-align"  style="text-align: center; margin-top: 20px">
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
								<input type="text" name="tel2" value="7359" style="width: 100px; text-align: center; margin-top: 20px">
								&nbsp;&nbsp;<b>-</b>&nbsp;&nbsp;
								<input type="text" name="tel3" value="7369" style="width: 100px; text-align: center; margin-top: 20px">
								
							</div>
						</div>
					</td>
				</tr>
				<tr>
					<td><div style="text-align: center">이메일</div></td>
					<td>
						<div class="row valign-wrapper" style="height: 100%">
							<div class="col s2 input-field center-align"  style="text-align: center; margin-top: 20px">
								<select name="emailmethod">
									<option value="write" onclick="javascript:writeemail();">직접 입력</option>
									<option value="naver.com" onclick="javascript:writeemail();">네이버</option>
									<option value="daum.net" onclick="javascript:writeemail();">다음</option>
									<option value="yahoo.co.kr" onclick="javascript:writeemail();">야후</option>
								</select>
								<label>이메일 선택</label>
							</div>
							<div class="col s10">
								&nbsp;&nbsp;&nbsp;&nbsp;
								<input type="text" name="email_id" value="lsmy7369" style="width: 150px; margin-top: 20px">&nbsp;@&nbsp;
								<input type="text" name="email_mail" value="naver.com" style="width: 150px; margin-top: 20px">
							</div>
						</div>
					</td>
				</tr>
			</table>
			</form>
			<br><br>
			<blockquote><b>&nbsp;&nbsp;&nbsp;&nbsp;결제 예정 금액</b></blockquote><p/>
			<br>
			<div class="divider"></div>
			<br><br>
			<div style="width: 80%; margin-left: 87.62px">
				<div class="row valign-wrapper" style="height: 150px">
					<div class="col s2" style="text-align: center; font-size:x-large;">
						<b>상품금액</b><p>
						25,800원
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
						28,300원
					</div>
				</div>
			</div>
			
			<div class="divider"></div>
			<br><br>
			<div style="text-align: center; margin-right: 30px">
				<button class="waves-effect waves-light btn grey"><i class="medium material-icons">home</i></button>&nbsp;&nbsp;
				<button class="waves-effect waves-light btn grey"><i class="medium material-icons">shopping_cart</i></button>&nbsp;&nbsp;
				<button class="waves-effect waves-light btn light-blue darken-4" style="width: 200px" onclick="javascript:confirm();">결제하기 <i class="material-icons right">send</i></button>
			</div>
		</div>
	</div>
</body>
</html>