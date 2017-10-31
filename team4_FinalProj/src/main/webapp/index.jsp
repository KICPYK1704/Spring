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
$(document).ready(function(){
	$('.carousel.carousel-slider').carousel({fullWidth: true}); 
});

</script>
<style type="text/css">
.title{
	text-align: center;
	z-index: 30;
	font-size: 60px;
	position: fixed;
	display: inline-block;
	transform: translate(260%,700%);
}

</style>
</head>
<body>
   <div class="carousel carousel-slider">
   <div class="title white-text">환영합니다</div>
    <a class="carousel-item" href="go_homepage"><img src="resources/img/옷1.jpg"></a>
    <a class="carousel-item" href="go_homepage"><img src="resources/img/벨트.jpg"></a>
    <a class="carousel-item" href="go_homepage"><img src="resources/img/옷1.jpg"></a>
    <a class="carousel-item" href="go_homepage"><img src="resources/img/벨트.jpg"></a>
  </div> 
</body>
</html>