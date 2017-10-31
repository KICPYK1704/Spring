<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset="UTF-8"> 
<title>Insert title here</title>

</head>
<body>
회원 마이페이지<p/>
<form action="membermypage" method="post">
<!-- 받은거여기에넣기 -->
아이디 : <input type="text" name="mem_id" readonly="readonly" value="${dto.mem_id}">
비밀번호 : <input type="text" name="mem_pwd" value="${dto.mem_pwd}">
이름 : <input type="text" name="mem_name" value="${dto.mem_name}">
전화번호 : <input type="text" name="mem_tel" value="${dto.mem_tel}">
이메일 : <input type="text" name="mem_email" value="${dto.mem_email}">
주소 : <input type="text" name="mem_address" value="${dto.mem_address}">
<input type="submit" value="수정하기"><br><br><br>
</form>

<!--  
탈퇴시 일주일 간 재가입을 할 수 없으며 작성하신 글과 주문/결제 내역 등 모든 정보가 
삭제 됩니다. 탈퇴를 원하시면 아래 '탈퇴하기'버튼을 눌러주세요.
<br>
<a href="deleteMember?mem_id=${dto.mem_id}">탈퇴하기</a>
-->
</body>
</html>
