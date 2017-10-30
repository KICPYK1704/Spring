<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/js/materialize.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/css/materialize.min.css">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

<title>Event List</title>
</head>
<body>
	<h2 class="center-align">이벤트</h2>
	<div class="container">
		<table class="bordered centered">
			<thead class="blue-grey darken-4 white-text">
				<tr>
					<th>No</th><th>디자이너 명</th><th>이벤트 명</th><th>등록일</th><th>조회</th>
				</tr>
			</thead>
			<tbody>
			<c:forEach var="dto" items="${event_list}">
				<tr>
					<td>${dto.event_no}</td>
					<td>${dto.event_writer}</td>
					<td>
						<a href="event_detail?event_no=${dto.event_no}">
							${dto.event_title}
						</a>
					</td>
					<td>${dto.event_regdate}</td>
					<td>${dto.event_hit}</td>
				</tr>
			</c:forEach>
			</tbody>
			<tr style="border-bottom: 0px;">
				<td></td>
				<td colspan="3">
					<ul class="pagination">
					   <li class="disabled"><a href="#!"><i class="material-icons">chevron_left</i></a></li>
					   <li class="active"><a href="#!">1</a></li>
					   <li class="waves-effect"><a href="#!">2</a></li>
					   <li class="waves-effect"><a href="#!">3</a></li>
					   <li class="waves-effect"><a href="#!">4</a></li>
					   <li class="waves-effect"><a href="#!">5</a></li>
					   <li class="waves-effect"><a href="#!"><i class="material-icons">chevron_right</i></a></li>
					</ul>
				</td>
				<td>
					<a herf="event_insert?writer=${sessionScope.login_des}">
						<i class="material-icons">add_box</i>
					</a>
				</td>
			</tr>
		</table>
	</div>
</body>
</html>