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
<script type="text/javascript">
//$(document).ready(function(){
	//$('.carousel.carousel-slider').carousel({fullWidth: true}); 
//});

</script>
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
</body>
</html>