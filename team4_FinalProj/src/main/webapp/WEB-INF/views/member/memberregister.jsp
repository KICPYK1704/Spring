<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/js/materialize.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/css/materialize.min.css">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<script src="../js/script.js"></script>
<title>Insert title here</title>
<!--  

<script type="text/javascript">
window.onload = function(){
	

	document.getElementById("btnId").onclick = idCheck;
	
}
</script>

-->

<body>
<nav>
	<div class="nav-wrapper">
		<a href="#" class="brand-logo center">회원 가입</a>
	</div>
</nav>

<div class="row center-align">
<form class="col s12 center" action="memberregister" name="memberregister" method="post">
	
    <div class="input-field col s6 offset-s3">
      <i class="material-icons prefix">account_circle</i>
      <input id="icon_prefix" type="text" name ="mem_id"
       placeholder="아이디는 첫글자 영문으로. 영문, 숫자 조합 4~11글자만 가능합니다." class="validate">
  <!--    <input type="button" value="ID중복확인" id="btnIdCheck">   --> 
     
    </div>
    
    <div class="input-field col s6 offset-s3">
      <i class="material-icons prefix">vpn_key</i>
      <input id="icon_password" type="password" name="mem_pwd" 
      placeholder="비밀번호는 첫글자 영문으로. 영문, 숫자 조합 4~11글자만 가능합니다." class="validate">
    
    </div>
    
    <div class="input-field col s6 offset-s3">
      <i class="material-icons prefix">face</i>
      <input id="icon_name" type="text" name="mem_name" class="validate">
      <label for="icon_name">name</label>
    </div>
    
    <div class="input-field col s6 offset-s3">
      <i class="material-icons prefix">contact_phone</i>
      <input id="icon_telephone" type="text" name="mem_tel" class="validate">
      <label for="icon_telephone">tel</label>
    </div>
    
    <div class="input-field col s6 offset-s3">
      <i class="material-icons prefix">mail_outline</i>
      <input id="icon_email" type="text" name="mem_email" class="validate">
      <label for="icon_email">email</label>
    </div>
    
    <div class="input-field col s6 offset-s3">
      <i class="material-icons prefix">location_city</i>
      <input id="icon_address" type="text" name="mem_address" class="validate">
      <label for="icon_address">address</label>
    </div>
    
    <input class="waves-effect waves-light btn" type="submit" value="회원가입" id="btnRegister">
    <input class="waves-effect waves-light btn" type="reset" value="초기화">
 
 </form> 
</div>

</body>
</html>