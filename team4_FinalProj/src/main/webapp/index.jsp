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
<script type="text/javascript">
	function board_list(){
		$('.board_list').load("board_list/shop?des_id=jinho")
	}
</script>
<title>Insert title here</title>
</head>
<body>
	index.jsp
	<a href="board_list?des_id=jinho">방명록 메인(main)</a>
	<a href="event_list">event 메인</a>
	<a href="product_insert">insert prod</a>
	<a href="product_Mgt">product_Mgt</a>
	<a href="shoppingStreet">shoppingStreet</a>
	<!-- 
	<a href="javascript:board_list/shop?des_id=jinho">방명록 메인(shop)</a>
	<div class="board_list"></div>
	 -->
</body>
</html>