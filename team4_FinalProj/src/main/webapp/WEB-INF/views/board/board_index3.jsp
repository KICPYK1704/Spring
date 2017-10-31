<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<script type="text/javascript">
	$(document).ready(function(){
		$('.reply-header').on("click", function(){
			var index = $('.reply-header').index(this);
			if($('.reply-body').eq(index).css("display") ==  'none'){
				$('.reply-body').eq(index).load("board_reply?board_no=" + $('.board_no').eq(index).text());
				//alert($('.board_no').eq(index).text());
			}
	});
		$('#board_insertsubmit').click(function(){
			$('#board_insertform').submit();
		});
		if('${param.delete_ok}' == 'ok'){
			alert('삭제가 완료되었습니다');
		}
	});
</script>
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
			<form id="board_insertform" class="col s9" action="board_insert" method="post">
				<div class="row">
					<div class="input-field col s12">
			        	<textarea id="textarea1" class="materialize-textarea" name="board_content" placeholder="방명록 작성"></textarea>
			        </div>
					<div class="input-field col s4 offset-s8 right-align">
						<div class="waves-effect waves-light btn" id="board_insertsubmit">
							<span>등록</span>
			        	</div>
			        </div>
				</div>
				<!-- hidden tag로 넘기는 값들 사실 받아오는 값임 -->
				<input type="hidden" name="board_writer" value="youngpil">
				<input type="hidden" name="board_designerid" value="jinho">
			</form>
		</div>
	</div>
	<!-- 등록 끝 ------------------------------------------------------------------------------------ -->
	
	<!-- 이전 등록글 보여주기 ------------------------------------------------------------------------------------ -->
	<c:forEach var="dto" items="${board_list}">
	<span class="board_no" style="display:none;">${dto.board_no}</span>
	<div class="row">
		<div class="col s10 offset-s1 z-depth-4">
			<div class="col s3">
				<div class ="row center">
					<img src="./resources/ex.jpg" style="width:50%">
				</div>
				<div class ="row center-align">
					<span class="flow-text">${dto.board_writer}</span>
				</div>
			</div>
			<div class="col s9">
				<div class="row">
					<div class="input-field col s11">
			        	<textarea id="textarea1" class="materialize-textarea" readonly>${dto.board_content}</textarea>
			        </div>
					<div class="col s1 valign-wrapper">
						<a href="board_delete?board_no=${dto.board_no}&des_id=${dto.board_designerid}">
							<i class="material-icons">delete</i>
						</a>
					</div>
			        <form action="insert_reply" method="post">
						<div class="input-field col s11">
							<i class="material-icons prefix">comment</i>
							<input id="new_comment" type="text" class="validate">
         					<label for="new_comment">new comment</label>
						</div>
						<div class="input-field col s1">
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
					    <div class="collapsible-header reply-header">
					    	<i class="material-icons">question_answer</i>
					    	<span>댓글(${dto.reply_count})</span>
					    </div>
					    <div class="collapsible-body reply-body">
					    </div>
				    </li>
				</ul>
			</div>
		</div>
	</div>
	</c:forEach>
	<!-- 보여주기 끝 ------------------------------------------------------------------------------------ -->
