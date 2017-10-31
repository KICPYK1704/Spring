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
<script type="text/javascript">
	$(document).ready(function() {
		$('.slider').slider();
		$('#disp').css('height', $('body').css('height'));
	});
	function showVisitor(des_id){
		//$('#disp').attr("class","col s9");
		//$('#disp').load('board_list?des_id=' + des_id);
		$('#disp').html("<iframe style='border: 0px;'></iframe>");
		$('iframe').attr("src", 'board_list?des_id=' + des_id);
		$('iframe').css('height', $('#dispall').css('height'));
		$('iframe').css('width', $('#disp').css('width'));
	}
</script>
<title>Designer Shop Main</title>
</head>
<body>
<%@include file="../../../top.jsp"%>
<div id="top_block">
	<div class="container" style="margin-top: 20px;">
		<div class="row z-depth-4 valign-wrapper" id="dispall">
			<div class="col s3 blue-grey darken-4 white-text">
				<div class="row">
				<div class="col s12" style="margin-top :20px;">
					<img src="./resources/img/ex.jpg" class="circle col s3">
					<div class="col s7 flow-text">${param.des_id}</div>
					<div class="col s2">
						<i class="material-icons flow-text small">favorite</i>
					</div>
					<div class="col s12" style="margin-top :20px">
						<textarea disabled class="materialize-textarea white-text" style="margin:0px; padding:0px">디자이너 소개란입니다.</textarea>
					</div>
				</div>
				<div class="col s12" style="margin-top :20px;">
					<input type="text" name="" placeholder="상품명 입력" class="col s10">
					<div class="col s2">
						<i class="material-icons flow-text small">search</i>
					</div>
					<div class="col s12">
						<div class="row">
							<ul>
								<li><a href="#"><img src="./resources/img/shirt.png" class="col s6"></a></li>
								<li><a href="#"><img src="./resources/img/pants.png" class="col s6"></a></li>
							</ul>
						</div>
						<div class="row">
							<ul>
								<li><a href="#"><img src="./resources/img/shoes.png" class="col s6"></a></li>
								<li><a href="#"><img src="./resources/img/hat.png" class="col s6"></a></li>
							</ul>
						</div>
						<div class="row">
							<ul>
								<li><a href="#"><img src="./resources/img/necklace.png" class="col s6"></a></li>
								<li><a href="javascript:showVisitor('${param.des_id}')"><img src="./resources/img/visitor.png" class="col s6"></a></li>
							</ul>
						</div>
					</div>
				</div>
				</div>
			</div>
			<div id="disp" class="col s9 valign-wrapper" style="overflow: auto">
				<div class="slider">
					<ul class="slides">
						<li>
							<img src="./resources/img/event1.jpg">
							<div class="caption left-align orange-text">
								<h3>할로윈이벤트1</h3>
								<h5 class="light orange-text text-lighten-3">Spooky Halloween!</h5>
							</div>
						</li>
						<li>
							<img src="./resources/img/event2.jpg">
							<div class="caption center-align yellow-text">
								<h3>할로윈이벤트2</h3>
								<h5 class="light orange-text text-lighten-3">지.켜.보.고.있.다.</h5>
							</div>
						</li>
						<li>
							<img src="./resources/img/event3.png">
							<div class="caption right-align black-text">
								<h3>이벤트</h3>
								<h5 class="light black-text text-lighten-3">정기 이벤트!</h5>
							</div>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</div>
</body>
</html>