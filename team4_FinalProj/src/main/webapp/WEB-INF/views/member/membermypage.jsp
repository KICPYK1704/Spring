<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
회원 마이페이지<p/>
<form action="membermypage" method="post">

<input type="hidden" name="num" value="${dto.mem_id}">
아이디 : <input type="text" name="name" value="${dto.mem_id}">
비밀번호 : <input type="text" name="addr" value="${dto.mem_pwd}">
이름 : <input type="text" name="addr" value="${dto.mem_name}">
전화번호 : <input type="text" name="addr" value="${dto.mem_tel}">
이메일 : <input type="text" name="addr" value="${dto.mem_email}">
주소 : <input type="text" name="addr" value="${dto.mem_address}">
<input type="submit" value="수정확인">
</body>
</html>