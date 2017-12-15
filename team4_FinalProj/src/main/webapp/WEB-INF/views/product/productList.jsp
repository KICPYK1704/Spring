<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/js/materialize.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/css/materialize.min.css">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<script type="text/javascript">
$(document).ready(function(){
    $('.parallax').parallax();
    
    $('.prod').click(function(){
    	//alert('${parm.classf1} ${parm.classf2}')
        location.href='ProductView?prod_no=' + $(this).children("span").text() + '&prod_classf1=' + $('#classf1').text() + '&prod_classf2=' + $('#classf2').text();
    	
    });
  });
  
</script>
<style type="text/css">
.parallax-container {
      height: 600px;
    }
    
.free-container {
      margin-top: 60px;
    }
    
.ul_item {
	float: left;
	list-style-type: disc;
	
}

.li_item {
	float: left;
	list-style-type: disc;
	margin: 1px 0 0 1px;
}

.au_bar {
    display: inline-block;
    margin-right: 28px;
    margin-left: 28px;
    width: 1px;
    height: 11px;
    background: #bdbdbd;
    vertical-align: -2px;
}

.au_bar_f {
    margin-left: 28px;
    margin-right: 28px;

}

.detail {
   display: none; 
}

.list_detail:hover .detail{ 
	display: block;
transition: opacity .45s cubic-bezier(.25,.46,.45,.94),margin-top .45s cubic-bezier(.25,.46,.45,.94);
    opacity: 1;
}
</style>
</head>
<body>
<%@include file="../../../top.jsp"%>
<div id="top_block">
<span id="classf1" style="display:none;">${prod_classf1}</span>
<span id="classf2" style="display:none;">${prod_classf2}</span>
<!-- parallax 이미지 -->

<div class="parallax-container">
    <div class="parallax"><img src="resources/img/intro.jpg"></div>
</div>


<!-- 리스트 컨테이너 -->

<div class="section white">
    <div class="row container">
    
    
   		<!-- 여백 -->
   		 
    	<div class="col s12 free-container"></div>
    	
    	
    	<!-- 성별 선택 버튼 -->
    	
      	<div class="col s4"></div>
      	<div class="col s4">
      		<ul class="ul_item">
      			<li class="li_item">
      				<span class="au_bar_f"></span>
      				<a class="grey-text text-darken-1" href="ProductList?prod_classf2=${prod_classf2}"><i>all</i></a></li>
      			<li class="li_item">
      				<span class="au_bar"></span>
      				<a class="grey-text text-darken-1" href="ProductList?prod_classf1=남자&prod_classf2=${prod_classf2}"><i>man</i></a></li>
      			<li class="li_item">
      				<span class="au_bar"></span>
      				<a class="grey-text text-darken-1" href="ProductList?prod_classf1=여자&prod_classf2=${prod_classf2}"><i>woman</i></a></li>
      			<li class="li_item">
      				<span class="au_bar"></span>
      				<a class="grey-text text-darken-1" href="ProductList?prod_classf1=공통&prod_classf2=${prod_classf2}"><i>free</i></a></li>
      		</ul>
      		<p/>
      	</div>
      	<div class="col s4"></div>
      	
      	
      	<!-- 카드 리스트 -->
      	
    	<div class="col s12 free-container">
    	
    	
    	<!-- 카드 예시 -->
   			<div class="row">
	    		<c:forEach var="p" items="${list}" varStatus="status">
	        		<div class="col s12 m3 offset-m1 prod">
	        			<span style="display:none;">${p.prod_no}</span>
	        			<div class="card list_detail">
	            			<div class="card-image">
	              				<img src="resources/img/${p.pic_url }">
	            			</div>
	            			<div class="card-content">
	              			<p style="text-align: right;">${p.prod_price }  </p>
	              			<div class="detail">${p.prod_name }<br>${p.des_name } ${p.des_shoptitle }</div>
	           				</div>
	        	  		</div>
	        		</div>
	        		<c:if test="${status.count%3 eq 0}">
	        			</div>
	        			<div class="row">
	        		</c:if>
	    		</c:forEach>
	   		</div>
    	</div>
	</div>
</div>
</div>
<script type="text/javascript" src="/finalproj/resources/js/channel.js"></script>
</body>
</html>