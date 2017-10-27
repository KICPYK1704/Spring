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

<title>방명록</title>
</head>
<body>
	<%@include file="../../../top.jsp"%>
	<div id="top_block" >
	<h2 class="center-align">방명록</h2>
	<div class="container">
		<!-- 등록 ------------------------------------------------------------------------------------ -->
		<div class="row">
			<div class="col s10 offset-s1 z-depth-4">
				<div class="col s3">
					<div class ="row center">
						<img src="./resources/ex.jpg" style="width:50%">
					</div>
					<div class ="row center-align">
						<span class="flow-text">member_id</span>
					</div>
				</div>
				<form class="col s9">
					<div class="row">
						<div class="input-field col s12">
				        	<textarea id="textarea1" class="materialize-textarea" placeholder="방명록 작성"></textarea>
				        </div>
						<div class="input-field col s1 offset-s10 right-align">
							<div class="waves-effect waves-light btn">
								<span>등록</span>
				        		<input type="submit">
				        	</div>
				        </div>
					</div>
					<!-- hidden tag로 id 넘길건지 결정필요 -->
				</form>
			</div>
		</div>
		<!-- 등록 끝 ------------------------------------------------------------------------------------ -->
		
		<!-- 이전 등록글 보여주기 ------------------------------------------------------------------------------------ -->
		<c:forEach var="dto" items="${board_list}">
		<div class="row">
			<div class="col s10 offset-s1 z-depth-4">
				<div class="col s3">
					<div class ="row center">
						<img src="./resources/ex.jpg" style="width:50%">
					</div>
					<div class ="row center-align">
						<span class="flow-text">member_id</span>
					</div>
				</div>
				<div class="col s9">
					<div class="row">
						<div class="input-field col s12">
				        	<textarea id="textarea1" class="materialize-textarea" readonly></textarea>
				        </div>
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
					<!-- hidden tag로 id 넘길건지 결정필요 -->
				</div>
				<div class="col s12">
					<ul class="collapsible" data-collapsible="accordion">
					    <li>
						    <div class="collapsible-header">
						    	<i class="material-icons">question_answer</i>
						    	<span>댓글 보기</span><span>{댓글 총 개수(list.size)}</span>
						    </div>
						    <div class="collapsible-body">
						    	
						    	<div class="row" style="border-bottom: 1px solid black">
						    		<div class="col s2">
						    			writer_id
						    		</div>
						    		<div class="col s9">
						    			comment_content
						    		</div>
						    		<div class="col s1">
								    	<i class="material-icons">delete</i>
						    		</div>
						    	</div>
						    	
						    	<div class="row" style="border-bottom: 1px solid black">
						    		<div class="col s2">
						    			writer_id
						    		</div>
						    		<div class="col s9">
						    			comment_content
						    		</div>
						    		<div class="col s1">
								    	<i class="material-icons">delete</i>
						    		</div>
						    	</div>
						    	
						    </div>
					    </li>
					</ul>
				</div>
			</div>
		</div>
		</c:forEach>
		<!-- 보여주기 끝 ------------------------------------------------------------------------------------ -->
	</div>
	
	<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
	<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
	<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
	<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
	<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
	<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
	</div>
</body>
</html>