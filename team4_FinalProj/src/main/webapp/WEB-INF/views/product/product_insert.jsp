<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="sform" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script	src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/js/materialize.min.js"></script>
<link rel="stylesheet"	href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/css/materialize.min.css">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"	rel="stylesheet">
<script type="text/javascript">
	$(document).ready(function() {
		$('textarea#prod_intro, textarea#prod_Msg').characterCounter();
		$('select').material_select();
		$('.tooltipped').tooltip({delay: 50});
		$('#reset').click(function(){
			$('#insertform').reset();
		});
		$('#submit').click(function(){
			$('#insertform').submit();
		});
	});
</script>
<style type="text/css">

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
}

.no_margin {margin:0px;}
</style>
</head>
<body>
<%@include file="../../../top.jsp"%>
<div id="top_block">
<sform:form id="insertform" enctype="multipart/form-data" modelAttribute="productBean">
<div class="container">
	<nav>
    	<div class="nav-wrapper blue-grey darken-4">
    		<a href="#" class="brand-logo center">상품 입력</a>
			<ul class="right hide-on-med-and-down">
				<li>상품번호(자동생성):&nbsp;&nbsp;&nbsp;</li>
				<li>${prod_no}</li>
				<li>&nbsp;&nbsp;</li>
			</ul>
		</div>
	</nav>
	<input type="hidden" name="prod_no" value="${prod_no}">

	<div class="row">
	
	<!-- 여백 -->
	<div class="col s12 free-container3"></div>
			
	<div class="col s6 left-align flow-text">
		<b>샵 이름: </b>
		<b>${des_info.des_shoptitle}</b>
	</div>
	<div class="col s6 right-align flow-text">
		<b>디자이너 이름: </b>
		<b>${des_info.des_name}</b>
	</div>
	<input type="hidden" name="prod_designerid" value="${sessionScope.login_des}">
	
	<!-- 여백 -->
	<div class="col s12 free-container3"></div>
	
	<!-- 샵, 디자이너 타이틀 및 이미지 레이아웃 -->
	<div class="col s8">
		<div class="row">
			
			<!-- 이미지 -->
			<div class="col s4">
				<div class="card">
		        	<div class="card-image">
						<img class="" src="./resources/default200x200.png">
		        	</div>
		        	<div class="card-content">
			        	<div class="file-field input-field">
						    <div class="btn" style="padding-left:8px; padding-right:10px;">
							    <i class="material-icons">file_upload</i>
								<input type="file" name="files[0]">
								<sform:errors path="file" cssStyle="color:red" />
						    </div>
						    <div class="file-path-wrapper">
						    	<input class="file-path validate" type="text" placeholder="pic_url">
						    </div>
					    </div>
		        	</div>
	            </div>
			</div>				
			<div class="col s4">
				<div class="card">
		        	<div class="card-image">
						<img class="" src="./resources/default200x200.png">
		        	</div>
		        	<div class="card-content">
			        	<div class="file-field input-field">
						    <div class="btn" style="padding-left:8px; padding-right:10px;">
							    <i class="material-icons">file_upload</i>
								<input type="file" name="files[1]">
								<sform:errors path="file" cssStyle="color:red" />
						    </div>
						    <div class="file-path-wrapper">
						    	<input class="file-path validate" type="text" placeholder="pic_url">
						    </div>
					    </div>
		        	</div>
	            </div>
			</div>				
			<div class="col s4">
				<div class="card">
		        	<div class="card-image">
						<img class="" src="./resources/default200x200.png">
		        	</div>
		        	<div class="card-content">
			        	<div class="file-field input-field">
						    <div class="btn" style="padding-left:8px; padding-right:10px;">
							    <i class="material-icons">file_upload</i>
								<input type="file" name="files[2]">
								<sform:errors path="file" cssStyle="color:red" />
						    </div>
						    <div class="file-path-wrapper">
						    	<input class="file-path validate" type="text" placeholder="pic_url">
						    </div>
					    </div>
		        	</div>
	            </div>
			</div>				
			<div class="col s4">
				<div class="card">
		        	<div class="card-image">
						<img class="" src="./resources/default200x200.png">
		        	</div>
		        	<div class="card-content">
			        	<div class="file-field input-field">
						    <div class="btn" style="padding-left:8px; padding-right:10px;">
							    <i class="material-icons">file_upload</i>
								<input type="file" name="files[3]">
								<sform:errors path="file" cssStyle="color:red" />
						    </div>
						    <div class="file-path-wrapper">
						    	<input class="file-path validate" type="text" placeholder="pic_url">
						    </div>
					    </div>
		        	</div>
	            </div>
			</div>				
			<div class="col s4">
				<div class="card">
		        	<div class="card-image">
						<img class="" src="./resources/default200x200.png">
		        	</div>
		        	<div class="card-content">
			        	<div class="file-field input-field">
						    <div class="btn" style="padding-left:8px; padding-right:10px;">
							    <i class="material-icons">file_upload</i>
								<input type="file" name="files[4]">
								<sform:errors path="file" cssStyle="color:red" />
						    </div>
						    <div class="file-path-wrapper">
						    	<input class="file-path validate" type="text" placeholder="pic_url">
						    </div>
					    </div>
		        	</div>
	            </div>
			</div>				
		</div>
	</div>
		
	<!-- 상세보기 및 주문 옵션 레이아웃 -->
	<div class="col s4 z-depth-3">
		<!-- 여백 -->
		<div class="col s12 free-container3"></div>
		
		<div class="row" >
			<!-- 제품 타이틀 -->
			<div class="input-field col s12 no_margin">
				<i class="material-icons prefix">fiber_new</i>
	        	<input name="prod_name" id="prod_name" type="text" class="validate" placeholder="50자 이내">
	        	<label for="prod_name">상품명</label>
        	</div>
		</div>
		<!-- 상세 정보 칸 -->
		<div class="row">

			<!-- 상세 정보 -->
			<div class="input-field col s12 left-align">
				<textarea id="prod_intro" name="prod_intro" class="materialize-textarea" data-length="100"></textarea>
				<label for="prod_intro">제품 소개</label>
			</div>
	
			<!-- 디자이너 메세지 상자 -->
			<div class="input-field col s12 left-align">
				<textarea id="prod_Msg" name="prod_Msg" class="materialize-textarea" data-length="100"></textarea>
				<label for="prod_Msg">디자이너 MSG</label>
			</div>
			
			<!-- 가격, 분류 입력 -->
			<div class="input-field col s12">
				<i class="material-icons prefix">attach_money</i>
	        	<input name="prod_price" id="prod_price" type="text" class="validate" placeholder="단위(원)">
	        	<label for="prod_price">가격</label>
			</div>
			<div class="input-field col s12">
				<select name="prod_classf1">
					<option value="" disabled selected>성별 분류</option>
				    <option value="남자">남자</option>
				    <option value="여자">여자</option>
				    <option value="아동">아동</option>
				    <option value="유니섹스">유니섹스</option>
			    </select>
			</div>
			<div class="input-field col s12">
				<select name="prod_classf2">
					<option value="" disabled selected>상품 분류</option>
				    <option value="상의">상의</option>
				    <option value="하의">하의</option>
				    <option value="신발">신발</option>
				    <option value="잡화">잡화</option>
				    <option value="악세사리">악세사리</option>
			    </select>
			</div>
			<div class="input-field col s12 center-align">
				재고 등록은 상품관리 창에서 가능합니다.
			</div>
			
			<!-- 버튼 -->
			<div class="input-field col s4">
				<a href="product_Mgt" class="btn waves-effect waves-light tooltipped" data-position="bottom" data-delay="50" data-tooltip="상품관리로">
					<i class="material-icons">list</i>
				</a>
			</div>
			<div class="input-field col s4">
				<button id="reset" class="btn waves-effect waves-light tooltipped" type="reset" data-position="bottom" data-delay="50" data-tooltip="다시 입력">
					<i class="material-icons">refresh</i>
				</button>
			</div>
			<div class="input-field col s4">
				<button id="submit" class="btn waves-effect waves-light tooltipped" type="submit" data-position="bottom" data-delay="50" data-tooltip="상품 등록">
					<i class="material-icons">done</i>
				</button>
			</div>
		</div>
	</div>
	</div>
</div>
</sform:form>
</div>
</body>
</html>