<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	});
	function openStock(){
		window.open('./product_stockadd.jsp','window',"width=1000, height=500, left=200, top=200, toolbar=no, menubar=no, resizable=yes");
	}
</script>
<title>상품 관리</title>
</head>
<body>
	<div class="container">
		<nav>
	    	<div class="nav-wrapper blue-grey darken-4">
	    		<a href="#" class="brand-logo center">상품 관리</a>
			</div>
    		<div class="nav-content blue-grey darken-4">
    			<div class="row">
    				<div class="col s2 center-align">
    					<a class="btn white black-text">NEW 상품등록</a>
    				</div>
    				<div class="col s7 offset-s3">
    					<div class="row">
	    					<form action="#" method="get">
						    	<div class="input-field col s2 offset-s1">
							        <input name="start_date" id="start_date" type="text" class="validate" placeholder="2017-10-25">
							        <label for="start_date">등록일</label>
						        </div>
						    	<div class="col s1 center-align">
						    		~
						        </div>
						    	<div class="input-field col s2">
							        <input name="start_date" id="start_date" type="text" class="validate" placeholder="2017-10-27">
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
						<th>판매가</th><th>조회수</th><th>분류</th><th>장르</th>
						<th>등록일</th><th>재고</th><th>수정/삭제</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>1</td>
						<td>1</td>
						<td>장갑</td>
						<td>홍길동</td>
						<td>50,000</td>
						<td>50</td>
						<td>남자</td>
						<td>힙합</td>
						<td>2017-10-25</td>
						<td>
							<a href="javascript:openStock()">
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
</body>
</html>