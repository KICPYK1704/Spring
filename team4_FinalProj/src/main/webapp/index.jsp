<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/js/materialize.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/css/materialize.min.css">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<meta content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
.img1{
    position: relative;
    background-image: url("./resources/img/shopst.jpg");                                                               
    height: 80vh;
    background-size: cover;
}
.img2{
    position: relative;
    background-image: url("./resources/img/prod.jpg");                                                               
    height: 80vh;
    background-size: cover;
}
.img-cover{
   position: absolute;
   height: 100%;
   width: 100%;
   background-color: rgba(0, 0, 0, 0.4);                                                                 
   z-index:1;
}
.content{
     position: absolute;
     top:50%;
     left:50%;
     transform: translate(-50%, -50%);                                                                   
     font-size:5rem;
     color: white;
     z-index: 2;
     text-align: center;
}
</style>
<script type="text/javascript">
	$(document).ready(function(){
		$('.modal').modal({complete: 
			function() {
				sessionStorage.setItem("modal", "opened");
			}
		});
		$('#modal1').modal('open');
		$('#img1_text').hide()
		$('#img2_text').hide()
		$('.img1').hover(
			function(){
				$('#img1_cover').toggleClass("img-cover")	
				$('#img1_text').toggleClass("content")	
				$('#img1_text').toggle()
			}
		);
		$('.img2').hover(
			function(){
				$('#img2_text').toggleClass("content")	
				$('#img2_cover').toggleClass("img-cover")	
				$('#img2_text').toggle()
			}
		);
		$('.img1').click(
			function(){
				location.href="shoppingStreet"
			}		
		);
		$('.img2').click(
			function(){
				location.href="ProductList"
			}		
		);
	});
</script>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col s8 offset-s2">
				<img src="./resources/img/title.png" class="responsive-img" style="width:100%">
			</div>
			<div class="col s6">
			    <div class="img1">
			        <div id="img1_text">
			            <h1>Go</h1>
			            <h2>Shopping St.</h2>
			        </div>
			        <div  id="img1_cover"></div>
			    </div>
			</div>
			<div class="col s6">
			    <div class="img2">
			        <div id="img2_text" class="">
			            <h1>Go</h1>
			            <h2>Contest</h2>
			        </div>
			        <div id="img2_cover" class=""></div>
			    </div>
			</div>
		</div>
	</div>
	<c:if test="${not empty sessionScope.modal}">
	<div id="modal1" class="modal">
		<div class="modal-content">
			<h4><i class="material-icons">sentiment_very_satisfied</i> 환영합니다</h4>
			<p>
				본 웹사이트는 KIC캠퍼스 "클라우드 기반의 빅데이터 분석 및 자바딥러닝 개발자 양성과정"에서 수업과 병행한 프로젝트로<br>
				<b>현재 유지보수중에 있습니다.</b>
			</p>
			<p>
				일부 기능이 동작하지 않더라도 너른 마음으로 양해해주시길 부탁드립니다.
			</p>
			<p>
				(본 알림창이 닫히면 30분동안 보이지 않습니다.)
			</p>
		</div>
		<div class="modal-footer">
			<a href="#!" class="modal-action modal-close waves-effect waves-green btn-flat">확인</a>
		</div>
	</div>
	</c:if>
</body>
</html>