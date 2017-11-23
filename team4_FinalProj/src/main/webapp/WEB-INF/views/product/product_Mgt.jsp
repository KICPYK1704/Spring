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
	$(document).ready(function() {
		$('select').material_select();
		$('#begin_date').attr("placeholder", beginDate());
		$('#end_date').attr("placeholder", endDate());
	});
	function openStock(prod_no, prod_name){
		window.open('stock_insert?prod_no='+ prod_no + '&prod_name=' + prod_name,'window',"width=1000, height=500, left=200, top=200, toolbar=no, menubar=no, resizable=yes");
	}
	function beginDate(){
		var today = new Date();
		var y = new Date(today.getFullYear(),today.getMonth(),today.getDate() - 30);
		var beginDate = y.getFullYear() + "-" + (y.getMonth() +1 ) + "-" + y.getDate();
		return beginDate;
	}
	function endDate(){
		var today = new Date();
		var endDate = today.getFullYear() + "-" + (today.getMonth() +1 ) + "-" + today.getDate();
		return endDate;
	}
</script>
<title>상품 관리</title>
</head>
<body>
<%@include file="../../../top.jsp"%>
<div id="top_block">
	<div class="container">
		<nav>
	    	<div class="nav-wrapper blue-grey darken-4">
	    		<a href="product_insert" class="brand-logo center">상품 관리</a>
			</div>
    		<div class="nav-content blue-grey darken-4">
    			<div class="row">
    				<div class="col s2 center-align">
    					<a href="product_insert" class="btn white black-text">NEW 상품등록</a>
    				</div>
    				<div class="col s7 offset-s3">
    					<div class="row">
	    					<form action="#" method="get">
						    	<div class="input-field col s2 offset-s1">
							        <input name="start_date" id="begin_date" type="text" class="validate" placeholder="">
							        <label for="start_date">등록일</label>
						        </div>
						    	<div class="col s1 center-align">
						    		~
						        </div>
						    	<div class="input-field col s2">
							        <input name="end_date" id="end_date" type="text" class="validate" placeholder="">
						        </div>
						    	<div class="input-field col s2">
							        <select>
									    <option value="1" selected>상품명</option>
									    <option value="2">분류</option>
								    </select>
						        </div>
						    	<div class="input-field col s3">
							        <input name="search_name" id="search_name" type="text" class="validate" placeholder="검색어 입력">
						        </div>
						    	<div class="input-field col s1">
									<i class="material-icons">search</i>			    		
						        </div>
	    					</form>
    					</div>
    				</div>
    			</div>
    		</div>
		</nav>
		<div class="row">
			<table class="centered">
				<thead>
					<tr>
						<th>번호</th><th>상품번호</th><th>상품명</th><th>디자이너명</th>
						<th>판매가</th><th>조회수</th><th>성별</th><th>분류</th>
						<th>등록일</th><th>재고</th><th>수정/삭제</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="dto" items="${prod_list}" varStatus="status">
					<tr>
						<td>${status.count}</td>
						<td>${dto.prod_no}</td>
						<td>${dto.prod_name}</td>
						<td>${dto.prod_designerid}</td>
						<td>${dto.prod_price}</td>
						<td>${dto.prod_hit}</td>
						<td>${dto.prod_classf1}</td>
						<td>${dto.prod_classf2}</td>
						<td>${dto.prod_regdate}</td>
						<td>
							<a href="javascript:openStock(${dto.prod_no}, '${dto.prod_name}')">
								<i class="material-icons">store</i>
							</a>
						</td>
						<td>
							<a href="">
								<i class="material-icons">edit</i>
							</a>
							/
							<a href="">
								<i class="material-icons">delete</i>
							</a>
						</td>
					</tr>
					</c:forEach>
					<tr>
						<td colspan="11">
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
					</tr>
				</tbody>
			</table>
   		</div>
	</div>
</div>
</body>
</html>