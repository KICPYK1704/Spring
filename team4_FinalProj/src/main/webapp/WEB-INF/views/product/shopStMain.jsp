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

<title>Shopping Street Main</title>
</head>
<body>
	<div class="container" style="height: 700px">
	<div class="fixed-action-btn click-to-toggle">
		<a class="btn-floating btn-small waves-effect waves-light black">
			<i class="material-icons">apps</i>
		</a>
		<ul>
	      <li><a class="btn-floating black"><i class="material-icons">arrow_drop_up</i></a></li>
	      <li><a class="btn-floating red"><i class="material-icons">favorite</i></a></li>
	      <li><a class="btn-floating blue"><i class="material-icons">fiber_new</i></a></li>
	    </ul>
	</div>
		<!-- ---------------------------------------------------------------------------------------------------------- -->	
		<c:forEach var="dto" items="${shopst_list}">
			<div class="row" style="height:200px">
				<div class="col s1">
					<div>
						<i class="material-icons" style="font-size: 45px;">place</i>
					</div>
					<div class="col s1" style="border-right: solid black; height:155px;">
					</div>
				</div>
				<div class="col s11 light-green">
					<div class="col s4" style="margin-top :20px">
						<img src="./resources/ex.jpg" class="col s3">
						<div class="col s8 flow-text">${dto.des_id}</div>
						<div class="col s12" style="margin-top :20px">
							<textarea disabled class="materialize-textarea" style="margin:0px; padding:0px">${dto.des_shopintro}</textarea>
						</div>
					</div>
					<div class="col s7">
						<div class="section" style="padding:0px">
							<h5>Latest Addition</h5>
						</div>
						<div class="section valign-wrapper">
							<div class="col s4">
								<img src="#" style="margin:0px; height:100px; width:100px;">
							</div>
							<div class="col s4">
								<img src="#" style="margin:0px; height:100px; width:100px;">
							</div>
							<div class="col s4">
								<img src="#" style="margin:0px; height:100px; width:100px;">
							</div>
						</div>
					</div>
					<div class="col s1">
						<div class="valign-wrapper" style="height:100px">
							<i class="material-icons flow-text small">favorite</i>
						</div>
						<div class="valign-wrapper" style="height:100px">
							<a href="shop_main">
								<i class="material-icons flow-text small">home</i>
							</a>
						</div>
					</div>
				</div>
			</div>
		</c:forEach>
		<!-- ---------------------------------------------------------------------------------------------------------- -->
		
		
		<!-- -------------------------------------------반복------------------------------------------- -->	
		<div class="row" style="height:200px">
			<div class="col s1">
				<div>
					<i class="material-icons" style="font-size: 45px;">place</i>
				</div>
				<div class="col s1" style="border-right: solid black; height:155px;">
				</div>
			</div>
			<div class="col s11 yellow">
				<div class="col s4" style="margin-top :20px">
					<img src="./resources/ex.jpg" class="col s3">
					<div class="col s8 flow-text center-align">홍길동</div>
					<div class="col s12" style="margin-top :20px">
						<textarea class="materialize-textarea" style="margin:0px; padding:0px"></textarea>
					</div>
				</div>
				<div class="col s7">
					<div class="section" style="padding:0px">
						<h5>Latest Addition</h5>
					</div>
					<div class="section valign-wrapper">
						<div class="col s4">
							<img src="#" style="margin:0px; height:100px; width:100px;">
						</div>
						<div class="col s4">
							<img src="#" style="margin:0px; height:100px; width:100px;">
						</div>
						<div class="col s4">
							<img src="#" style="margin:0px; height:100px; width:100px;">
						</div>
					</div>
				</div>
				<div class="col s1">
					<div class="valign-wrapper" style="height:100px">
						<i class="material-icons flow-text small">favorite</i>
					</div>
					<div class="valign-wrapper" style="height:100px">
						<i class="material-icons flow-text small">home</i>
					</div>
				</div>
			</div>
		</div>
		<!-- ---------------------------------------------------------------------------------------------------------- -->
		
	</div>	
</body>
</html>