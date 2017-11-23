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
	<div class="container">
		<div class="row">
			<nav class="col s8 offset-s2">
				<div class="nav-wrapper">
					<a href="#" class="brand-logo center">내 정보 수정</a>
				</div>
			</nav>
		</div>
		<div class="row center-align">
			<form class="col s12 center" action="memberregister" name="memberregister" method="post">
			    <div class="input-field col s6 offset-s3">
			      <i class="material-icons prefix">account_circle</i>
			      <input id="icon_prefix" type="text" name ="mem_id" value="${dto.mem_id}" placeholder="아이디는 첫글자 영문으로. 영문, 숫자 조합 4~11글자만 가능합니다." class="validate">
			      <label for="icon_name">ID</label>
			    </div>
			    <div class="input-field col s6 offset-s3">
			      <i class="material-icons prefix">vpn_key</i>
			      <input id="icon_password" type="password" name="mem_pwd" value="${dto.mem_pwd}" placeholder="비밀번호는 첫글자 영문으로. 영문, 숫자 조합 4~11글자만 가능합니다." class="validate">
			      <label for="icon_name">비밀번호</label>
			    </div>
			    <div class="input-field col s6 offset-s3">
			      <i class="material-icons prefix">face</i>
			      <input id="icon_name" type="text" name="mem_name" value="${dto.mem_name}" class="validate">
			      <label for="icon_name">이름</label>
			    </div>
			    <div class="input-field col s6 offset-s3">
			      <i class="material-icons prefix">contact_phone</i>
			      <input id="icon_telephone" type="text" name="mem_tel" value="${dto.mem_tel}" class="validate">
			      <label for="icon_telephone">전화</label>
			    </div>
			    <div class="input-field col s6 offset-s3">
			      <i class="material-icons prefix">mail_outline</i>
			      <input id="icon_email" type="text" name="mem_email" value="${dto.mem_email}" class="validate">
			      <label for="icon_email">email</label>
			    </div>
			    <div class="input-field col s6 offset-s3">
			      <i class="material-icons prefix">location_city</i>
			      <input id="icon_address" type="text" name="mem_address" value="${dto.mem_address}" class="validate">
			      <label for="icon_address">주소</label>
			    </div>
			    <div class="input-field col s6 offset-s3">
				    <input class="col s3 offset-s2 waves-effect waves-light btn" type="submit" value="수정 요청" id="btnRegister">
				    <input class="col s3 offset-s2 waves-effect waves-light btn" type="reset" value="초기화">
				</div>
			</form> 
		</div>
	</div>
</div>
</body>
</html>
