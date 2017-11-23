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
<link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
<script
  src="https://code.jquery.com/ui/1.12.0/jquery-ui.js"
  integrity="sha256-0YPKAwZP7Mp3ALMRVB2i8GXeEndvCq3eSl/WsAl1Ryk="
  crossorigin="anonymous"></script>
<script type="text/javascript">
	$(document).ready(function(){
		
	});

	function submit(){
		//입력자료 검사 필요
		
		if ($(":input:radio[name='logintype']:checked").val() == 'member'){
			$('form').attr("action", "memberlogin");
			$('#id').attr("name", "mem_id");
			$('#password').attr("name", "mem_pwd");
			$('form').submit();
		}
		else if ($(":input:radio[name='logintype']:checked").val() == 'designer'){
			$('form').attr("action", "designerlogin");
			$('#id').attr("name", "des_id");
			$('#password').attr("name", "des_pwd");
			$('form').submit();
		}
		else {
			alert('디자이너인지 회원인지 선택하세요');
		}
	}
	
	
	function createAccount(){
		$( "#dialog-confirm" ).dialog({
			resizable: true,
		    height: "auto",
		    width: "auto",
		    modal: true,
		    buttons: {
		    	"일반회원": function() {
					$( this ).dialog( "close" );
					location.href="memberregister"
		        },
		        "디자이너": function() {
					$( this ).dialog( "close" );
					location.href="designerregister"
				}
			}
		});	
	}
	function aa(){
		if ($(":input:radio[name='logintype']:checked").val() == 'member'){
			if(confirm('회원가입이 맞습니까?(취소 누를 시 디자이너 가입창으로 이동)')){
				location.href="memberregister"
			} else {
				location.href="designerregister"
			}		
		}
		else if ($(":input:radio[name='logintype']:checked").val() == 'designer'){
			if(confirm('디자이너 가입이 맞습니까?(취소 누를 시 회원가입창으로 이동)')){
				location.href="designerregister"
			} else {
				location.href="memberregister"
			}
		}
		else {
			alert('디자이너인지 회원인지 선택하세요');
		}
	}
</script>
<title>Insert title here</title>
</head>
<body>
<%@include file="../../../top.jsp"%>
<div id="top_block">
	<div class="container">
		<div class="row">
			<nav class="col s4 offset-s4">
				<div class="nav-wrapper">
					<a href="#" class="brand-logo center">로그인</a>
				</div>
			</nav>
		</div>
		<div class="row center-align">
			<form class="col s6 offset-s3 center" action="" method="post">
				<div style="margin-top: 15px">
					<div class="col s3 offset-s3">
						<input class="with-gap" name="logintype" type="radio" id="mem" value="member" checked />
    					<label for="mem">회원</label>
    				</div>
					<div class="col s5">
						<input class="with-gap" name="logintype" type="radio" id="desi" value="designer" />
    					<label for="desi">디자이너</label>
    				</div>
    			</div>
				<div class="row">
					<div class="input-field col s8 offset-s2">
						<i class="material-icons prefix">account_circle</i>
						<label for="id">ID</label>
						<input id="id" type="text" name ="" class="validate">
					</div>
					<div class="input-field col s8 offset-s2">
						<i class="material-icons prefix">vpn_key</i>
						<label for="password">PASSWORD</label>
						<input id="password" type="password" name="" class="validate">
					</div>
				</div>
				<div class="row">
					<a class="col s3 offset-s3 waves-effect waves-light btn" href="javascript:createAccount()">
						<i class="material-icons left">person_add</i>
						가입
					</a>
					<a class="col s3 offset-s1 waves-effect waves-light btn" href="javascript:submit()">
						<i class="material-icons left">directions_run</i>
						로그인
					</a>
				</div>
			</form>
		</div>
	</div>
</div>
<div id="dialog-confirm" title="가입유형 선택" style="display:none;">
 	<p>
 		<i class="material-icons left">person_add</i>
 		회원가입 유형을 선택하세요.
 	</p>
</div>
</body>
</html>