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
</script>
<title>재고 등록</title>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col s2">
				상품번호 : {1}
			</div>
			<div class="col s2">
				상품명 : {장갑}
			</div>
		</div>
		<div class="row">
			<table class="centered">
				<thead class="black white-text">
					<tr>
						<th>사이즈</th><th>색상</th><th>재고량</th><th>수정/삭제</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>L</td>
						<td>블랙</td>
						<td>10</td>
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
				</tbody>
			</table>
		</div>
		<div class="row">
			<form action="#" method="get">
				<div class="col s12 center-align" style="border-bottom: 1px solid black"></div>
		    	<div class="input-field col s4">
			        <select>
					    <option value="XS">XS</option>
					    <option value="S" selected>S</option>
					    <option value="M">M</option>
					    <option value="L">L</option>
					    <option value="XL">XL</option>
				    </select>
				    <label>사이즈</label>
		        </div>
		    	<div class="input-field col s4">
			        <input name="stock_color" id="stock_color" type="text" class="validate" placeholder="빨강, 블랙, green 등">
			        <label for="stock_color">색상</label>
		        </div>
		    	<div class="input-field col s2">
			        <input name="stock_quantity" id="stock_quantity" type="text" class="validate" placeholder="숫자만 입력">
			        <label for="stock_quantity">재고량</label>
		        </div>
		    	<div class="input-field col s2 right-align">
		    		<a href="">
						<i class="material-icons medium">add_box</i>
					</a>
		    	</div>
	    	</form>
		</div>
	</div>
</body>
</html>