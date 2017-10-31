<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset="UTF-8"> 
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
		<a href="#" class="brand-logo center">회원 마이페이지</a>
	</div>
</nav>
<div class="row center-align">
<form class="col s12 center" action="membermypage" method="post">

<div class="input-field col s6 offset-s3">
<i class="material-icons prefix">account_circle</i>
<input id="icon_prefix" type="text" name="mem_id" readonly="readonly" value="${dto.mem_id}" class="validate">
</div>

<div class="input-field col s6 offset-s3">
<i class="material-icons prefix">vpn_key</i>
<input id="icon_password" type="text" name="mem_pwd" value="${dto.mem_pwd}" class="validate">
</div>

<div class="input-field col s6 offset-s3">
<i class="material-icons prefix">face</i>
<input id="icon_name" type="text" name="mem_name" value="${dto.mem_name}" class="validate">
<label for="icon_name">name</label>
</div>

<div class="input-field col s6 offset-s3">
<i class="material-icons prefix">contact_phone</i>
<input id="icon_telephone" type="text" name="mem_tel" value="${dto.mem_tel}" class="validate">
<label for="icon_tel">tel</label>
</div>

<div class="input-field col s6 offset-s3">
<i class="material-icons prefix">mail_outline</i>
<input id="icon_email" type="text" name="mem_email" value="${dto.mem_email}" class="validate">
<label for="icon_email">email</label>
</div>

<div class="input-field col s6 offset-s3">
<i class="material-icons prefix">location_city</i>
<input id="icon_address" type="text" name="mem_address" value="${dto.mem_address}" class="validate">
<label for="icon_address">address</label>
</div>

<input type="submit" value="수정하기"><br><br><br>
</form>

<!--  
탈퇴시 일주일 간 재가입을 할 수 없으며 작성하신 글과 주문/결제 내역 등 모든 정보가 
삭제 됩니다. 탈퇴를 원하시면 아래 '탈퇴하기'버튼을 눌러주세요.
<br>
<a href="deleteMember?mem_id=${dto.mem_id}">탈퇴하기</a>
-->
</div>
</body>
</html>
