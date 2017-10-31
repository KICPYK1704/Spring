<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<head>
<style type="text/css">

#top_nav {
	z-index: 800;
	background: -webkit-linear-gradient(top right, #ffffff, #ecebeb);
}

nav a.button-collapse {
    display: block; 
}

.search_sel {
	height: 30px;
	font-size: 16px;
	padding: 0px;
	display: block;
	border-color: #081a3f;
	margin-right: 15px;
	
}

.searchBox{
	padding: 18px;
	padding-bottom: 0px;
	position: fixed;
	border: black;
	border-style: double;
	width: 600px;
	z-index: 999;
	background-color: #e2ecf0;
	transform: translateX(-100%);
	backface-visibility: hidden;
}
.selectBox{
	padding-top: 10px;
	border: black;
	border-style: double;
	background-color: #eceff1;
}

.au_bar_s {
    display: inline-block;
    margin-right: 8px;
    margin-left: 14px;
    width: 1px;
    height: 11px;
    background: #bdbdbd;
    vertical-align: -2px;
}
.au_bar_c {
    display: inline-block;
    margin-right: 14px;
    margin-left: 14px;
    width: 1px;
    height: 11px;
    background: #bdbdbd;
    vertical-align: -2px;
}
.au_bar_s_f {
    margin-left: 14px;
    margin-right: 8px;

}
.au_bar_s_f2 {
    margin-left: 115px;
    margin-right: 8px;

}

#detailBox {
	display: none;
}

#slide-out {
	background-color: #0e2047;
	color: #eaeaf5;
}
.side-nav li>a {
	background-color: #0e2047;
	color: #eaeaf5;
    display: block;
    font-size: 14px;
    font-weight: 500;
    height: 48px;
    line-height: 48px;
    padding: 0 32px;
}
</style>


<script type="text/javascript">
var searchMenu = true;
var detailMenu = true;

$(document).ready(function(){
	$('.button-collapse').sideNav();
	
	$("#btnOne").click(function(){
		if(searchMenu == true){
			menuShow('searchTab');
		}else{
			menuHide('searchTab');
		}
	});
	
	$("#detail").click(function(){
		if(detailMenu == true){
			detailShow('detailBox');
			var str = '<< 상세 검색'
			$("#detail").html(str);
		}else{
			detailHide('detailBox');
			var str = '>> 상세 검색'
			$("#detail").html(str);
		}
	});
	
	$('.collapsible').collapsible();
	$('.pushpin-demo-nav').each(function() {
	    var $this = $(this);
	    var $target = $('#' + $(this).attr('data-target'));
	    $this.pushpin({
	      top: $target.offset().top - $this.height(),
	      bottom: $target.offset().top + $target.outerHeight() - $this.height()
	    });
	});
});

	

function menuShow(elementid){
	var element=document.getElementById(elementid);
	element.style.transform="translateX(0px)";
	element.style.top="60px";
	element.style.right="50px";
	searchMenu = false;
}

function menuHide(elementid){
	var element=document.getElementById(elementid);
	element.style.transform="translateX(110%)";
	searchMenu = true;
}

function detailShow(elementid){
	var element=document.getElementById(elementid);
	element.style.display="block";
	detailMenu = false;
}

function detailHide(elementid){
	var element=document.getElementById(elementid);
	element.style.display="none";
	detailMenu = true;
}

</script>
</head>
<body>

<!-- 쇼핑 스트리트 드롭다운 설정 -->
<ul id="dropdown1" class="dropdown-content">
  <li><a href="#!" style="color: black;">쇼핑 스트리트</a></li>
  <li class="divider"></li>
  <li><a href="shoppingStreet">장르1</a></li>
  <li><a href="shoppingStreet">장르2</a></li>
  <li><a href="shoppingStreet">장르3</a></li>
  <li><a href="shoppingStreet">장르4</a></li>
  <li><a href="shoppingStreet">장르5</a></li>
</ul>

<!-- 제품 리스트 드롭다운 설정 -->
<ul id="dropdown2" class="dropdown-content">
  <li><a href="#!" style="color: black;">제품 리스트</a></li>
  <li class="divider"></li>
  <li><a href="ProductList?prod_classf1=all&prod_classf2=상의">상의</a></li>
  <li><a href="ProductList?prod_classf1=all&prod_classf2=하의">하의</a></li>
  <li><a href="ProductList?prod_classf1=all&prod_classf2=신발">신발</a></li>
  <li><a href="ProductList?prod_classf1=all&prod_classf2=잡화">잡화</a></li>
  <li><a href="ProductList?prod_classf1=all&prod_classf2=악세서리">악세서리</a></li>
