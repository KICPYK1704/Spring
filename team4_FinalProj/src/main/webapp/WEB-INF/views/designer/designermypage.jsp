<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
디자이너 마이페이지<p/>
<form action="designermypage" method="post">
<!-- 받은거여기에넣기 -->
아이디 : <input type="text" name="des_id" readonly="readonly" value="${dto.des_id}">
비밀번호 : <input type="text" name="des_pwd" value="${dto.des_pwd}">
이름 : <input type="text" name="des_name" value="${dto.des_name}">
전화번호 : <input type="text" name="des_tel" value="${dto.des_tel}">
이메일 : <input type="text" name="des_email" value="${dto.des_email}">
계좌 : <input type="text" name="des_account" value="${dto.des_account}">
샵이름 : <input type="text" name="des_shoptitle" value="${dto.des_shoptitle}">
샵인트로 : <input type="text" name="des_shopintro" value="${dto.des_shopintro}">
스타일 : <input type="text" name="des_style" value="${dto.des_style}">
<input type="submit" value="수정하기"><br><br><br>
</form>
</body>
</html>