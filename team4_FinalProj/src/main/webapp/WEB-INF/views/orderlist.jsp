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
		$('ul.tabs').tabs();
	});
</script>
</head>
<body>

	<div class="row">
		<div class="col s8 offset-s2">
			<!-- include top-->
			<div class="divider"></div>
			<br>
			<br>
			<br>
			<h5>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;주문 조회</h5>
			<br> <br> <br>
			<ul class="tabs">
				<li class="tab col s3"><a class="active" href="#disp">주문 내역 조회(0)</a></li>
				<li class="tab col s3"><a href="#disp2">취소/반품/교환 조회(0)</a></li>
			</ul>
			<!-- 주문 내역 조회 눌렀을 때 밑에 나올 내용 -->
			<div id="disp">
				<br>
				<table style="border-style: solid; border-width: thick; border-color: silver;" height="100" width="100%">
					<tr>
						<td>
							<div class="valign-wrapper">
								&nbsp;&nbsp;&nbsp;&nbsp;
								<button class="waves-effect waves-light btn grey" style="font-size: x-small;">오늘</button>
								<button class="waves-effect waves-light btn grey" style="font-size: x-small;">1주일</button>
								<button class="waves-effect waves-light btn grey" style="font-size: x-small;">1개월</button>
								<button class="waves-effect waves-light btn grey" style="font-size: x-small;">3개월</button>
								<button class="waves-effect waves-light btn grey" style="font-size: x-small;">6개월</button>
								
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<input type="text" readonly="readonly" name="startdate" style="width: 100px; margin-top: 20px" value="2017-10-22">&nbsp;&nbsp;<button><i class="material-icons">date_range</i></button>
								&nbsp;&nbsp;&nbsp;~&nbsp;&nbsp;&nbsp;
								<input type="text" readonly="readonly" name="enddate" style="width: 100px; margin-top: 20px" value="2017-10-23">&nbsp;&nbsp;<button><i class="material-icons">date_range</i></button>
								&nbsp;&nbsp;&nbsp;&nbsp;<button id="btnOk" class="waves-effect waves-light btn grey"><i class="material-icons">search</i></button>
							</div>
						</td>
					</tr>
				</table>
				<br>

				<blockquote style="margin-left: 50px">
					<ul style="color: gray">
						<li>기본적으로 최근 3개월간의 자료가 조회되며, 기간 검색시 지난 주문내역을 조회하실 수 있습니다.</li>
						<li>주문번호를 클릭하시면 해당 주문에 대한 상세내역을 확인하실 수 있습니다.</li>
					</ul>
				</blockquote>
				<br><br>
				&nbsp;&nbsp;&nbsp;&nbsp;<p><b>주문 상품 정보</b></p>
				<div class="divider"></div>
				<table class="bordered">
					<tr><th style="text-align: center">주문일자<br>[주문번호]</th><th style="text-align: center">이미지</th><th style="text-align: center">상품정보</th><th style="text-align: center">수량</th><th style="text-align: center">상품구매금액</th><th style="text-align: center">처리상태</th><th style="text-align: center">취소/교환/반품</th></tr>
					<tr>
						<td height="150" colspan="7" width="100%">
							<div class=" valign-wrapper" style="text-align: center">
								<table width="100%" height="100%">
									<tr><td style="text-align: center"><b>주문 내역이 없습니다.</b></td></tr>
								</table>
								
							</div>
						</td>
					</tr>
				</table>
				
				<div style="text-align: center">
					<ul class="pagination">
					    <li class="disabled"><a href="#!"><i class="material-icons">chevron_left</i></a></li>
					    <li class="active"><a href="#!">1</a></li>
						<li class="waves-effect"><a href="#!"><i class="material-icons">chevron_right</i></a></li>
					</ul>
				</div>
			</div>

			<!-- 취소/반품/교환 내역 눌렀을 때 밑에 나올 내용 -->
			<div id="disp2">
				<br>
				<table style="border-style: solid; border-width: thick; border-color: silver;" height="100" width="100%">
					<tr>
						<td>
							<div class="valign-wrapper">
								&nbsp;&nbsp;&nbsp;&nbsp;
								<button class="waves-effect waves-light btn grey" style="font-size: x-small;">오늘</button>
								<button class="waves-effect waves-light btn grey" style="font-size: x-small;">1주일</button>
								<button class="waves-effect waves-light btn grey" style="font-size: x-small;">1개월</button>
								<button class="waves-effect waves-light btn grey" style="font-size: x-small;">3개월</button>
								<button class="waves-effect waves-light btn grey" style="font-size: x-small;">6개월</button>
								
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<input type="text" readonly="readonly" name="startdate" style="width: 100px; margin-top: 20px" value="2017-10-22">&nbsp;&nbsp;<button><i class="material-icons">date_range</i></button>
								&nbsp;&nbsp;&nbsp;~&nbsp;&nbsp;&nbsp;
								<input type="text" readonly="readonly" name="enddate" style="width: 100px; margin-top: 20px" value="2017-10-23">&nbsp;&nbsp;<button><i class="material-icons">date_range</i></button>
								&nbsp;&nbsp;&nbsp;&nbsp;<button id="btnOk" class="waves-effect waves-light btn grey"><i class="material-icons">search</i></button>
							</div>
						</td>
					</tr>
				</table>
				<br>

				<blockquote style="margin-left: 50px">
					<ul style="color: gray">
						<li>기본적으로 최근 3개월간의 자료가 조회되며, 기간 검색시 지난 주문내역을 조회하실 수 있습니다.</li>
						<li>주문번호를 클릭하시면 해당 주문에 대한 상세내역을 확인하실 수 있습니다.</li>
					</ul>
				</blockquote>
				<br><br>
				&nbsp;&nbsp;&nbsp;&nbsp;<p><b>취소/반품/교환 내역 정보</b></p>
				<div class="divider"></div>
				<table class="bordered">
					<tr><th style="text-align: center">주문일자<br>[주문번호]</th><th style="text-align: center">상품정보</th><th style="text-align: center">수량</th><th style="text-align: center">상품구매금액</th><th style="text-align: center">처리상태</th></tr>
					<tr>
						<td height="150" colspan="7" width="100%">
							<div class=" valign-wrapper" style="text-align: center">
								<table width="100%" height="100%">
									<tr><td style="text-align: center"><b>취소/반품/교환 내역이 없습니다.</b></td></tr>
								</table>
								
							</div>
						</td>
					</tr>
				</table>
				
				<div style="text-align: center">
					<ul class="pagination">
					    <li class="disabled"><a href="#!"><i class="material-icons">chevron_left</i></a></li>
					    <li class="active"><a href="#!">1</a></li>
						<li class="waves-effect"><a href="#!"><i class="material-icons">chevron_right</i></a></li>
					</ul>
				</div>
			</div>
			<!-- include bottom-->
		</div>
	</div>
</body>
</html>