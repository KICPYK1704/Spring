<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/js/materialize.min.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/css/materialize.min.css">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<script type="text/javascript">
	$(document).ready(function() {
		$('.slider').slider();
	});
	
</script>
<title>Designer Shop Main</title>
</head>
<body>
	<div class="container" style="height: 700px; margin-top: 50px;">
		<div class="row z-depth-4">
			<div class="col s3 blue lighten-5" style="height:440px;">
				<div class="col s12" style="margin-top :20px;">
					<img src="./resources/ex.jpg" class="col s3">
					<div class="col s7 flow-text">홍길동</div>
					<div class="col s2">
						<i class="material-icons flow-text small">favorite</i>
					</div>
					<div class="col s12  blue lighten-4 " style="margin-top :20px">
						<textarea class="materialize-textarea" style="margin:0px; padding:0px">디자이너 소개란입니다.</textarea>
					</div>
				</div>
				<div class="col s12" style="margin-top :20px;">
					<input type="text" name="" placeholder="상품명 입력" class="col s10">
					<div class="col s2">
						<i class="material-icons flow-text small">search</i>
					</div>
					<div class="col s12">
						<ul>
							<li><a href="#">상의</a></li>
							<li><a href="#">하의</a></li>
							<li><a href="#">신발</a></li>
							<li><a href="#">잡화</a></li>
							<li><a href="#">악세사리</a></li>
						</ul>
						<ul>
							<li><a href="#">방명록</a></li>
							<li><a href="#">이벤트</a></li>
						</ul>
					</div>
				</div>
			</div>
			<div class="col s9">
				<div class="slider">
					<ul class="slides">
						<li>
							<img src="http://i.huffpost.com/gen/5214272/thumbs/o-TWITTER-570.jpg?7">
							<div class="caption center-align">
								<h3>고양이 1</h3>
								<h5 class="light grey-text text-lighten-3">Here's our small slogan.</h5>
							</div>
						</li>
						<li>
							<img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRTU-Oe9Fv_LYq_2v9cHtjBYQrOqAQEwr1GBdL78ygCmseGTd4Q">
							<div class="caption center-align">
								<h3>고양이2</h3>
								<h5 class="light grey-text text-lighten-3">Here's our small slogan.</h5>
							</div>
						</li>
						<li>
							<img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQv3ZCd4qxXoL2vqbQ-nsBOiovKHXFVOiD3GMpyHhFzmOZbBfZw7A">
							<div class="caption center-align">
								<h3>고양이3</h3>
								<h5 class="light grey-text text-lighten-3">Here's our small slogan.</h5>
							</div>
						</li>
						<li>
							<img src="http://res.heraldm.com/content/image/2015/04/23/20150423000189_0.jpg">
							<div class="caption center-align">
								<h3>고양이4</h3>
								<h5 class="light grey-text text-lighten-3">Here's our small slogan.</h5>
							</div>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</body>
</html>