</ul>

 <!-- 사이드 바 -->
 <ul id="slide-out" class="side-nav">
    <li>
    	<br>
   		<h5>&nbsp;&nbsp;&nbsp;menu</h5>
    </li>
    <li>
    	<br>
    	<br>
    </li>
    <li><a href="#!">소개</a></li>
    <li>
    	<br>
    </li>
    <li><a href="shoppingStreet">쇼핑 스트리트</a></li>
    <li><a href="ProductList?prod_classf1=all&prod_classf2=all">제품 리스트</a></li>
    <li>
    	<br>
    </li>
    <li><a href="#!">이벤트</a></li>
    <li><a href="#!">FAQ</a></li>
    <li>
    	<br>
    	<br>
    </li>
    <li><a>member id</a></li>
    <li>
    <a class="btn">my page</a>
    <a class="btn">로그아웃</a>
    </li>
  </ul>
  
	<!-- 상세 검색 -->

	<div id="searchTab" class="searchBox"> 
		<div>
			<select class="left search_sel" name="stype" style="width: 80px;">
				<option value="상품" selected="selected">상품</option>
				<option value="디자이너" >디자이너</option>
			</select>
			<input type="text" name="sword" style="height: 30px; width: 400px;">
			<a class="button-collapse right" href="#!"><i class="material-icons" style="font-size: 2.2rem">search</i></a><br>
			
			<a id="detail" href="#!">>> 상세 검색</a>
 			     <p/>
		<div id="detailBox" class="row selectBox">
			<div class="col s2">카테고리 : </div>
			<div class="col s10">
				
   			   <span class="au_bar_s_f"></span>
				<input class="with-gap" name="group1" type="radio" id="test1"  checked="checked"/>
   			   <label for="test1"><i>all</i></label>
   			   <span class="au_bar_s"></span>
  			    <input class="with-gap" name="group1" type="radio" id="test2" />
  			    <label for="test2"><i>man</i></label>
   			   <span class="au_bar_s"></span>
  			    <input class="with-gap" name="group1" type="radio" id="test3"  />
  			    <label for="test3"><i>woman</i></label>
   			   <span class="au_bar_s"></span>
 			     <input class="with-gap" name="group1" type="radio" id="test4"/>
 			     <label for="test4"><i>free</i></label>
 			     <p/>
   			   <span class="au_bar_s_f"></span>
 			     <input type="checkbox" class="filled-in" id="check1" checked="checked" />
     			 <label for="check1">전체</label>
   			   <span class="au_bar_c"></span>
 			     <input type="checkbox" class="filled-in" id="check2"/>
     			 <label for="check2">상의</label>
   			   <span class="au_bar_c"></span>
 			     <input type="checkbox" class="filled-in" id="check3"/>
     			 <label for="check3">하의</label>
   			   <span class="au_bar_c"></span>
 			     <input type="checkbox" class="filled-in" id="check4"/>
     			 <label for="check4">신발</label>
 			     <p/>
   			   <span class="au_bar_s_f2"></span>
 			     <input type="checkbox" class="filled-in" id="check5"/>
     			 <label for="check5">잡화</label>
   			   <span class="au_bar_c"></span>
 			     <input type="checkbox" class="filled-in" id="check6"/>
     			 <label for="check6">악세서리</label>
			</div>
			</div>
		</div>
	</div>
   
<!-- 타이틀 바 -->
<nav id="top_nav" class="pushpin-demo-nav" data-target="top_block">
  <div class="nav-wrapper">
    <a href="#" class="brand-logo center black-text">Logo</a>
    <ul id="nav1" class="left hide-on-med-and-down">
      <li><a class="button-collapse black-text" href="#!" data-activates="slide-out"><i class="material-icons" style="font-size: 2rem">menu</i></a></li>
      <li><a class="dropdown-button black-text" href="#!" data-activates="dropdown1">쇼핑 스트리트<i class="material-icons right">arrow_drop_down</i></a></li>
      <li><a class="dropdown-button black-text" href="#!" data-activates="dropdown2">제품 리스트<i class="material-icons right">arrow_drop_down</i></a></li>
    </ul>
    <ul id="nav2" class="right hide-on-med-and-down">
      <li><a id="btnOne" href="#!" data-activates="searchTab"><i class="material-icons black-text" style="font-size: 2.2rem">search</i></a></li>
    </ul>
  </div>
</nav>
  
</body>
</html>