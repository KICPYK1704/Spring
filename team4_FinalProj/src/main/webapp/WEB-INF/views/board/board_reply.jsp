<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="reply_list" value="${reply_list}" />
<c:if test="${fn:length(reply_list) > 0}">
	<c:forEach var="dto" items="${reply_list}">
		<div class="row" style="border-bottom: 1px solid black">
			<div class="col s2">
				${dto.boardReply_writer}
			</div>
			<div class="col s9">
				${dto.boardReply_content}
			</div>
			<div class="col s1">
		 		<i class="material-icons">delete</i>
			</div>
		</div>
	</c:forEach>
</c:if>
<c:if test="${fn:length(reply_list) eq 0}">
	아직 댓글이 없습니다.
</c:if>