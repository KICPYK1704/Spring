<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html;  charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/js/materialize.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/css/materialize.min.css">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<script src="../js/script.js"></script>
<title>Insert title here</title>
</head>
<body>
<%@include file="../../../top.jsp"%>
<div id="top_block">
<nav>
	<div class="nav-wrapper">
		<a href="#" class="brand-logo center">디자이너 마이페이지</a>
	</div>
</nav>
<div class="row center-align">
<form class="col s12 center" action="designermypage" method="post">

<div class="input-field col s6 offset-s3">
<i class="material-icons prefix">account_circle</i>
<input id="icon_prefix" type="text" name="des_id" readonly="readonly" value="${dto.des_id}" class="validate">
</div>

<div class="input-field col s6 offset-s3">
<i class="material-icons prefix">vpn_key</i>
비밀번호 : <input id="icon_password" type="text" name="des_pwd" value="${dto.des_pwd}" class="validate">
</div>

<div class="input-field col s6 offset-s3">
<i class="material-icons prefix">face</i>
<input id="icon_name" type="text" name="des_name" value="${dto.des_name}" class="validate">
<label for="icon_name">name</label>
</div>

<div class="input-field col s6 offset-s3">
<i class="material-icons prefix">contact_phone</i>
<input id="icon_telephone" type="text" name="des_tel" value="${dto.des_tel}" class="validate">
<label for="icon_tel">tel</label>
</div>

<div class="input-field col s6 offset-s3">
<i class="material-icons prefix">mail_outline</i>
<input id="icon_email" type="text" name="des_email" value="${dto.des_email}" class="validate">
<label for="icon_email">email</label>
</div>
<div class="input-field col s6 offset-s3">
<i class="material-icons prefix">credit_card</i>
<input id="icon_account" type="text" name="des_account" value="${dto.des_account}" class="validate">
<label for="icon_account">account</label>
</div>

<div class="input-field col s6 offset-s3">
<i class="material-icons prefix">aspect_ratio</i>
<input id="icon_shoptitle" type="text" name="des_shoptitle" value="${dto.des_shoptitle}" class="validate">
<label for="icon_shoptitle">shoptitle</label>
</div>

<div class="input-field col s6 offset-s3">
<i class="material-icons prefix">flag</i>
<input id="icon_shopintro" type="text" name="des_shopintro" value="${dto.des_shopintro}">
<label for="icon_shopintro">shopintro</label>
</div>
<div class="input-field col s6 offset-s3">
<i class="material-icons prefix">star</i>
<input id="icon_style" type="text" name="des_style" value="${dto.des_style}">
<label for="icon_style">style</label>
</div>

<input type="submit" value="수정하기"><br><br><br>
</form>
</div>
</body>
</html>