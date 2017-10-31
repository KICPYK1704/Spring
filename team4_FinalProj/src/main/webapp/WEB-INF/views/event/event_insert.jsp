<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="sform" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/js/materialize.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/css/materialize.min.css">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<script type="text/javascript">
	function submit(){
		$('#insertform').submit()
	}
</script>
<title>Event Create</title>
</head>
<body>
	<div class="container">
		<div class="row">
			<nav>
		    	<div class="nav-wrapper blue-grey darken-4">
		    		<a href="#" class="brand-logo center">이벤트 등록</a>
		    		<ul id="side-nav" class="right hide-on-med-and-down">
					    <li><a href="javascript:submit()"><i class="material-icons large">done</i></a></li>
					    <!-- done의 a태그내에 자바스크립트 연결해서 sform submit 되도록! -->
				    </ul>
				</div>
			</nav>
		</div>
		<div class="row z-depth-4">
			<div class="col s3">
				<div class ="row center">
					<img src="./resources/ex.jpg" style="width:50%">
				</div>
				<div class ="row center-align">
					<span class="flow-text">${param.writer}</span>
				</div>
			</div>
			<div class="col s9">
				<div class="row">
					<div class="col s2 flow-text center-align">
						제 목 :
					</div>
					
					<!-- spring form tag 사용! 파일 업로드를 위해 -->
					<sform:form id="insertform" enctype="multipart/form-data" modelAttribute="eventBean"> <!-- enctype="multipart/form-data" 대용량 파일 업로드할 때 써주는 타입 -->
						<div class="input-field col s10 left-align" style="margin:0px">
							<input name="event_title" type="text" class="validate" placeholder="제목을 입력하세요" style="margin:0px">
						</div>
						<div class="input-field col s12">
					      	<textarea name="event_content" class="materialize-textarea" placeholder="방명록 작성"></textarea>
					    </div>
						<div class="input-field col s4 center">
							<img src="" style="width:80%">
						</div>
						<div class="file-field col s6 input-field">
					      <div class="btn">
					        <span>File</span>
							<input type="file" name="upload_img">
							<sform:errors path="file" cssStyle="color:red" />
					      </div>
					      <div class="file-path-wrapper">
					        <input class="file-path validate" type="text" placeholder="Upload Pic">
					      </div>
					    </div>
					    <input type="hidden" name="event_writer" value="${param.writer}">
					</sform:form>
					
		        </div>
			</div>
			<!-- hidden tag로 id 넘길건지 결정필요 -->
		</div>
	</div>
</body>
</html>