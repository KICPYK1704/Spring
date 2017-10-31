<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/js/materialize.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/css/materialize.min.css">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<title>Insert title here</title>
<script type="text/javascript">
	$('#big').attr("src","");
	$('.small').mouseover(function(){
		$('#big').attr("src",$(this).attr("src")));
	})
</script>
</head>
<body>
	<img id="big" src="${list.(1).url }">
	<img id="small1" src="ddd.jpg">
	
	
</body>
</html>