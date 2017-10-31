<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	
</script>
<title>Event Detail</title>
</head>
<body>
<%@include file="../../../top.jsp"%>
<div id="top_block">
	<div class="container">
		<div class="row">
			<nav>
		    	<div class="nav-wrapper blue-grey darken-4">
		    		<a href="#" class="brand-logo center">이벤트 상세 보기</a>
		    		<ul id="nav-mobile" class="right hide-on-med-and-down">
					    <li><a href="#"><i class="material-icons">edit</i></a></li>
				    	<li><a href="#"><i class="material-icons">delete</i></a></li>
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
					<span class="flow-text">${detail.event_writer}</span>
				</div>
			</div>
			<div class="col s9">
				<div class="row">
					<span class="event_no" style="display:none;">${dto.event_no}</span>
					<div class="input-field col s12 center-align">
						제목 : ${detail.event_title}
					</div>
					<div class="input-field col s12 center">
						<img src="./resources/img/${detail.img_url}" style="width:80%">
					</div>
					<div class="input-field col s12 center-align">
						${detail.event_content}
			        </div>
				</div>
				<!-- hidden tag로 id 넘길건지 결정필요 -->
			</div>
		</div>
		<div class="row collapsible" style="margin-bottom:0px">
	    	<form action="#">
	    		<div class="input-field col s11">
					<i class="material-icons prefix">comment</i>
					<input id="new_comment" type="text" class="validate" placeholder="댓글을 입력하세요">
       					<label for="new_comment">new comment</label>
				</div>
				<div class="input-field col s1 right-align">
					<div class="waves-effect waves-light btn-floating">
						<i class="material-icons">add</i>
		        		<input type="submit">
		        	</div>
		        </div>
			</form>
		</div>
		<div class="row">
			<ul class="collapsible" data-collapsible="accordion" style="margin-top: 0px">
			    <li>
				    <div class="collapsible-header reply-header">
				    	<i class="material-icons">question_answer</i>
				    	<span>댓글(${detail.reply_count})</span>
				    </div>
				    <div class="collapsible-body reply-body">
						<c:forEach var="reply" items="${reply_list}">
					    	<div class="row" style="border-bottom: 1px solid black">
					    		<div class="col s2">
					    			${reply.reply_writer}
					    		</div>
					    		<div class="col s9">
					    			${reply.reply_content}
					    		</div>
					    		<div class="col s1">
							    	<i class="material-icons">delete</i>
					    		</div>
					    	</div>
						</c:forEach>
				    </div>
			    </li>
			</ul>
		</div>
	</div>
</div>
</body>
</html>