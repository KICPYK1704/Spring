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
	$(document).ready(function(){
    	$('.collapsible').collapsible();
  	});
</script>
<title>FAQ</title>
</head>
<body>
<%@include file="../../../top.jsp"%>
<div id="top_block">
	<div class="container">
		<h1 class="center-align">F A Q</h1>
		<ul class="collapsible" data-collapsible="accordion">
		    <li>
			    <div class="collapsible-header">
			    	<i class="material-icons">zoom_in</i>
			    	회원가입은 어떻게 하나요?
			    </div>
			    <div class="collapsible-body">
			    	<span>상단 왼편 메뉴버튼(<i class="material-icons small">menu</i>)을 누르시면 로그인버튼이 있습니다. 로그인 창에서 회원가입을 찾을 수 있습니다.</span>
			    </div>
		    </li>
		    <li>
			    <div class="collapsible-header">
			    	<i class="material-icons">zoom_in</i>
			    	디자이너와 팬맺기는 어떻게 하나요?
			    </div>
			    <div class="collapsible-body">
			    	<span>우선 로그인이 필요합니다. 로그인 후 쇼핑 스트리트나 해당 디자이너 숍에서 팬맺기 버튼(<i class="material-icons small">favorite</i>)을 확인하실 수 있습니다. 팬을 맺기전에는 하트가 흰색입니다.</span>
			    </div>
		    </li>
		    <li>
			    <div class="collapsible-header">
			    	<i class="material-icons">zoom_in</i>
			    	회원탈퇴는 어떻게 하나요?
			    </div>
			    <div class="collapsible-body">
			    	<span>마이페이지 정보수정창에서 가능합니다.</span>
			    </div>
		    </li>
		</ul>
	</div>
</div>
</body>
</html>