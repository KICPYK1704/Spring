<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
</head>
<body>

<div class="row container">


	<!-- 여백 -->
   		 
	<div class="col s12 free-container8"></div>
			
			
	<!-- 샵, 디자이너 타이틀 및 이미지 레이아웃 -->
		
	<div class="col s7">
		<div class="row">
			<div class="col s6 txtleft txtsz16"><b>편안함을 추구하는 샵</b></div>
			<div class="col s6 txtright txtsz16"><b>이편한&nbsp; 디자이너</b></div>
			

			<!-- 여백 -->
   		 
			<div class="col s12 free-container3"></div>
			
			
			<!-- 이미지 -->
			<div class="col s12">
			<img class="responsive-img box" src="./image/a.png">
			</div>
			

			<!-- 여백 -->
   		 
			<div class="col s12 free-container3"></div>
			
			
			<!-- 이미지 선택란 -->
			<div class="col s12">
				<div class="row">
					<div class="col s2 right-free">
						<img class="responsive-img box" src="./image/a.png">
					</div>
					<div class="col s2 right-free">
						<img class="responsive-img box" src="./image/a.png">
					</div>
					<div class="col s2 right-free">
						<img class="responsive-img box" src="./image/a.png">
					</div>
					<div class="col s2 right-free">
						<img class="responsive-img box" src="./image/a.png">
					</div>
					<div class="col s4"></div>
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
				<b>따뜻해보이는 강아지 후드티</b>
			</div>
			

			<!-- 여백 -->
   		 
			<div class="col s12 free-container3"></div>

			
			<!-- 상세 정보 칸 -->
			
			<div class="col s11 left-free">
				<div class="row">
				
					<!-- 상세 정보 -->
					<div class="col s12 txtleft hi20">
						<span>따뜻해 보이는 긴팔 후드티이다. 강아지 귀가 달려 있는 후드티는 두툼한 옷감에 기모로 되어 있어 겨울을 나기에 좋을 듯하다. <br><br> 색상 : 빨강, 검정, 파랑, 노랑, 흰색<br> 사이즈 : S, M, L, XL, XXL<br> 방어력 + 100	</span>
					</div>
				
			
					<!-- 디자이너 메세지 상자 -->
					
					<div class="col s12 txtleft">
						<div class="box hi20"><br><br><br><br>따뜻해 보이는 긴팔 후드티 입고 겨울 나세요</div>
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
									29,000 won<br>
									<select name="color" class="right">
										<option value="red" selected="selected">빨강</option>
										<option value="black" >검정</option>
										<option value="blue" >파랑</option>
										<option value="yellow" >노랑</option>
										<option value="white" >하양</option>
									</select>
									<br>
									<select name="size" class="right">
										<option value="S" selected="selected">S</option>
										<option value="M" >M</option>
										<option value="L" >L</option>
										<option value="XL" >XL</option>
										<option value="XXL" >XXL</option>
									</select>
									<br>
									<input type="number" name="quantity" value="1" style="height: 30px; width: 40%;">
								</div>
								<div class="col s12">
								<hr>
								</div>
							</div>
						</div>
					</div>
					<!-- 결제 및 장바구니 버튼 -->
					<div class="col s12">
						<a class="btn bt_BG">BUY IT NOW</a><br><br>
						<a class="btn bt_BW">BUY IT NOW</a>
					</div>
				</div>
			</div>
			
			
			<!-- 여백 -->
			<div class="col s1"></div>
			
		</div>
	</div>
</div>
</body>
</html>