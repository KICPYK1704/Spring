<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/js/materialize.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/css/materialize.min.css">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

<title>Insert title here</title>
</head>
<body>
<%@include file="../../../top.jsp"%>
<div id="top_block">
<nav>
	<div class="nav-wrapper">
		<a href="#" class="brand-logo center">관리자 로그인</a>
	</div>
</nav>

<div class="row center-align">
<form class="col s12 center" action="adminlogin" method="post">

<div class="input-field col s6 offset-s3">
<i class="material-icons prefix">account_circle</i>
<input id="icon_prefix" type="text" name ="adm_id" class="validate">
</div>

<div class="input-field col s6 offset-s3">
<i class="material-icons prefix">vpn_key</i>
<input id="icon_password" type="password" name="adm_pwd" class="validate">
</div>

<input type="submit" value="로그인">
</form>
</div>
</div>
</body>
</html>